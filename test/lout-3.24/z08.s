	.text
	.file	"z08.opt"
	.globl	ReplaceWithTidy
	.align	16, 0x90
	.type	ReplaceWithTidy,@function
ReplaceWithTidy:                        # @ReplaceWithTidy
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
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
.Ltmp3:
	.cfi_offset %rbx, -48
.Ltmp4:
	.cfi_offset %r12, -40
.Ltmp5:
	.cfi_offset %r14, -32
.Ltmp6:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB0_84
# BB#1:
	cmpl	$17, %eax
	jne	.LBB0_84
# BB#2:
	movq	-48(%rbp), %rax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rax
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_29
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-72(%rbp), %rax
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_6
# BB#7:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_28
# BB#8:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	%rax, -104(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_17
# BB#9:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_11
# BB#10:                                #   in Loop: Header=BB0_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_14
# BB#12:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_14
# BB#13:                                #   in Loop: Header=BB0_3 Depth=1
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
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_17
# BB#15:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_17
# BB#16:                                #   in Loop: Header=BB0_3 Depth=1
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
.LBB0_17:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_3 Depth=1
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
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_21
# BB#20:                                #   in Loop: Header=BB0_3 Depth=1
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
.LBB0_21:                               #   in Loop: Header=BB0_3 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_23
# BB#22:                                #   in Loop: Header=BB0_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_24
.LBB0_23:                               #   in Loop: Header=BB0_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_25
.LBB0_24:                               #   in Loop: Header=BB0_3 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_25:                               #   in Loop: Header=BB0_3 Depth=1
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
	jne	.LBB0_27
# BB#26:                                #   in Loop: Header=BB0_3 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_27:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB0_28
.LBB0_29:
	movq	$0, -88(%rbp)
	movl	$0, ReplaceWithTidy.buff_len(%rip)
	movl	$11, ReplaceWithTidy.buff_typ(%rip)
	movq	-48(%rbp), %rax
	movw	34(%rax), %ax
	movw	%ax, ReplaceWithTidy.buff_pos+2(%rip)
	movq	-48(%rbp), %rax
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movl	$-1048576, %r12d        # imm = 0xFFFFFFFFFFF00000
	movl	ReplaceWithTidy.buff_pos+4(%rip), %ecx
	andl	%r12d, %ecx
	orl	%eax, %ecx
	movl	%ecx, ReplaceWithTidy.buff_pos+4(%rip)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r12d, %eax
	andl	$1048575, %ecx          # imm = 0xFFFFF
	orl	%eax, %ecx
	movl	%ecx, ReplaceWithTidy.buff_pos+4(%rip)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movb	$1, %r15b
	jmp	.LBB0_30
	.align	16, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB0_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_32 Depth 2
                                        #     Child Loop BB0_50 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_85
# BB#31:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_32 Depth=2
	movq	-72(%rbp), %rax
.LBB0_32:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_33
# BB#34:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_36
# BB#35:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_43
.LBB0_36:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	ReplaceWithTidy.buff_len(%rip), %rbx
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB0_39
# BB#37:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$1, %esi
.LBB0_38:                               #   in Loop: Header=BB0_30 Depth=1
	movl	$.L.str.2, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_81
	.align	16, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	$0, ReplaceWithTidy.buff_len(%rip)
	jne	.LBB0_41
# BB#40:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movw	34(%rax), %ax
	movw	%ax, ReplaceWithTidy.buff_pos+2(%rip)
	movq	-72(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movl	ReplaceWithTidy.buff_pos+4(%rip), %ecx
	andl	%r12d, %ecx
	orl	%eax, %ecx
	movl	%ecx, ReplaceWithTidy.buff_pos+4(%rip)
	movq	-72(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r12d, %eax
	andl	$1048575, %ecx          # imm = 0xFFFFF
	orl	%eax, %ecx
	movl	%ecx, ReplaceWithTidy.buff_pos+4(%rip)
.LBB0_41:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	ReplaceWithTidy.buff_len(%rip), %rax
	leaq	ReplaceWithTidy.buff(%rax), %rdi
	movq	-72(%rbp), %rsi
	addq	$64, %rsi
	callq	strcpy
	movq	-72(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addl	%eax, ReplaceWithTidy.buff_len(%rip)
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_81
	jmp	.LBB0_42
	.align	16, 0x90
.LBB0_43:                               #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_82
# BB#44:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_46
# BB#45:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	jle	.LBB0_81
.LBB0_46:                               #   in Loop: Header=BB0_30 Depth=1
	cmpl	$0, -52(%rbp)
	je	.LBB0_52
# BB#47:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %rax
	movzbl	41(%rax), %ecx
	addl	ReplaceWithTidy.buff_len(%rip), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	cmpl	$512, %eax              # imm = 0x200
	jl	.LBB0_49
# BB#48:                                #   in Loop: Header=BB0_30 Depth=1
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$2, %esi
	jmp	.LBB0_38
.LBB0_52:                               #   in Loop: Header=BB0_30 Depth=1
	movl	ReplaceWithTidy.buff_typ(%rip), %edi
	movl	$ReplaceWithTidy.buff, %esi
	movl	$ReplaceWithTidy.buff_pos, %edx
	callq	MakeWord
	movq	%rax, -80(%rbp)
	movl	$0, ReplaceWithTidy.buff_len(%rip)
	movl	$11, ReplaceWithTidy.buff_typ(%rip)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_59
# BB#53:                                #   in Loop: Header=BB0_30 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB0_55
# BB#54:                                #   in Loop: Header=BB0_30 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_58
.LBB0_49:                               #   in Loop: Header=BB0_30 Depth=1
	movl	$0, -92(%rbp)
	jmp	.LBB0_50
	.align	16, 0x90
.LBB0_51:                               #   in Loop: Header=BB0_50 Depth=2
	movslq	ReplaceWithTidy.buff_len(%rip), %rax
	leaq	ReplaceWithTidy.buff(%rax), %rdi
	movl	$.L.str.3, %esi
	callq	strcpy
	incl	ReplaceWithTidy.buff_len(%rip)
	incl	-92(%rbp)
.LBB0_50:                               #   Parent Loop BB0_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-72(%rbp), %rax
	movzbl	41(%rax), %ecx
	movzbl	42(%rax), %eax
	addl	%ecx, %eax
	cmpl	%eax, -92(%rbp)
	jl	.LBB0_51
.LBB0_42:                               #   in Loop: Header=BB0_30 Depth=1
	movl	$12, ReplaceWithTidy.buff_typ(%rip)
	jmp	.LBB0_81
.LBB0_55:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_56
# BB#57:                                #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_58
.LBB0_56:                               #   in Loop: Header=BB0_30 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_58:                               #   in Loop: Header=BB0_30 Depth=1
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
	movq	-48(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-48(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r12d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
.LBB0_59:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB0_61
# BB#60:                                #   in Loop: Header=BB0_30 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_64
.LBB0_61:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_62
# BB#63:                                #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_64
.LBB0_62:                               #   in Loop: Header=BB0_30 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_64:                               #   in Loop: Header=BB0_30 Depth=1
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
	je	.LBB0_67
# BB#65:                                #   in Loop: Header=BB0_30 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_67
# BB#66:                                #   in Loop: Header=BB0_30 Depth=1
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
.LBB0_67:                               #   in Loop: Header=BB0_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_70
# BB#68:                                #   in Loop: Header=BB0_30 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_70
# BB#69:                                #   in Loop: Header=BB0_30 Depth=1
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
.LBB0_70:                               #   in Loop: Header=BB0_30 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r15b, %r15b
	jne	.LBB0_72
# BB#71:                                #   in Loop: Header=BB0_30 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_75
.LBB0_72:                               #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_73
# BB#74:                                #   in Loop: Header=BB0_30 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_75
.LBB0_73:                               #   in Loop: Header=BB0_30 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_75:                               #   in Loop: Header=BB0_30 Depth=1
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
	je	.LBB0_78
# BB#76:                                #   in Loop: Header=BB0_30 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_78
# BB#77:                                #   in Loop: Header=BB0_30 Depth=1
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
.LBB0_78:                               #   in Loop: Header=BB0_30 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_81
# BB#79:                                #   in Loop: Header=BB0_30 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_81
# BB#80:                                #   in Loop: Header=BB0_30 Depth=1
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
	jmp	.LBB0_81
.LBB0_85:
	movl	ReplaceWithTidy.buff_typ(%rip), %edi
	movl	$ReplaceWithTidy.buff, %esi
	movl	$ReplaceWithTidy.buff_pos, %edx
	callq	MakeWord
	movq	%rax, -80(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB0_86
# BB#87:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_89
# BB#88:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_92
.LBB0_86:
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB0_98
.LBB0_89:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_90
# BB#91:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_92
.LBB0_82:
	cmpq	$0, -88(%rbp)
	je	.LBB0_84
# BB#83:
	movq	-88(%rbp), %rdi
	callq	DisposeObject
.LBB0_84:
	movq	-48(%rbp), %rax
.LBB0_104:
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_90:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_92:
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
	je	.LBB0_95
# BB#93:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_95
# BB#94:
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
.LBB0_95:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_98
# BB#96:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_98
# BB#97:
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
.LBB0_98:
	movq	-48(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_100
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
.LBB0_100:
	movq	%rax, xx_tmp(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_103
# BB#101:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_103
# BB#102:
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
.LBB0_103:
	movq	-48(%rbp), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	jmp	.LBB0_104
.Lfunc_end0:
	.size	ReplaceWithTidy, .Lfunc_end0-ReplaceWithTidy
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI1_0:
	.long	1124073472              # float 128
	.text
	.globl	Manifest
	.align	16, 0x90
	.type	Manifest,@function
Manifest:                               # @Manifest
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
	subq	$1112, %rsp             # imm = 0x458
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
	movl	48(%rbp), %r10d
	movq	40(%rbp), %r11
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%r8, -88(%rbp)
	movq	%r9, -96(%rbp)
	movq	%rax, -104(%rbp)
	movl	%ebx, -108(%rbp)
	movl	%r14d, -112(%rbp)
	movq	%r11, -120(%rbp)
	movl	%r10d, -124(%rbp)
	movl	Manifest.depth(%rip), %eax
	incl	%eax
	movl	%eax, Manifest.depth(%rip)
	cmpl	$1000, %eax             # imm = 0x3E8
	jne	.LBB1_2
# BB#1:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$40, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	movl	$1000, %r9d             # imm = 0x3E8
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB1_852
# BB#3:
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_359:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_360
	.align	16, 0x90
.LBB1_361:                              #   in Loop: Header=BB1_360 Depth=1
	movq	-168(%rbp), %rax
.LBB1_360:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_361
	jmp	.LBB1_397
.LBB1_852:
	movq	no_fpos(%rip), %rbx
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.46, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.47, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
.LBB1_853:
	callq	Error
	jmp	.LBB1_854
.LBB1_464:
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_466
# BB#465:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB1_467
.LBB1_466:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_467:
	movq	-72(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-344(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -342(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-340(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movb	-344(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-340(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -338(%rbp)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-332(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-344(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -336(%rbp)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -334(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_468
	.align	16, 0x90
.LBB1_469:                              #   in Loop: Header=BB1_468 Depth=1
	movq	-168(%rbp), %rax
.LBB1_468:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_469
# BB#470:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$65, %ecx
	sete	%cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-59, %eax
	cmpl	$8, %eax
	ja	.LBB1_479
# BB#471:
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_472:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	FontChange
	jmp	.LBB1_479
.LBB1_492:
	movq	-72(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-344(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -344(%rbp)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -342(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-340(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -340(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movb	-344(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-340(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -340(%rbp)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -338(%rbp)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-332(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-344(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -336(%rbp)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -334(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$66, %eax
	jne	.LBB1_494
# BB#493:
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	-332(%rbp), %eax
	orl	$4194304, %eax          # imm = 0x400000
	movl	%eax, -332(%rbp)
	jmp	.LBB1_499
.LBB1_510:
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_512
# BB#511:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB1_513
.LBB1_512:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_513:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_514
	.align	16, 0x90
.LBB1_515:                              #   in Loop: Header=BB1_514 Depth=1
	movq	-280(%rbp), %rax
.LBB1_514:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_515
# BB#516:
	movq	-280(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_539
# BB#517:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_519
# BB#518:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_522
.LBB1_31:
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_33
# BB#32:
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	8(%rax), %rcx
	jne	.LBB1_34
.LBB1_33:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_34:
	cmpl	$0, -124(%rbp)
	jne	.LBB1_854
# BB#35:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_36
.LBB1_37:                               #   in Loop: Header=BB1_36 Depth=1
	movq	-168(%rbp), %rax
.LBB1_36:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_37
# BB#38:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_74
# BB#39:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-216(%rbp), %r8
	callq	CrossExpand
	movq	%rax, -56(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB1_41
# BB#40:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_41:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_43
# BB#42:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_46
.LBB1_81:
	cmpl	$0, -108(%rbp)
	je	.LBB1_83
# BB#82:
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_83
# BB#87:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_89
# BB#88:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_92
.LBB1_274:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %r14d
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	ManifestCat
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_315:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_316
	.align	16, 0x90
.LBB1_317:                              #   in Loop: Header=BB1_316 Depth=1
	movq	-168(%rbp), %rax
.LBB1_316:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_317
# BB#318:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	leaq	-324(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_319
	.align	16, 0x90
.LBB1_320:                              #   in Loop: Header=BB1_319 Depth=1
	movq	-168(%rbp), %rax
.LBB1_319:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_320
	jmp	.LBB1_332
.LBB1_321:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_323
# BB#322:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_326
.LBB1_275:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_276
	.align	16, 0x90
.LBB1_277:                              #   in Loop: Header=BB1_276 Depth=1
	movq	-168(%rbp), %rax
.LBB1_276:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_277
# BB#278:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	leaq	-324(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	cmpl	$158, -324(%rbp)
	jne	.LBB1_281
# BB#279:
	movzwl	-320(%rbp), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_281
# BB#280:
	movzwl	-320(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB1_282
.LBB1_281:
	movq	-168(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %r9
	movl	$8, %edi
	movl	$26, %esi
	movl	$.L.str.18, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movzwl	-320(%rbp), %eax
	andl	$58367, %eax            # imm = 0xE3FF
	orl	$1024, %eax             # imm = 0x400
	movw	%ax, -320(%rbp)
	movw	$2880, -318(%rbp)       # imm = 0xB40
.LBB1_282:
	movq	-56(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movswl	-318(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-56(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	jmp	.LBB1_283
.LBB1_290:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_291
	.align	16, 0x90
.LBB1_292:                              #   in Loop: Header=BB1_291 Depth=1
	movq	-168(%rbp), %rax
.LBB1_291:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_292
# BB#293:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rsi
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	leaq	-324(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movw	-324(%rbp), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_296
# BB#294:
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB1_283
# BB#295:
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	je	.LBB1_283
.LBB1_296:
	movq	-168(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %r9
	movl	$8, %edi
	movl	$27, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-56(%rbp), %rax
	movw	$159, 70(%rax)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 64(%rax)
	movq	-56(%rbp), %rax
	movw	$0, 66(%rax)
	movq	-56(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 64(%rax)
.LBB1_283:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_285
# BB#284:
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
.LBB1_285:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_287
# BB#286:
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
.LBB1_287:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_289
# BB#288:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_297
.LBB1_289:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_298
.LBB1_399:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_400
	.align	16, 0x90
.LBB1_401:                              #   in Loop: Header=BB1_400 Depth=1
	movq	-168(%rbp), %rax
.LBB1_400:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_401
	jmp	.LBB1_402
.LBB1_454:
	movq	-72(%rbp), %rax
	movzwl	12(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	je	.LBB1_455
# BB#456:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$69, %eax
	jne	.LBB1_458
# BB#457:
	movq	-72(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	12(%rax), %edi
	callq	FontFamily
	jmp	.LBB1_459
.LBB1_460:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$71, %eax
	jne	.LBB1_462
# BB#461:
	movq	-72(%rbp), %rax
	movswq	8(%rax), %rax
	jmp	.LBB1_463
.LBB1_751:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_752
	.align	16, 0x90
.LBB1_753:                              #   in Loop: Header=BB1_752 Depth=1
	movq	-168(%rbp), %rax
.LBB1_752:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_753
# BB#754:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_755
	.align	16, 0x90
.LBB1_756:                              #   in Loop: Header=BB1_755 Depth=1
	movq	-248(%rbp), %rax
.LBB1_755:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_756
# BB#757:
	movq	-248(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -248(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -248(%rbp)
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_759
# BB#758:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_767
.LBB1_759:
	movq	-168(%rbp), %rdi
	addq	$64, %rdi
	leaq	-312(%rbp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB1_767
# BB#760:
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_762
# BB#761:
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_767
.LBB1_762:
	movq	-248(%rbp), %rdi
	addq	$64, %rdi
	leaq	-316(%rbp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB1_767
# BB#763:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$79, %eax
	jne	.LBB1_765
# BB#764:
	movl	-312(%rbp), %edx
	addl	-316(%rbp), %edx
	jmp	.LBB1_766
.LBB1_841:
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_842
	.align	16, 0x90
.LBB1_843:                              #   in Loop: Header=BB1_842 Depth=1
	movq	-168(%rbp), %rax
.LBB1_842:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_843
# BB#844:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_25
# BB#845:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_25
# BB#846:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$94, %eax
	movl	$.L.str.44, %eax
	movl	$.L.str.45, %r9d
	cmoveq	%rax, %r9
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$37, %esi
	movl	$.L.str.43, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_848
# BB#847:
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
.LBB1_848:
	movq	%rbx, xx_tmp(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_851
# BB#849:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_851
# BB#850:
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
.LBB1_851:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -56(%rbp)
	jmp	.LBB1_855
.LBB1_827:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_828
	.align	16, 0x90
.LBB1_829:                              #   in Loop: Header=BB1_828 Depth=1
	movq	-168(%rbp), %rax
.LBB1_828:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_829
# BB#830:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_831
	.align	16, 0x90
.LBB1_832:                              #   in Loop: Header=BB1_831 Depth=1
	movq	-168(%rbp), %rax
.LBB1_831:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_832
# BB#833:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	jmp	.LBB1_24
.LBB1_835:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_836
	.align	16, 0x90
.LBB1_837:                              #   in Loop: Header=BB1_836 Depth=1
	movq	-168(%rbp), %rax
.LBB1_836:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_837
# BB#838:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_839
	.align	16, 0x90
.LBB1_840:                              #   in Loop: Header=BB1_839 Depth=1
	movq	-168(%rbp), %rax
.LBB1_839:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_840
	jmp	.LBB1_23
.LBB1_494:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$49, %eax
	jne	.LBB1_496
# BB#495:
	orb	$1, -344(%rbp)
	jmp	.LBB1_499
.LBB1_767:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.40, %esi
.LBB1_768:
	callq	MakeWord
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	callq	Manifest
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_770
# BB#769:
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
.LBB1_770:
	movq	%rax, xx_tmp(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_773
# BB#771:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_773
# BB#772:
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
.LBB1_773:
	movq	-56(%rbp), %rdi
	jmp	.LBB1_824
.LBB1_83:
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	12(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-56(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-56(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_86
# BB#84:
	cmpl	$0, -108(%rbp)
	je	.LBB1_86
# BB#85:
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	MapSmallCaps
	movq	%rax, -56(%rbp)
.LBB1_86:
	movq	-56(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	jmp	.LBB1_25
.LBB1_19:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %r14d
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	ManifestCl
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_20:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_21
.LBB1_22:                               #   in Loop: Header=BB1_21 Depth=1
	movq	-168(%rbp), %rax
.LBB1_21:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_22
.LBB1_23:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	jmp	.LBB1_24
.LBB1_30:
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 74(%rcx)
	jmp	.LBB1_25
.LBB1_362:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_363
.LBB1_364:                              #   in Loop: Header=BB1_363 Depth=1
	movq	-168(%rbp), %rax
.LBB1_363:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_364
# BB#365:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_367
# BB#366:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_369
.LBB1_367:
	movq	-168(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.8, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_368
.LBB1_369:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_371
# BB#370:
	movq	-168(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -360(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-56(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB1_378
.LBB1_391:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_392
.LBB1_393:                              #   in Loop: Header=BB1_392 Depth=1
	movq	-168(%rbp), %rax
.LBB1_392:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_393
# BB#394:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_395
.LBB1_396:                              #   in Loop: Header=BB1_395 Depth=1
	movq	-168(%rbp), %rax
.LBB1_395:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_396
	jmp	.LBB1_397
.LBB1_333:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_334
.LBB1_335:                              #   in Loop: Header=BB1_334 Depth=1
	movq	-168(%rbp), %rax
.LBB1_334:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_335
# BB#336:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movq	-72(%rbp), %rsi
	leaq	-320(%rbp), %rdx
	leaq	-324(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	cmpl	$158, -324(%rbp)
	jne	.LBB1_339
# BB#337:
	movzwl	-320(%rbp), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_339
# BB#338:
	movzwl	-320(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	.LBB1_340
.LBB1_339:
	movq	-168(%rbp), %rbx
	addq	$32, %rbx
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %r9
	movl	$8, %edi
	movl	$28, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movzwl	-320(%rbp), %eax
	andl	$58367, %eax            # imm = 0xE3FF
	orl	$4096, %eax             # imm = 0x1000
	movw	%ax, -320(%rbp)
	movw	$0, -318(%rbp)
.LBB1_340:
	movswl	-318(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_342
# BB#341:
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
.LBB1_342:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_344
# BB#343:
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
.LBB1_344:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_346
# BB#345:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_347
.LBB1_346:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_348
.LBB1_353:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_354
.LBB1_355:                              #   in Loop: Header=BB1_354 Depth=1
	movq	-168(%rbp), %rax
.LBB1_354:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_355
# BB#356:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_357
.LBB1_358:                              #   in Loop: Header=BB1_357 Depth=1
	movq	-168(%rbp), %rax
.LBB1_357:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_358
	jmp	.LBB1_397
.LBB1_427:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %r14d
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	ManifestCase
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_398:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$29, %esi
	movl	$.L.str.21, %edx
	movl	$1, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	jmp	.LBB1_853
.LBB1_428:
	movq	BackEnd(%rip), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	jmp	.LBB1_429
.LBB1_437:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_438
.LBB1_439:                              #   in Loop: Header=BB1_438 Depth=1
	movq	-168(%rbp), %rax
.LBB1_438:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_439
# BB#440:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -168(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -168(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_445
# BB#441:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_442
.LBB1_445:
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rcx), %edx
	movl	12(%rax), %eax
	movl	$4095, %edi             # imm = 0xFFF
	movl	$4095, %esi             # imm = 0xFFF
	andl	%eax, %esi
	orl	%edx, %esi
	andl	%edi, %eax
	movl	%esi, 40(%rcx)
	je	.LBB1_446
# BB#447:
	movq	-168(%rbp), %rsi
	andl	40(%rsi), %edi
	leaq	64(%rsi), %rbx
	addq	$32, %rsi
	callq	FontMapping
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	MapCharEncoding
	movb	%al, -353(%rbp)
	testb	%al, %al
	je	.LBB1_448
# BB#449:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$12, %edi
	movl	$.L.str.3, %esi
	callq	MakeWord
	movq	%rax, -208(%rbp)
	movb	-353(%rbp), %cl
	movb	%cl, 64(%rax)
	jmp	.LBB1_431
.LBB1_503:
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_505
# BB#504:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB1_506
.LBB1_505:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_506:
	movq	-56(%rbp), %rax
	movb	$17, 32(%rax)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-72(%rbp), %rax
	andb	$-5, (%rax)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-56(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_507
.LBB1_508:                              #   in Loop: Header=BB1_507 Depth=1
	movq	-168(%rbp), %rax
.LBB1_507:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_508
# BB#509:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rdi
	callq	SetUnderline
	jmp	.LBB1_25
.LBB1_450:
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %eax
	testb	$63, %al
	je	.LBB1_451
# BB#453:
	movq	-72(%rbp), %rax
	movzbl	15(%rax), %edi
	andl	$63, %edi
	callq	LanguageString
	jmp	.LBB1_459
.LBB1_680:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_681
.LBB1_682:                              #   in Loop: Header=BB1_681 Depth=1
	movq	-248(%rbp), %rax
.LBB1_681:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_682
# BB#683:
	movq	-248(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -248(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_685
# BB#684:
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
.LBB1_685:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_687
# BB#686:
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
.LBB1_687:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_689
# BB#688:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_690
.LBB1_689:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_691
.LBB1_718:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_719
.LBB1_720:                              #   in Loop: Header=BB1_719 Depth=1
	movq	-168(%rbp), %rax
.LBB1_719:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_720
# BB#721:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_723
# BB#722:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$39, %esi
	movl	$.L.str.36, %edx
	movl	$2, %ecx
	movl	$.L.str.37, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_402:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	jmp	.LBB1_403
.LBB1_745:
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_747
# BB#746:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_747:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_748
.LBB1_749:                              #   in Loop: Header=BB1_748 Depth=1
	movq	-168(%rbp), %rax
.LBB1_748:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_749
# BB#750:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	callq	Manifest
	movq	%rax, -168(%rbp)
	movl	$0, -348(%rbp)
	movq	-168(%rbp), %rdi
	leaq	-348(%rbp), %rdx
	movl	$1, %esi
	callq	Next
	jmp	.LBB1_404
.LBB1_4:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_5
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=1
	movq	-168(%rbp), %rax
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_6
# BB#7:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_8
.LBB1_9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-216(%rbp), %rax
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_9
# BB#10:
	movq	-216(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB1_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_12:
	movq	-168(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 16(%rsp)
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_14
# BB#13:
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
.LBB1_14:
	movq	%rax, xx_tmp(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_17
# BB#15:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_17
# BB#16:
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
.LBB1_17:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_18
.LBB1_774:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_775
.LBB1_776:                              #   in Loop: Header=BB1_775 Depth=1
	movq	-168(%rbp), %rax
.LBB1_775:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_776
# BB#777:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_779
# BB#778:
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
.LBB1_779:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_781
# BB#780:
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
.LBB1_781:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_783
# BB#782:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_784
.LBB1_783:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_785
.LBB1_826:
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %r14d
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	ManifestTg
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_323:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_324
# BB#325:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_326
.LBB1_297:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_298:
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
	jne	.LBB1_300
# BB#299:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_300:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$24, %ecx
	je	.LBB1_306
# BB#301:
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$40, %ecx
	je	.LBB1_306
# BB#302:
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_306
# BB#303:
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$38, %ecx
	je	.LBB1_306
# BB#304:
	movq	-56(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$26, %ecx
	je	.LBB1_306
# BB#305:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$28, %eax
	sete	%al
.LBB1_306:
	xorb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -308(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_307
	.align	16, 0x90
.LBB1_308:                              #   in Loop: Header=BB1_307 Depth=1
	movq	-168(%rbp), %rax
.LBB1_307:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_308
# BB#309:
	movslq	-308(%rbp), %rax
	movq	$0, -160(%rbp,%rax,8)
	movslq	-308(%rbp), %rax
	movq	$0, -144(%rbp,%rax,8)
	movslq	-308(%rbp), %rax
	movl	$1, %r14d
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-80(%rbp), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -144(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -160(%rbp,%rcx,8)
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-144(%rbp), %rcx
	leaq	-160(%rbp), %r8
	callq	Manifest
	movq	%rax, -168(%rbp)
	movslq	-308(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -144(%rbp,%rax,8)
	movslq	-308(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -160(%rbp,%rax,8)
	movslq	-308(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	$0, -160(%rbp,%rcx,8)
	movslq	-308(%rbp), %rax
	subq	%rax, %r14
	movq	$0, -144(%rbp,%r14,8)
	cmpq	$0, -136(%rbp)
	jne	.LBB1_313
# BB#310:
	cmpq	$0, -144(%rbp)
	jne	.LBB1_313
# BB#311:
	cmpq	$0, -152(%rbp)
	jne	.LBB1_313
# BB#312:
	cmpq	$0, -160(%rbp)
	je	.LBB1_854
.LBB1_313:
	movq	-56(%rbp), %rdi
	leaq	-144(%rbp), %rsi
	leaq	-160(%rbp), %rdx
	jmp	.LBB1_314
.LBB1_462:
	movq	-72(%rbp), %rax
	movswq	10(%rax), %rax
.LBB1_463:
	imulq	$1717986919, %rax, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$35, %rdx
	addl	%eax, %edx
	leaq	-448(%rbp), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	leaq	-448(%rbp), %rsi
.LBB1_429:
	movl	$11, %edi
	jmp	.LBB1_430
.LBB1_496:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB1_498
# BB#497:
	orb	$2, -344(%rbp)
	jmp	.LBB1_499
.LBB1_519:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_520
# BB#521:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_522
.LBB1_455:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$38, %esi
	movl	$.L.str.29, %edx
	jmp	.LBB1_452
.LBB1_458:
	movq	-72(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	12(%rax), %edi
	callq	FontFace
.LBB1_459:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%rax, %rsi
	jmp	.LBB1_430
.LBB1_723:
	movq	-168(%rbp), %rax
	jmp	.LBB1_724
.LBB1_730:                              #   in Loop: Header=BB1_724 Depth=1
	movq	-176(%rbp), %rax
.LBB1_724:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_726 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-168(%rbp), %rax
	je	.LBB1_731
# BB#725:                               #   in Loop: Header=BB1_724 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB1_726
	.align	16, 0x90
.LBB1_727:                              #   in Loop: Header=BB1_726 Depth=2
	movq	-248(%rbp), %rax
.LBB1_726:                              #   Parent Loop BB1_724 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_727
# BB#728:                               #   in Loop: Header=BB1_724 Depth=1
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_730
# BB#729:                               #   in Loop: Header=BB1_724 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -592(%rbp)
	movq	-248(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -248(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-592(%rbp), %rax
	je	.LBB1_730
.LBB1_731:
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_733
# BB#732:
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
.LBB1_733:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_735
# BB#734:
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
.LBB1_735:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_737
# BB#736:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_738
.LBB1_737:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_739
.LBB1_498:
	orb	$4, -344(%rbp)
.LBB1_499:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_500
	.align	16, 0x90
.LBB1_501:                              #   in Loop: Header=BB1_500 Depth=1
	movq	-168(%rbp), %rax
.LBB1_500:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_501
	jmp	.LBB1_502
.LBB1_473:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	SpaceChange
	jmp	.LBB1_479
.LBB1_474:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	YUnitChange
	jmp	.LBB1_479
.LBB1_475:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	ZUnitChange
	jmp	.LBB1_479
.LBB1_476:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	BreakChange
	jmp	.LBB1_479
.LBB1_477:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	ColourChange
	jmp	.LBB1_479
.LBB1_478:
	movq	-168(%rbp), %rsi
	leaq	-344(%rbp), %rdi
	callq	LanguageChange
.LBB1_479:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_481
# BB#480:
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
.LBB1_481:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_483
# BB#482:
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
.LBB1_483:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_485
# BB#484:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_486
.LBB1_485:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_487
.LBB1_486:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_487:
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
	jne	.LBB1_489
# BB#488:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_489:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_490
	.align	16, 0x90
.LBB1_491:                              #   in Loop: Header=BB1_490 Depth=1
	movq	-168(%rbp), %rax
.LBB1_490:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_491
.LBB1_502:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %edx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%edx, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-344(%rbp), %rdx
.LBB1_403:
	callq	Manifest
.LBB1_404:
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_406
# BB#405:
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
.LBB1_406:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_408
# BB#407:
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
.LBB1_408:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_410
# BB#409:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_411
.LBB1_410:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_412
.LBB1_411:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_412:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-168(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-56(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_414
# BB#413:
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
.LBB1_414:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_417
# BB#415:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_417
# BB#416:
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
.LBB1_417:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_419
# BB#418:
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
.LBB1_419:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_422
# BB#420:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_422
# BB#421:
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
.LBB1_422:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_424
# BB#423:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_425
.LBB1_424:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_426
.LBB1_425:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_426:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_18:
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_89:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_90
# BB#91:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_92
.LBB1_74:
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_76
# BB#75:
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
.LBB1_76:
	movq	%rax, xx_tmp(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_79
# BB#77:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_79
# BB#78:
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
.LBB1_79:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	movq	-168(%rbp), %rdi
	jmp	.LBB1_80
.LBB1_451:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$33, %esi
	movl	$.L.str.27, %edx
.LBB1_452:
	movl	$2, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.28, %esi
	jmp	.LBB1_430
.LBB1_324:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_326:
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
	je	.LBB1_329
# BB#327:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_329
# BB#328:
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
.LBB1_329:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_332
# BB#330:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_332
# BB#331:
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
.LBB1_332:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movl	-112(%rbp), %r14d
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	Manifest
	movq	%rax, -168(%rbp)
	jmp	.LBB1_854
.LBB1_371:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_372
.LBB1_373:                              #   in Loop: Header=BB1_372 Depth=1
	movq	-248(%rbp), %rax
.LBB1_372:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_373
# BB#374:
	movq	-248(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -360(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-168(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_375
.LBB1_376:                              #   in Loop: Header=BB1_375 Depth=1
	movq	-248(%rbp), %rax
.LBB1_375:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_376
# BB#377:
	movq	-248(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -360(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB1_378
.LBB1_368:
	movq	-56(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 64(%rax)
.LBB1_378:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_380
# BB#379:
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
.LBB1_380:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_382
# BB#381:
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
.LBB1_382:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_384
# BB#383:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_385
.LBB1_384:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_386
.LBB1_446:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$31, %esi
	movl	$.L.str.25, %edx
	jmp	.LBB1_443
.LBB1_520:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_522:
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
	movq	%rax, -456(%rbp)
	movq	-72(%rbp), %rcx
	movb	(%rcx), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movzwl	42(%rax), %edx
	shll	$11, %ecx
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	movq	-72(%rbp), %rax
	andb	$-5, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_524
# BB#523:
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
.LBB1_524:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-456(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_527
# BB#525:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_527
# BB#526:
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
.LBB1_527:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_529
# BB#528:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_532
.LBB1_529:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_530
# BB#531:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_532
.LBB1_530:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_532:
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
	movq	-456(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_535
# BB#533:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_535
# BB#534:
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
.LBB1_535:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_538
# BB#536:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_538
# BB#537:
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
.LBB1_538:
	movq	-456(%rbp), %rax
	movq	%rax, -280(%rbp)
.LBB1_539:
	movq	-280(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -280(%rbp)
	jmp	.LBB1_540
	.align	16, 0x90
.LBB1_565:                              #   in Loop: Header=BB1_540 Depth=1
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_540:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_541 Depth 2
                                        #       Child Loop BB1_543 Depth 3
	movq	%rax, -264(%rbp)
	jmp	.LBB1_541
.LBB1_564:                              #   in Loop: Header=BB1_541 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_541:                              #   Parent Loop BB1_540 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_543 Depth 3
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-280(%rbp), %rax
	je	.LBB1_566
# BB#542:                               #   in Loop: Header=BB1_541 Depth=2
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_543
	.align	16, 0x90
.LBB1_544:                              #   in Loop: Header=BB1_543 Depth=3
	movq	-248(%rbp), %rax
.LBB1_543:                              #   Parent Loop BB1_540 Depth=1
                                        #     Parent Loop BB1_541 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_544
# BB#545:                               #   in Loop: Header=BB1_541 Depth=2
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_565
# BB#546:                               #   in Loop: Header=BB1_541 Depth=2
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -464(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -472(%rbp)
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)
	movq	-464(%rbp), %rax
	cmpq	-472(%rbp), %rax
	je	.LBB1_555
# BB#547:                               #   in Loop: Header=BB1_541 Depth=2
	movq	-464(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_549
# BB#548:                               #   in Loop: Header=BB1_541 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_549:                              #   in Loop: Header=BB1_541 Depth=2
	movq	-464(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-472(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_552
# BB#550:                               #   in Loop: Header=BB1_541 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_552
# BB#551:                               #   in Loop: Header=BB1_541 Depth=2
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
.LBB1_552:                              #   in Loop: Header=BB1_541 Depth=2
	movq	-464(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-480(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_555
# BB#553:                               #   in Loop: Header=BB1_541 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_555
# BB#554:                               #   in Loop: Header=BB1_541 Depth=2
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
.LBB1_555:                              #   in Loop: Header=BB1_541 Depth=2
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_557
# BB#556:                               #   in Loop: Header=BB1_541 Depth=2
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
.LBB1_557:                              #   in Loop: Header=BB1_541 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_559
# BB#558:                               #   in Loop: Header=BB1_541 Depth=2
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
.LBB1_559:                              #   in Loop: Header=BB1_541 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_561
# BB#560:                               #   in Loop: Header=BB1_541 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_562
.LBB1_561:                              #   in Loop: Header=BB1_541 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_563
.LBB1_562:                              #   in Loop: Header=BB1_541 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_563:                              #   in Loop: Header=BB1_541 Depth=2
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
	jne	.LBB1_541
	jmp	.LBB1_564
.LBB1_566:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_567
	.align	16, 0x90
.LBB1_568:                              #   in Loop: Header=BB1_567 Depth=1
	movq	-288(%rbp), %rax
.LBB1_567:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_568
# BB#569:
	movq	-288(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_592
# BB#570:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_572
# BB#571:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_575
.LBB1_572:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_573
# BB#574:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_575
.LBB1_573:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_575:
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
	movq	%rax, -488(%rbp)
	movq	-72(%rbp), %rcx
	movb	(%rcx), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movzwl	42(%rax), %edx
	shll	$11, %ecx
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	movq	-72(%rbp), %rax
	andb	$-5, (%rax)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_577
# BB#576:
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
.LBB1_577:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-488(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_580
# BB#578:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_580
# BB#579:
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
.LBB1_580:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_582
# BB#581:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_585
.LBB1_582:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_583
# BB#584:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_585
.LBB1_583:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_585:
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
	movq	-488(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_588
# BB#586:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_588
# BB#587:
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
.LBB1_588:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-288(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_591
# BB#589:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_591
# BB#590:
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
.LBB1_591:
	movq	-488(%rbp), %rax
	movq	%rax, -288(%rbp)
.LBB1_592:
	movq	-288(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -288(%rbp)
	jmp	.LBB1_593
	.align	16, 0x90
.LBB1_618:                              #   in Loop: Header=BB1_593 Depth=1
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_593:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_594 Depth 2
                                        #       Child Loop BB1_596 Depth 3
	movq	%rax, -272(%rbp)
	jmp	.LBB1_594
.LBB1_617:                              #   in Loop: Header=BB1_594 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_594:                              #   Parent Loop BB1_593 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_596 Depth 3
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-288(%rbp), %rax
	je	.LBB1_619
# BB#595:                               #   in Loop: Header=BB1_594 Depth=2
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_596
	.align	16, 0x90
.LBB1_597:                              #   in Loop: Header=BB1_596 Depth=3
	movq	-248(%rbp), %rax
.LBB1_596:                              #   Parent Loop BB1_593 Depth=1
                                        #     Parent Loop BB1_594 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_597
# BB#598:                               #   in Loop: Header=BB1_594 Depth=2
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_618
# BB#599:                               #   in Loop: Header=BB1_594 Depth=2
	movq	-248(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -504(%rbp)
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-496(%rbp), %rax
	cmpq	-504(%rbp), %rax
	je	.LBB1_608
# BB#600:                               #   in Loop: Header=BB1_594 Depth=2
	movq	-496(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_602
# BB#601:                               #   in Loop: Header=BB1_594 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_602:                              #   in Loop: Header=BB1_594 Depth=2
	movq	-496(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_605
# BB#603:                               #   in Loop: Header=BB1_594 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_605
# BB#604:                               #   in Loop: Header=BB1_594 Depth=2
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
.LBB1_605:                              #   in Loop: Header=BB1_594 Depth=2
	movq	-496(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-512(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_608
# BB#606:                               #   in Loop: Header=BB1_594 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_608
# BB#607:                               #   in Loop: Header=BB1_594 Depth=2
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
.LBB1_608:                              #   in Loop: Header=BB1_594 Depth=2
	movq	-248(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_610
# BB#609:                               #   in Loop: Header=BB1_594 Depth=2
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
.LBB1_610:                              #   in Loop: Header=BB1_594 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_612
# BB#611:                               #   in Loop: Header=BB1_594 Depth=2
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
.LBB1_612:                              #   in Loop: Header=BB1_594 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_614
# BB#613:                               #   in Loop: Header=BB1_594 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_615
.LBB1_614:                              #   in Loop: Header=BB1_594 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_616
.LBB1_615:                              #   in Loop: Header=BB1_594 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_616:                              #   in Loop: Header=BB1_594 Depth=2
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
	jne	.LBB1_594
	jmp	.LBB1_617
.LBB1_619:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$75, %eax
	jne	.LBB1_621
# BB#620:
	movq	-280(%rbp), %rdi
	movq	-288(%rbp), %rsi
	callq	Meld
	jmp	.LBB1_673
.LBB1_621:
	movq	-280(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-288(%rbp), %rax
	jmp	.LBB1_622
.LBB1_642:                              #   in Loop: Header=BB1_622 Depth=1
	movq	-264(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-272(%rbp), %rax
.LBB1_622:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_627 Depth 2
                                        #     Child Loop BB1_630 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-264(%rbp), %rax
	cmpq	-280(%rbp), %rax
	je	.LBB1_623
# BB#624:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-272(%rbp), %rax
	cmpq	-288(%rbp), %rax
	setne	%al
	jmp	.LBB1_625
.LBB1_623:                              #   in Loop: Header=BB1_622 Depth=1
	xorl	%eax, %eax
.LBB1_625:                              #   in Loop: Header=BB1_622 Depth=1
	testb	%al, %al
	je	.LBB1_637
# BB#626:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-264(%rbp), %rax
	jmp	.LBB1_627
	.align	16, 0x90
.LBB1_628:                              #   in Loop: Header=BB1_627 Depth=2
	movq	-296(%rbp), %rax
.LBB1_627:                              #   Parent Loop BB1_622 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_628
# BB#629:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-272(%rbp), %rax
	jmp	.LBB1_630
	.align	16, 0x90
.LBB1_631:                              #   in Loop: Header=BB1_630 Depth=2
	movq	-304(%rbp), %rax
.LBB1_630:                              #   Parent Loop BB1_622 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-304(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_631
# BB#632:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-296(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_634
# BB#633:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-296(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_641
.LBB1_634:                              #   in Loop: Header=BB1_622 Depth=1
	movq	-304(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_636
# BB#635:                               #   in Loop: Header=BB1_622 Depth=1
	movq	-304(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_641
.LBB1_636:                              #   in Loop: Header=BB1_622 Depth=1
	movq	-296(%rbp), %rdi
	addq	$64, %rdi
	movq	-304(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_642
	jmp	.LBB1_637
.LBB1_641:                              #   in Loop: Header=BB1_622 Depth=1
	movq	-296(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-304(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_642
.LBB1_637:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$73, %eax
	jne	.LBB1_652
# BB#638:
	movq	-272(%rbp), %rax
	cmpq	-288(%rbp), %rax
	je	.LBB1_672
# BB#639:
	movq	-264(%rbp), %rax
	cmpq	-280(%rbp), %rax
	je	.LBB1_640
# BB#643:
	movq	-272(%rbp), %rax
	movq	-288(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB1_644
# BB#645:
	movq	-272(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -520(%rbp)
	movq	-288(%rbp), %rax
	movq	%rax, -528(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -536(%rbp)
	movq	-520(%rbp), %rax
	cmpq	-528(%rbp), %rax
	je	.LBB1_672
# BB#646:
	movq	-520(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_648
# BB#647:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_648:
	movq	-520(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-528(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_651
# BB#649:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_651
# BB#650:
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
.LBB1_651:
	movq	-520(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-536(%rbp), %rax
	jmp	.LBB1_669
.LBB1_652:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$74, %eax
	jne	.LBB1_674
# BB#653:
	movq	-272(%rbp), %rax
	cmpq	-288(%rbp), %rax
	je	.LBB1_644
# BB#654:
	movq	-264(%rbp), %rax
	cmpq	-280(%rbp), %rax
	je	.LBB1_655
# BB#662:
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -568(%rbp)
	movq	-272(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-568(%rbp), %rax
	cmpq	-576(%rbp), %rax
	je	.LBB1_672
# BB#663:
	movq	-568(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_665
# BB#664:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_665:
	movq	-568(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-576(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_668
# BB#666:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_668
# BB#667:
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
.LBB1_668:
	movq	-568(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-584(%rbp), %rax
	jmp	.LBB1_669
.LBB1_644:
	movq	-288(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	jmp	.LBB1_673
.LBB1_347:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_348:
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
	jne	.LBB1_350
# BB#349:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_350:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_351
.LBB1_352:                              #   in Loop: Header=BB1_351 Depth=1
	movq	-168(%rbp), %rax
.LBB1_351:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_352
	jmp	.LBB1_397
.LBB1_442:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$30, %esi
	movl	$.L.str.23, %edx
.LBB1_443:
	movl	$2, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	jmp	.LBB1_444
.LBB1_690:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_691:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_692
.LBB1_693:                              #   in Loop: Header=BB1_692 Depth=1
	movq	-168(%rbp), %rax
.LBB1_692:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_693
# BB#694:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_696
# BB#695:
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
.LBB1_696:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_698
# BB#697:
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
.LBB1_698:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_700
# BB#699:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_701
.LBB1_700:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_702
.LBB1_784:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_785:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_786
.LBB1_787:                              #   in Loop: Header=BB1_786 Depth=1
	movq	-208(%rbp), %rax
.LBB1_786:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_787
# BB#788:
	movq	$0, -232(%rbp)
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_807
# BB#789:
	movq	-64(%rbp), %rdi
	movq	-168(%rbp), %rsi
	callq	AttachEnv
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-168(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-168(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-168(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-168(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-168(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-168(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-168(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-168(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-168(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-168(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-168(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-168(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-168(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movq	-168(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-168(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB1_790
.LBB1_807:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB1_809
# BB#808:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB1_815
.LBB1_809:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_810
.LBB1_811:                              #   in Loop: Header=BB1_810 Depth=1
	movq	-248(%rbp), %rax
.LBB1_810:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_811
# BB#812:
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_814
# BB#813:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-104(%rbp), %rcx
	leaq	-216(%rbp), %r8
	callq	CrossExpand
	movq	%rax, -168(%rbp)
	movq	-216(%rbp), %rdi
	movq	%rax, %rsi
	callq	AttachEnv
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
.LBB1_790:
	callq	SetEnv
	movq	%rax, -216(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_792
# BB#791:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_795
.LBB1_792:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_793
# BB#794:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_795
.LBB1_385:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_386:
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
	jne	.LBB1_388
# BB#387:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_388:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_389
.LBB1_390:                              #   in Loop: Header=BB1_389 Depth=1
	movq	-168(%rbp), %rax
.LBB1_389:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_390
.LBB1_397:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r8
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rbx
	movl	-124(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
.LBB1_24:
	movq	%rax, -168(%rbp)
.LBB1_25:
	movq	-80(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_29
# BB#26:
	movq	-80(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_29
# BB#27:
	movq	-88(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_29
# BB#28:
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_854
.LBB1_29:
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
.LBB1_314:
	callq	insert_split
	movq	%rax, -56(%rbp)
.LBB1_854:
	decl	Manifest.depth(%rip)
	movq	-56(%rbp), %rax
.LBB1_855:
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$1112, %rsp             # imm = 0x458
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_701:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_702:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-168(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-56(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_704
# BB#703:
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
.LBB1_704:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_707
# BB#705:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_707
# BB#706:
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
.LBB1_707:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_709
# BB#708:
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
.LBB1_709:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_712
# BB#710:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_712
# BB#711:
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
.LBB1_712:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_714
# BB#713:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_715
.LBB1_714:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_716
.LBB1_715:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_716:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-168(%rbp), %rdi
	movq	%rdi, -56(%rbp)
	movq	-72(%rbp), %rdx
	leaq	-248(%rbp), %rsi
	callq	InsertObject
	movq	%rax, -56(%rbp)
	cmpq	$0, -248(%rbp)
	je	.LBB1_854
# BB#717:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$34, %esi
	movl	$.L.str.34, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-248(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_854
.LBB1_43:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_44
# BB#45:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_46
.LBB1_814:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$35, %esi
	jmp	.LBB1_816
.LBB1_448:
	movq	-168(%rbp), %rax
	movb	$12, 32(%rax)
	movq	-168(%rbp), %rdi
	leaq	32(%rdi), %r14
	callq	StringQuotedWord
	movq	%rax, %rbx
	movq	-168(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	40(%rax), %edi
	callq	FontFamilyAndFace
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$8, %edi
	movl	$32, %esi
	movl	$.L.str.26, %edx
	movl	$2, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	movq	%r14, %r8
.LBB1_444:
	callq	Error
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
.LBB1_430:
	callq	MakeWord
	movq	%rax, -208(%rbp)
.LBB1_431:
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_433
# BB#432:
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
.LBB1_433:
	movq	%rax, xx_tmp(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_436
# BB#434:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_436
# BB#435:
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
.LBB1_436:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	movq	-208(%rbp), %rdi
.LBB1_80:
	movq	-64(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_640:
	movq	-280(%rbp), %rax
	jmp	.LBB1_673
.LBB1_90:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_92:
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
	movq	%rax, -168(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-168(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-56(%rbp), %rax
	andl	36(%rax), %esi
	movq	-168(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_94
# BB#93:
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
.LBB1_94:
	movq	%rax, xx_tmp(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_97
# BB#95:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_97
# BB#96:
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
.LBB1_97:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_99
# BB#98:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_102
.LBB1_99:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_100
# BB#101:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_102
.LBB1_100:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_102:
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
	je	.LBB1_105
# BB#103:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_105
# BB#104:
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
.LBB1_105:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_108
# BB#106:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_108
# BB#107:
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
.LBB1_108:
	movq	-168(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB1_109:
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-72(%rbp), %rax
	movw	2(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	movq	-56(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-56(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-56(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-72(%rbp), %rax
	movl	$4095, %r8d             # imm = 0xFFF
	movl	12(%rax), %ecx
	andl	%r8d, %ecx
	movq	-56(%rbp), %rdx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	movl	76(%rdx), %esi
	andl	%eax, %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$4190208, %r9d          # imm = 0x3FF000
	movl	12(%rcx), %ecx
	andl	%r9d, %ecx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rdx), %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$12582912, %r10d        # imm = 0xC00000
	movl	12(%rcx), %ecx
	andl	%r10d, %ecx
	movl	$-12582913, %edi        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rdx), %edi
	orl	%ecx, %edi
	movl	%edi, 76(%rdx)
	movq	-72(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	$1056964608, %r11d      # imm = 0x3F000000
	movl	12(%rcx), %ecx
	andl	%r11d, %ecx
	movl	$-1056964609, %ebx      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rdx), %ebx
	orl	%ecx, %ebx
	movl	%ebx, 76(%rdx)
	movq	-72(%rbp), %rcx
	movl	$-2147483648, %r14d     # imm = 0xFFFFFFFF80000000
	movl	12(%rcx), %ecx
	andl	%r14d, %ecx
	movq	-56(%rbp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	andl	76(%rdx), %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-72(%rbp), %rdx
	movq	-56(%rbp), %rsi
	movl	$1073741824, %ecx       # imm = 0x40000000
	movl	12(%rdx), %edx
	andl	%ecx, %edx
	movl	$-1073741825, %edi      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rsi), %edi
	orl	%edx, %edi
	movl	%edi, 76(%rsi)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	andb	$1, %dl
	movq	-56(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$-2, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-56(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$2, %dl
	andb	$-3, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-56(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$4, %dl
	andb	$-5, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-56(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$112, %dl
	andb	$-113, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-72(%rbp), %rdx
	movw	8(%rdx), %dx
	movq	-56(%rbp), %rsi
	movw	%dx, 72(%rsi)
	movq	-72(%rbp), %rdx
	movw	10(%rdx), %dx
	movq	-56(%rbp), %rsi
	movw	%dx, 74(%rsi)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	shrb	$2, %dl
	andb	$1, %dl
	movq	-56(%rbp), %rsi
	movzbl	%dl, %edx
	movzwl	42(%rsi), %edi
	shll	$11, %edx
	andl	$63487, %edi            # imm = 0xF7FF
	orl	%edx, %edi
	movw	%di, 42(%rsi)
	movq	-72(%rbp), %rdx
	movzwl	(%rdx), %esi
	movzwl	-344(%rbp), %edx
	andl	$128, %esi
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%esi, %edx
	movw	%dx, -344(%rbp)
	movq	-72(%rbp), %rsi
	movzbl	1(%rsi), %esi
	andl	$1, %esi
	shll	$8, %esi
	andl	$-257, %edx             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%esi, %edx
	movw	%dx, -344(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$512, %esi              # imm = 0x200
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%esi, %edx
	movw	%dx, -344(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$7168, %esi             # imm = 0x1C00
	andl	$-7169, %edx            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%esi, %edx
	movw	%dx, -344(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$57344, %esi            # imm = 0xE000
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%esi, %edx
	movw	%dx, -344(%rbp)
	movq	-72(%rbp), %rdx
	movw	2(%rdx), %dx
	movw	%dx, -342(%rbp)
	movq	-72(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$3, %dl
	movb	-340(%rbp), %bl
	andb	$-4, %bl
	orb	%dl, %bl
	movb	%bl, -340(%rbp)
	movq	-72(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$12, %dl
	andb	$-13, %bl
	orb	%dl, %bl
	movb	%bl, -340(%rbp)
	movq	-72(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$112, %dl
	andb	$-113, %bl
	orb	%dl, %bl
	movb	%bl, -340(%rbp)
	movq	-72(%rbp), %rdx
	movb	(%rdx), %dl
	movb	-344(%rbp), %bl
	andb	$8, %dl
	andb	$-9, %bl
	orb	%dl, %bl
	movb	%bl, -344(%rbp)
	movq	-72(%rbp), %rdx
	movzwl	4(%rdx), %esi
	movzwl	-340(%rbp), %edx
	andl	$128, %esi
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%esi, %edx
	movw	%dx, -340(%rbp)
	movq	-72(%rbp), %rsi
	movzbl	5(%rsi), %esi
	andl	$1, %esi
	shll	$8, %esi
	andl	$-257, %edx             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%esi, %edx
	movw	%dx, -340(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$512, %esi              # imm = 0x200
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%esi, %edx
	movw	%dx, -340(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$7168, %esi             # imm = 0x1C00
	andl	$-7169, %edx            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%esi, %edx
	movw	%dx, -340(%rbp)
	movq	-72(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$57344, %esi            # imm = 0xE000
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%esi, %edx
	movw	%dx, -340(%rbp)
	movq	-72(%rbp), %rdx
	movw	6(%rdx), %dx
	movw	%dx, -338(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %r8d
	andl	-332(%rbp), %eax
	orl	%r8d, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %r9d
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%r9d, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %r10d
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%r10d, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %r11d
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%r11d, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %r14d
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%r14d, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rdx
	andl	12(%rdx), %ecx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%ecx, %eax
	movl	%eax, -332(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-344(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -344(%rbp)
	movq	-72(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -336(%rbp)
	movq	-72(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -334(%rbp)
	andb	$-5, -344(%rbp)
	movq	-56(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_111
# BB#110:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_111:
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	jmp	.LBB1_112
	.align	16, 0x90
.LBB1_113:                              #   in Loop: Header=BB1_112 Depth=1
	movq	-168(%rbp), %rax
.LBB1_112:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_113
# BB#114:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_116
# BB#115:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_116:
	movl	$0, -352(%rbp)
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_118
# BB#117:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_121
.LBB1_118:
	movq	-72(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	12(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-168(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-168(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_123
# BB#119:
	cmpl	$0, -108(%rbp)
	je	.LBB1_123
# BB#120:
	movq	-168(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	MapSmallCaps
	jmp	.LBB1_122
.LBB1_121:
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-344(%rbp), %rdx
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
.LBB1_122:
	movq	%rax, -168(%rbp)
.LBB1_123:
	movq	-168(%rbp), %rax
	movl	$-1610612737, %r14d     # imm = 0xFFFFFFFF9FFFFFFF
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	cmpl	$0, -108(%rbp)
	je	.LBB1_135
# BB#124:
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_135
# BB#125:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -384(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-376(%rbp), %rax
	je	.LBB1_134
# BB#126:
	movq	-368(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_128
# BB#127:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_128:
	movq	-368(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_131
# BB#129:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_131
# BB#130:
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
.LBB1_131:
	movq	-368(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-384(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_134
# BB#132:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_134
# BB#133:
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
.LBB1_134:
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
.LBB1_135:
	movq	-168(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movl	$4095, %r13d            # imm = 0xFFF
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	leaq	-344(%rbp), %r12
	jmp	.LBB1_136
	.align	16, 0x90
.LBB1_273:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
.LBB1_136:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_138 Depth 2
                                        #     Child Loop BB1_145 Depth 2
                                        #     Child Loop BB1_189 Depth 2
                                        #       Child Loop BB1_196 Depth 3
                                        #     Child Loop BB1_201 Depth 2
                                        #     Child Loop BB1_168 Depth 2
                                        #       Child Loop BB1_175 Depth 3
                                        #     Child Loop BB1_180 Depth 2
                                        #     Child Loop BB1_158 Depth 2
	movq	-184(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB1_25
# BB#137:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-184(%rbp), %rax
	jmp	.LBB1_138
	.align	16, 0x90
.LBB1_139:                              #   in Loop: Header=BB1_138 Depth=2
	movq	-192(%rbp), %rax
.LBB1_138:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_139
# BB#140:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_142
# BB#141:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_142:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-184(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	cmpq	-56(%rbp), %rax
	jne	.LBB1_144
# BB#143:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_144:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB1_145
	.align	16, 0x90
.LBB1_146:                              #   in Loop: Header=BB1_145 Depth=2
	movq	-168(%rbp), %rax
.LBB1_145:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_146
# BB#147:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_149
# BB#148:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_149:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_151
# BB#150:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_154
.LBB1_151:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	andl	%r13d, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	12(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	12(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-168(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-168(%rbp), %rcx
	shll	$31, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_156
# BB#152:                               #   in Loop: Header=BB1_136 Depth=1
	cmpl	$0, -108(%rbp)
	je	.LBB1_156
# BB#153:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	MapSmallCaps
	jmp	.LBB1_155
.LBB1_154:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %rax
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rdx
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movq	%r12, %rdx
	callq	Manifest
.LBB1_155:                              #   in Loop: Header=BB1_136 Depth=1
	movq	%rax, -168(%rbp)
.LBB1_156:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-192(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_161
# BB#157:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_158
	.align	16, 0x90
.LBB1_159:                              #   in Loop: Header=BB1_158 Depth=2
	movq	-248(%rbp), %rax
.LBB1_158:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_159
# BB#160:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movq	-104(%rbp), %rax
	movl	-124(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	movq	%r12, %rdx
	callq	Manifest
	movq	%rax, -248(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -248(%rbp)
	movq	-72(%rbp), %rsi
	movq	-192(%rbp), %rdx
	addq	$44, %rdx
	movq	%rax, %rdi
	leaq	-324(%rbp), %rcx
	callq	GetGap
	movq	-192(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-192(%rbp), %rax
	movb	$0, 42(%rax)
	jmp	.LBB1_213
.LBB1_161:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-192(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-72(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-192(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-192(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-192(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-72(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-192(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-72(%rbp), %rax
	movw	6(%rax), %ax
	movq	-192(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-72(%rbp), %rax
	movb	(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jbe	.LBB1_162
# BB#206:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_207
.LBB1_162:                              #   in Loop: Header=BB1_136 Depth=1
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_163:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzwl	46(%rax), %ecx
	movzbl	42(%rax), %edx
	movzbl	41(%rax), %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movw	%si, 46(%rax)
	jmp	.LBB1_207
.LBB1_164:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB1_207
	jmp	.LBB1_165
.LBB1_166:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzwl	46(%rax), %ecx
	movzbl	42(%rax), %edx
	movzbl	41(%rax), %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movw	%si, 46(%rax)
	movq	-192(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_207
# BB#167:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB1_168
	.align	16, 0x90
.LBB1_174:                              #   in Loop: Header=BB1_168 Depth=2
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_175
	.align	16, 0x90
.LBB1_176:                              #   in Loop: Header=BB1_175 Depth=3
	movq	-248(%rbp), %rax
.LBB1_175:                              #   Parent Loop BB1_136 Depth=1
                                        #     Parent Loop BB1_168 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_176
.LBB1_168:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_175 Depth 3
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$17, %ecx
	je	.LBB1_173
# BB#169:                               #   in Loop: Header=BB1_168 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$24, %ecx
	je	.LBB1_173
# BB#170:                               #   in Loop: Header=BB1_168 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$25, %ecx
	je	.LBB1_173
# BB#171:                               #   in Loop: Header=BB1_168 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_173
# BB#172:                               #   in Loop: Header=BB1_168 Depth=2
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$37, %eax
	sete	%al
	.align	16, 0x90
.LBB1_173:                              #   in Loop: Header=BB1_168 Depth=2
	testb	%al, %al
	jne	.LBB1_174
# BB#177:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_179
# BB#178:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_207
.LBB1_179:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_180
.LBB1_181:                              #   in Loop: Header=BB1_180 Depth=2
	incq	-200(%rbp)
.LBB1_180:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_181
# BB#182:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -200(%rbp)
	je	.LBB1_207
# BB#183:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-200(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$0, LanguageSentenceEnds(,%rax,4)
	je	.LBB1_207
# BB#184:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB1_185
.LBB1_187:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	je	.LBB1_165
# BB#188:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movq	%rax, -248(%rbp)
	jmp	.LBB1_189
	.align	16, 0x90
.LBB1_195:                              #   in Loop: Header=BB1_189 Depth=2
	movq	-248(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_196
	.align	16, 0x90
.LBB1_197:                              #   in Loop: Header=BB1_196 Depth=3
	movq	-248(%rbp), %rax
.LBB1_196:                              #   Parent Loop BB1_136 Depth=1
                                        #     Parent Loop BB1_189 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_197
.LBB1_189:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_196 Depth 3
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$17, %ecx
	je	.LBB1_194
# BB#190:                               #   in Loop: Header=BB1_189 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$24, %ecx
	je	.LBB1_194
# BB#191:                               #   in Loop: Header=BB1_189 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$25, %ecx
	je	.LBB1_194
# BB#192:                               #   in Loop: Header=BB1_189 Depth=2
	movq	-248(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_194
# BB#193:                               #   in Loop: Header=BB1_189 Depth=2
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$37, %eax
	sete	%al
	.align	16, 0x90
.LBB1_194:                              #   in Loop: Header=BB1_189 Depth=2
	testb	%al, %al
	jne	.LBB1_195
# BB#198:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_200
# BB#199:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_207
.LBB1_200:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -200(%rbp)
	jmp	.LBB1_201
.LBB1_202:                              #   in Loop: Header=BB1_201 Depth=2
	incq	-200(%rbp)
.LBB1_201:                              #   Parent Loop BB1_136 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_202
# BB#203:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -200(%rbp)
	je	.LBB1_207
# BB#204:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-200(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$0, LanguageSentenceEnds(,%rax,4)
	je	.LBB1_207
# BB#205:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rdi
	movl	$1, %esi
.LBB1_185:                              #   in Loop: Header=BB1_136 Depth=1
	callq	LanguageWordEndsSentence
	testl	%eax, %eax
	je	.LBB1_207
# BB#186:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-72(%rbp), %rax
	movzwl	6(%rax), %eax
	movq	-192(%rbp), %rcx
	movzwl	46(%rcx), %edx
	addl	%eax, %edx
	movw	%dx, 46(%rcx)
	jmp	.LBB1_207
.LBB1_165:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movw	$0, 46(%rax)
.LBB1_207:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	cmpw	$0, 46(%rax)
	sete	%cl
	movzbl	%cl, %ecx
	movzwl	44(%rax), %edx
	shll	$7, %ecx
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%ecx, %edx
	movw	%dx, 44(%rax)
	movq	-192(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jg	.LBB1_210
# BB#208:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB1_213
# BB#209:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB1_213
.LBB1_210:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_213
# BB#211:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB1_213
# BB#212:                               #   in Loop: Header=BB1_136 Depth=1
	movl	$1, -352(%rbp)
	.align	16, 0x90
.LBB1_213:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_215
# BB#214:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_261
.LBB1_215:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB1_261
# BB#216:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB1_261
# BB#217:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB1_261
# BB#218:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB1_261
# BB#219:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_261
# BB#220:                               #   in Loop: Header=BB1_136 Depth=1
	cmpq	$0, -256(%rbp)
	je	.LBB1_261
# BB#221:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_223
# BB#222:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_261
.LBB1_223:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-192(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	jne	.LBB1_261
# BB#224:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r13d, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%r13d, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_261
# BB#225:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	cmpl	%ecx, %eax
	jne	.LBB1_261
# BB#226:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_261
# BB#227:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$23, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_261
# BB#228:                               #   in Loop: Header=BB1_136 Depth=1
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	movq	-256(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB1_230
# BB#229:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_230:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB1_232
# BB#231:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_232:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	movq	-168(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	-1112(%rbp), %rax       # 8-byte Folded Reload
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_234
# BB#233:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-256(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	-168(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$8, %edi
	movl	$24, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_234:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-256(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	je	.LBB1_236
# BB#235:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB1_236:                              #   in Loop: Header=BB1_136 Depth=1
	movzbl	%al, %edi
	addl	$11, %edi
	movl	%edi, -388(%rbp)
	movq	-256(%rbp), %rcx
	movq	-168(%rbp), %rdx
	addq	$64, %rdx
	leaq	64(%rcx), %rsi
	addq	$32, %rcx
	callq	MakeWordTwo
	movq	%rax, -168(%rbp)
	movq	-256(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%r13d, %ecx
	movl	40(%rax), %edx
	andl	%ebx, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-256(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-256(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-256(%rbp), %rax
	movq	-168(%rbp), %rcx
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
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	%ecx, %eax
	movq	-168(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-168(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-176(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_238
# BB#237:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_238:                              #   in Loop: Header=BB1_136 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_241
# BB#239:                               #   in Loop: Header=BB1_136 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_241
# BB#240:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_241:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-248(%rbp), %rdi
	callq	DisposeObject
	movq	-256(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_243
# BB#242:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_243:                              #   in Loop: Header=BB1_136 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_245
# BB#244:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_245:                              #   in Loop: Header=BB1_136 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_247
# BB#246:                               #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_248
.LBB1_247:                              #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_249
.LBB1_248:                              #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_249:                              #   in Loop: Header=BB1_136 Depth=1
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
	jne	.LBB1_251
# BB#250:                               #   in Loop: Header=BB1_136 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_251:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-184(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_253
# BB#252:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_253:                              #   in Loop: Header=BB1_136 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_255
# BB#254:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_255:                              #   in Loop: Header=BB1_136 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_257
# BB#256:                               #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_258
.LBB1_257:                              #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_259
.LBB1_258:                              #   in Loop: Header=BB1_136 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_259:                              #   in Loop: Header=BB1_136 Depth=1
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
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	jne	.LBB1_261
# BB#260:                               #   in Loop: Header=BB1_136 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	.align	16, 0x90
.LBB1_261:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -256(%rbp)
	cmpl	$0, -108(%rbp)
	je	.LBB1_273
# BB#262:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-104(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_273
# BB#263:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -416(%rbp)
	movq	-400(%rbp), %rax
	cmpq	-408(%rbp), %rax
	je	.LBB1_272
# BB#264:                               #   in Loop: Header=BB1_136 Depth=1
	movq	-400(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_266
# BB#265:                               #   in Loop: Header=BB1_136 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_266:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-400(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-408(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_269
# BB#267:                               #   in Loop: Header=BB1_136 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_269
# BB#268:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_269:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-400(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-416(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_272
# BB#270:                               #   in Loop: Header=BB1_136 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_272
# BB#271:                               #   in Loop: Header=BB1_136 Depth=1
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
.LBB1_272:                              #   in Loop: Header=BB1_136 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-104(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB1_273
.LBB1_765:
	movl	-312(%rbp), %edx
	subl	-316(%rbp), %edx
.LBB1_766:
	leaq	-1104(%rbp), %rbx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-56(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%rbx, %rsi
	jmp	.LBB1_768
.LBB1_793:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_795:
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_797
# BB#796:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_800
.LBB1_797:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_798
# BB#799:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_800
.LBB1_798:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_800:
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
	je	.LBB1_803
# BB#801:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_803
# BB#802:
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
.LBB1_803:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_806
# BB#804:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_806
# BB#805:
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
.LBB1_806:
	movq	-208(%rbp), %rdi
	movq	-216(%rbp), %rsi
	jmp	.LBB1_817
.LBB1_738:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_739:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_741
# BB#740:
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
.LBB1_741:
	movq	%rax, xx_tmp(%rip)
	movq	-248(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_744
# BB#742:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_744
# BB#743:
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
.LBB1_744:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	movq	-248(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_815:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$36, %esi
.LBB1_816:
	movl	$.L.str.41, %edx
	movl	$2, %ecx
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-208(%rbp), %rdi
	movq	-64(%rbp), %rsi
.LBB1_817:
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -208(%rbp)
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_819
# BB#818:
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
.LBB1_819:
	movq	%rax, xx_tmp(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_822
# BB#820:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_822
# BB#821:
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
.LBB1_822:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	cmpq	$0, -232(%rbp)
	je	.LBB1_825
# BB#823:
	movq	-232(%rbp), %rdi
.LBB1_824:
	callq	DisposeObject
.LBB1_825:
	movq	-208(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_854
.LBB1_655:
	movq	-288(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-280(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-544(%rbp), %rax
	cmpq	-552(%rbp), %rax
	je	.LBB1_672
# BB#656:
	movq	-544(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_658
# BB#657:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_658:
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-552(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_661
# BB#659:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_661
# BB#660:
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
.LBB1_661:
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-560(%rbp), %rax
.LBB1_669:
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_672
# BB#670:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_672
# BB#671:
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
.LBB1_672:
	movq	-288(%rbp), %rax
.LBB1_673:
	movq	%rax, -208(%rbp)
.LBB1_674:
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_676
# BB#675:
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
.LBB1_676:
	movq	%rax, xx_tmp(%rip)
	movq	-208(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_679
# BB#677:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_679
# BB#678:
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
.LBB1_679:
	movq	-56(%rbp), %rdi
	callq	DisposeObject
	movq	-208(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB1_25
.LBB1_44:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_46:
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_48
# BB#47:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_51
.LBB1_48:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_49
# BB#50:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_51
.LBB1_49:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_51:
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
	je	.LBB1_54
# BB#52:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_54
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
.LBB1_54:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_57
# BB#55:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_57
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
.LBB1_57:
	movq	-56(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-104(%rbp), %rcx
	leaq	-224(%rbp), %r8
	xorl	%edx, %edx
	callq	ClosureExpand
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_62
.LBB1_59:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_60
# BB#61:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_62
.LBB1_60:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_62:
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
	movq	%rax, -240(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_64
# BB#63:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_67
.LBB1_64:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_65
# BB#66:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_67
.LBB1_65:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_67:
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
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_70
# BB#68:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_70
# BB#69:
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
.LBB1_70:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-224(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_73
# BB#71:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_73
# BB#72:
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
.LBB1_73:
	movq	-56(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	-72(%rbp), %rdx
	movq	-80(%rbp), %rcx
	movq	-88(%rbp), %r8
	movq	-96(%rbp), %r9
	movq	-104(%rbp), %r10
	movl	-108(%rbp), %r11d
	movq	-120(%rbp), %rax
	movl	-124(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 16(%rsp)
	callq	Manifest
	movq	%rax, -56(%rbp)
	movq	-232(%rbp), %rdi
	callq	DisposeObject
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_854
.Lfunc_end1:
	.size	Manifest, .Lfunc_end1-Manifest
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_19
	.quad	.LBB1_852
	.quad	.LBB1_20
	.quad	.LBB1_30
	.quad	.LBB1_31
	.quad	.LBB1_31
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_81
	.quad	.LBB1_81
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_109
	.quad	.LBB1_274
	.quad	.LBB1_274
	.quad	.LBB1_315
	.quad	.LBB1_321
	.quad	.LBB1_315
	.quad	.LBB1_321
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_275
	.quad	.LBB1_275
	.quad	.LBB1_290
	.quad	.LBB1_290
	.quad	.LBB1_359
	.quad	.LBB1_359
	.quad	.LBB1_359
	.quad	.LBB1_359
	.quad	.LBB1_362
	.quad	.LBB1_391
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_300
	.quad	.LBB1_359
	.quad	.LBB1_359
	.quad	.LBB1_359
	.quad	.LBB1_25
	.quad	.LBB1_25
	.quad	.LBB1_492
	.quad	.LBB1_492
	.quad	.LBB1_492
	.quad	.LBB1_333
	.quad	.LBB1_353
	.quad	.LBB1_427
	.quad	.LBB1_399
	.quad	.LBB1_399
	.quad	.LBB1_398
	.quad	.LBB1_428
	.quad	.LBB1_852
	.quad	.LBB1_437
	.quad	.LBB1_464
	.quad	.LBB1_464
	.quad	.LBB1_464
	.quad	.LBB1_464
	.quad	.LBB1_464
	.quad	.LBB1_503
	.quad	.LBB1_464
	.quad	.LBB1_492
	.quad	.LBB1_464
	.quad	.LBB1_450
	.quad	.LBB1_454
	.quad	.LBB1_454
	.quad	.LBB1_460
	.quad	.LBB1_460
	.quad	.LBB1_510
	.quad	.LBB1_510
	.quad	.LBB1_510
	.quad	.LBB1_680
	.quad	.LBB1_718
	.quad	.LBB1_745
	.quad	.LBB1_751
	.quad	.LBB1_751
	.quad	.LBB1_4
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_852
	.quad	.LBB1_774
	.quad	.LBB1_826
	.quad	.LBB1_841
	.quad	.LBB1_841
	.quad	.LBB1_827
	.quad	.LBB1_827
	.quad	.LBB1_835
	.quad	.LBB1_835
.LJTI1_1:
	.quad	.LBB1_472
	.quad	.LBB1_473
	.quad	.LBB1_474
	.quad	.LBB1_475
	.quad	.LBB1_476
	.quad	.LBB1_479
	.quad	.LBB1_477
	.quad	.LBB1_479
	.quad	.LBB1_478
.LJTI1_2:
	.quad	.LBB1_163
	.quad	.LBB1_164
	.quad	.LBB1_207
	.quad	.LBB1_166
	.quad	.LBB1_187

	.text
	.align	16, 0x90
	.type	ManifestCl,@function
ManifestCl:                             # @ManifestCl
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
	subq	$240, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movl	48(%rbp), %r10d
	movq	40(%rbp), %r11
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movq	%r11, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-32(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	2(%rax), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-32(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	movq	-32(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	movq	-32(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-32(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-32(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-32(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-32(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movw	6(%rax), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-48(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-32(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-32(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-32(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-32(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	8(%rax), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-48(%rbp), %rax
	movw	10(%rax), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_36
# BB#1:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB2_3
# BB#2:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	je	.LBB2_3
.LBB2_36:
	movl	$1, -180(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB2_37
	.align	16, 0x90
.LBB2_70:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-120(%rbp), %rax
.LBB2_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_44 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB2_71
# BB#38:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_39
	.align	16, 0x90
.LBB2_40:                               #   in Loop: Header=BB2_39 Depth=2
	movq	-112(%rbp), %rax
.LBB2_39:                               #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_40
# BB#41:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB2_43
# BB#42:                                #   in Loop: Header=BB2_37 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_43:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_44 Depth=2
	movq	-160(%rbp), %rax
.LBB2_44:                               #   Parent Loop BB2_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_45
# BB#46:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_67
# BB#47:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_67
# BB#48:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$19, %eax
	jb	.LBB2_67
# BB#49:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	testb	$1, 41(%rax)
	jne	.LBB2_51
# BB#50:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$13, %eax
	jae	.LBB2_54
.LBB2_51:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -160(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -160(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_67
# BB#52:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_67
# BB#53:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-112(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$8, %edi
	movl	$41, %esi
	movl	$.L.str.49, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_67
.LBB2_54:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$78, %eax
	jne	.LBB2_56
# BB#55:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -160(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
.LBB2_66:                               #   in Loop: Header=BB2_37 Depth=1
	movq	%rax, -160(%rbp)
	jmp	.LBB2_67
.LBB2_56:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_67
# BB#57:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jl	.LBB2_67
# BB#58:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jg	.LBB2_67
# BB#59:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	ParameterCheck
	movq	%rax, -168(%rbp)
	testq	%rax, %rax
	je	.LBB2_67
# BB#60:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_62
# BB#61:                                #   in Loop: Header=BB2_37 Depth=1
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
.LBB2_62:                               #   in Loop: Header=BB2_37 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_65
# BB#63:                                #   in Loop: Header=BB2_37 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_65
# BB#64:                                #   in Loop: Header=BB2_37 Depth=1
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
.LBB2_65:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rdi
	callq	DisposeObject
	movq	-168(%rbp), %rax
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_67:                               #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_70
# BB#68:                                #   in Loop: Header=BB2_37 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_70
# BB#69:                                #   in Loop: Header=BB2_37 Depth=1
	movl	$0, -180(%rbp)
	jmp	.LBB2_70
.LBB2_71:
	cmpl	$0, -180(%rbp)
	je	.LBB2_102
# BB#72:
	movq	-128(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB2_102
# BB#73:
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB2_102
# BB#74:
	movq	-40(%rbp), %rdi
	movq	-128(%rbp), %rax
	movq	48(%rax), %rsi
	callq	SearchEnv
	movq	%rax, -112(%rbp)
	testq	%rax, %rax
	je	.LBB2_102
# BB#75:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB2_102
# BB#76:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_77
	.align	16, 0x90
.LBB2_78:                               #   in Loop: Header=BB2_77 Depth=1
	movq	-208(%rbp), %rax
.LBB2_77:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -208(%rbp)
	movq	-208(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_78
# BB#79:
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB2_81
# BB#80:
	movq	stderr(%rip), %rbx
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %rcx
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
.LBB2_81:
	movq	-208(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB2_83
# BB#82:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_83:
	movq	-208(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB2_84
# BB#85:
	movq	-112(%rbp), %rdi
	xorl	%esi, %esi
	callq	SetEnv
	jmp	.LBB2_86
.LBB2_102:
	movq	$0, -152(%rbp)
.LBB2_103:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB2_129
# BB#104:
	cmpl	$0, -88(%rbp)
	je	.LBB2_105
.LBB2_129:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB2_130
# BB#131:
	cmpl	$0, -88(%rbp)
	jne	.LBB2_139
# BB#132:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$20, %eax
	jae	.LBB2_134
# BB#133:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB2_139
.LBB2_134:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jb	.LBB2_136
# BB#135:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB2_139
.LBB2_136:
	movq	-128(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jae	.LBB2_175
# BB#137:
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_175
# BB#138:
	movq	-128(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	callq	SearchUses
	testl	%eax, %eax
	jne	.LBB2_139
.LBB2_175:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AttachEnv
	jmp	.LBB2_176
.LBB2_3:
	movq	-32(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_5
# BB#4:
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
.LBB2_5:
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_8
# BB#6:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_8
# BB#7:
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
.LBB2_8:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_9 Depth=1
	movq	-192(%rbp), %rax
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_10
# BB#11:
	movq	-192(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_12 Depth=1
	movq	-200(%rbp), %rax
.LBB2_12:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_13
# BB#14:
	movq	-200(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_16
# BB#15:
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
.LBB2_16:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_18
# BB#17:
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
.LBB2_18:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_20
# BB#19:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_21
.LBB2_20:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_22
.LBB2_130:
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.LBB2_139:
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-80(%rbp), %rcx
	leaq	-136(%rbp), %r8
	movl	$1, %edx
	callq	ClosureExpand
	movq	%rax, -32(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_141
# BB#140:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_144
.LBB2_141:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_142
# BB#143:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_144
.LBB2_105:
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_107
# BB#106:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_110
.LBB2_21:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_22:
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
	jne	.LBB2_24
# BB#23:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB2_24:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_26
# BB#25:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_29
.LBB2_26:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_27
# BB#28:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_29
.LBB2_142:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_144:
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_146
# BB#145:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_149
.LBB2_146:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_147
# BB#148:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_149
.LBB2_147:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_149:
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
	je	.LBB2_152
# BB#150:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_152
# BB#151:
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
.LBB2_152:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_155
# BB#153:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_155
# BB#154:
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
.LBB2_155:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	jne	.LBB2_174
# BB#156:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	je	.LBB2_158
# BB#157:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_158:
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB2_160
# BB#159:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_160:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_162
# BB#161:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_165
.LBB2_162:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_163
# BB#164:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_165
.LBB2_107:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_108
# BB#109:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_110
.LBB2_27:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_29:
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
	je	.LBB2_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_32
# BB#31:
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
.LBB2_32:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_35
# BB#33:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_35
# BB#34:
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
.LBB2_35:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-84(%rbp), %r11d
	movq	-96(%rbp), %rax
	movl	-100(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -32(%rbp)
	jmp	.LBB2_186
.LBB2_163:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_165:
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
	movq	%rax, -176(%rbp)
	movq	-32(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-176(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-176(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-128(%rbp), %rax
	movq	48(%rax), %rax
	movq	104(%rax), %rax
	movq	-176(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-32(%rbp), %rdi
	callq	FilterSetFileNames
	movq	-176(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -176(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -176(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_168
# BB#166:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_168
# BB#167:
	movq	-176(%rbp), %rbx
	addq	$32, %rbx
	movq	-128(%rbp), %rax
	movq	48(%rax), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$8, %edi
	movl	$19, %esi
	movl	$.L.str.54, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB2_168:
	movq	-32(%rbp), %rdi
	movq	-176(%rbp), %rsi
	addq	$64, %rsi
	movq	-136(%rbp), %rdx
	callq	FilterExecute
	movq	%rax, -112(%rbp)
	movq	-176(%rbp), %rdi
	callq	DisposeObject
	movq	-32(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_170
# BB#169:
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
.LBB2_170:
	movq	%rax, xx_tmp(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_173
# BB#171:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_173
# BB#172:
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
.LBB2_173:
	movq	-32(%rbp), %rdi
	callq	DisposeObject
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_174:
	movq	-32(%rbp), %rdi
	movq	-136(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-84(%rbp), %r11d
	movq	-96(%rbp), %rax
	movl	-100(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -32(%rbp)
	movq	-144(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB2_183
.LBB2_108:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_110:
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
	movq	%rax, -216(%rbp)
	movq	-32(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-216(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-216(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-128(%rbp), %rax
	movq	-216(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-216(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-216(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-216(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-128(%rbp), %rax
	movzbl	43(%rax), %eax
	movq	-216(%rbp), %rcx
	movzwl	42(%rcx), %edx
	andl	$32, %eax
	shll	$3, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-216(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-216(%rbp), %rax
	orw	$128, 42(%rax)
	movq	-216(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-32(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB2_112
# BB#111:
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
.LBB2_112:
	movq	%rax, xx_tmp(%rip)
	movq	-216(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_115
# BB#113:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_115
# BB#114:
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
.LBB2_115:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_117
# BB#116:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_120
.LBB2_117:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_118
# BB#119:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_120
.LBB2_118:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_120:
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
	movq	-216(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_123
# BB#121:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_123
# BB#122:
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
.LBB2_123:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_126
# BB#124:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_126
# BB#125:
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
.LBB2_126:
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	AttachEnv
	movq	-216(%rbp), %rdi
	callq	SetTarget
	movq	-128(%rbp), %rcx
	xorl	%eax, %eax
	movzbl	126(%rcx), %ecx
	btl	$5, %ecx
	jae	.LBB2_128
# BB#127:
	movq	-216(%rbp), %rdi
	callq	BuildEnclose
.LBB2_128:
	movq	-216(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-216(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-216(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-216(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_176:
	movq	-56(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, (%rcx)
	jne	.LBB2_178
# BB#177:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
.LBB2_178:
	movq	-32(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$2, %eax
	andl	$65531, %edx            # imm = 0xFFFB
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_182
# BB#179:
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB2_182
# BB#180:
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB2_182
# BB#181:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_183
.LBB2_182:
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	insert_split
	movq	%rax, -32(%rbp)
.LBB2_183:
	cmpq	$0, -152(%rbp)
	je	.LBB2_185
# BB#184:
	movq	-152(%rbp), %rdi
	callq	DisposeObject
.LBB2_185:
	movq	-32(%rbp), %rax
.LBB2_186:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$240, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_84:
	movq	-208(%rbp), %rax
.LBB2_86:
	movq	%rax, -40(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_88
# BB#87:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_91
.LBB2_88:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_89
# BB#90:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_91
.LBB2_89:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_91:
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
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_93
# BB#92:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_96
.LBB2_93:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_94
# BB#95:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_96
.LBB2_94:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_96:
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
	je	.LBB2_99
# BB#97:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_99
# BB#98:
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
.LBB2_99:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_103
# BB#100:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_103
# BB#101:
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
	jmp	.LBB2_103
.Lfunc_end2:
	.size	ManifestCl, .Lfunc_end2-ManifestCl
	.cfi_endproc

	.align	16, 0x90
	.type	insert_split,@function
insert_split:                           # @insert_split
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp23:
	.cfi_offset %rbx, -40
.Ltmp24:
	.cfi_offset %r14, -32
.Ltmp25:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.55, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movzbl	zz_lengths+9(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_7
.LBB3_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_7
.LBB3_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_7:
	movq	zz_hold(%rip), %rax
	movb	$9, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-32(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-32(%rbp), %rax
	andl	36(%rax), %esi
	movq	-56(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-32(%rbp), %rcx
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
	movq	-56(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_12
# BB#10:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_12
# BB#11:
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
.LBB3_12:
	movl	$0, -68(%rbp)
	movb	$1, %bl
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_81:                               #   in Loop: Header=BB3_13 Depth=1
	incl	-68(%rbp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1, -68(%rbp)
	jg	.LBB3_82
# BB#14:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB3_16
# BB#15:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_69
.LBB3_16:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$16, %eax
	cmpl	$0, -68(%rbp)
	je	.LBB3_18
# BB#17:                                # %select.mid
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$15, %eax
.LBB3_18:                               # %select.end
                                        #   in Loop: Header=BB3_13 Depth=1
	cltq
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_20
# BB#19:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_23
	.align	16, 0x90
.LBB3_20:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_21
# BB#22:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_23
.LBB3_21:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_23:                               #   in Loop: Header=BB3_13 Depth=1
	movl	$16, %eax
	cmpl	$0, -68(%rbp)
	je	.LBB3_25
# BB#24:                                # %select.mid2
                                        #   in Loop: Header=BB3_13 Depth=1
	movl	$15, %eax
.LBB3_25:                               # %select.end1
                                        #   in Loop: Header=BB3_13 Depth=1
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
	movq	%rax, -64(%rbp)
	movb	$0, 41(%rax)
	movslq	-68(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	$0, 56(%rax,%rcx,4)
	movslq	-68(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-64(%rbp), %rax
	movl	$0, 48(%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movw	34(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-64(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-32(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-64(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_27
# BB#26:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_30
	.align	16, 0x90
.LBB3_27:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_28
# BB#29:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_30
.LBB3_28:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_30:                               #   in Loop: Header=BB3_13 Depth=1
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
	je	.LBB3_33
# BB#31:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_33
# BB#32:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_33:                               #   in Loop: Header=BB3_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_36
# BB#34:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_36
# BB#35:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_36:                               #   in Loop: Header=BB3_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_38
# BB#37:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_41
	.align	16, 0x90
.LBB3_38:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_39
# BB#40:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_41
.LBB3_39:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_41:                               #   in Loop: Header=BB3_13 Depth=1
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
	je	.LBB3_44
# BB#42:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_44
# BB#43:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_44:                               #   in Loop: Header=BB3_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_47
# BB#45:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_47
# BB#46:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_47:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_59
# BB#48:                                #   in Loop: Header=BB3_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_50
# BB#49:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_53
	.align	16, 0x90
.LBB3_50:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_51
# BB#52:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_53
.LBB3_69:                               #   in Loop: Header=BB3_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_71
# BB#70:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_74
.LBB3_51:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_53:                               #   in Loop: Header=BB3_13 Depth=1
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
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_56
# BB#54:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_56
# BB#55:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_56:                               #   in Loop: Header=BB3_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_59
# BB#57:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_59
# BB#58:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_59:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB3_81
# BB#60:                                #   in Loop: Header=BB3_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_62
# BB#61:                                #   in Loop: Header=BB3_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_65
	.align	16, 0x90
.LBB3_62:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_63
# BB#64:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_65
.LBB3_63:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_65:                               #   in Loop: Header=BB3_13 Depth=1
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
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_68
# BB#66:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_68
# BB#67:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_68:                               #   in Loop: Header=BB3_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	jmp	.LBB3_78
.LBB3_71:                               #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_72
# BB#73:                                #   in Loop: Header=BB3_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_74
.LBB3_72:                               #   in Loop: Header=BB3_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_74:                               #   in Loop: Header=BB3_13 Depth=1
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
	je	.LBB3_77
# BB#75:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_77
# BB#76:                                #   in Loop: Header=BB3_13 Depth=1
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
.LBB3_77:                               #   in Loop: Header=BB3_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
.LBB3_78:                               #   in Loop: Header=BB3_13 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_81
# BB#79:                                #   in Loop: Header=BB3_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_81
# BB#80:                                #   in Loop: Header=BB3_13 Depth=1
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
	jmp	.LBB3_81
.LBB3_82:
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	insert_split, .Lfunc_end3-insert_split
	.cfi_endproc

	.align	16, 0x90
	.type	ManifestCat,@function
ManifestCat:                            # @ManifestCat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp29:
	.cfi_offset %rbx, -32
.Ltmp30:
	.cfi_offset %r14, -24
	movl	48(%rbp), %r10d
	movq	40(%rbp), %r11
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	movq	%rax, -72(%rbp)
	movl	%ebx, -76(%rbp)
	movl	%r14d, -80(%rbp)
	movq	%r11, -88(%rbp)
	movl	%r10d, -92(%rbp)
	movq	-40(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-216(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -216(%rbp)
	movq	-40(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -214(%rbp)
	movq	-40(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-212(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -212(%rbp)
	movq	-40(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -212(%rbp)
	movq	-40(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -212(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	movb	-216(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -216(%rbp)
	movq	-40(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-212(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -212(%rbp)
	movq	-40(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -212(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -212(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -212(%rbp)
	movq	-40(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -212(%rbp)
	movq	-40(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -210(%rbp)
	movq	-40(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-204(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -204(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-216(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -216(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -216(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -216(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -216(%rbp)
	movq	-40(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -208(%rbp)
	movq	-40(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -206(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$18, %eax
	jne	.LBB4_2
# BB#1:
	movl	$1, -188(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	shrb	%al
	andb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	andb	$-3, -216(%rbp)
	jmp	.LBB4_3
.LBB4_2:
	movl	$0, -188(%rbp)
	movq	-40(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-24(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	andb	$-2, -216(%rbp)
.LBB4_3:
	movl	$1, %eax
	subl	-188(%rbp), %eax
	movl	%eax, -192(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-144(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB4_5
# BB#4:
	movq	-152(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB4_6
.LBB4_5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_6:
	movq	-144(%rbp), %rax
	jmp	.LBB4_7
	.align	16, 0x90
.LBB4_8:                                #   in Loop: Header=BB4_7 Depth=1
	movq	-136(%rbp), %rax
.LBB4_7:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_8
# BB#9:
	movq	-152(%rbp), %rax
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_10 Depth=1
	movq	-160(%rbp), %rax
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_11
# BB#12:
	movslq	-192(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -112(%rbp,%rax,8)
	movslq	-192(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -128(%rbp,%rax,8)
	movslq	-188(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_19
# BB#13:
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_15
# BB#14:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_18
.LBB4_19:
	movq	$0, -168(%rbp)
	jmp	.LBB4_20
.LBB4_15:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_16
# BB#17:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_18
.LBB4_16:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB4_18:
	movq	zz_hold(%rip), %rax
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -168(%rbp)
.LBB4_20:
	movq	-168(%rbp), %rax
	movslq	-188(%rbp), %rcx
	movq	%rax, -112(%rbp,%rcx,8)
	movq	-160(%rbp), %rax
	btl	$9, 44(%rax)
	jae	.LBB4_27
# BB#21:
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_26
.LBB4_27:
	movslq	-188(%rbp), %rax
	movq	$0, -128(%rbp,%rax,8)
	jmp	.LBB4_28
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
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movslq	-188(%rbp), %rcx
	movq	%rax, -128(%rbp,%rcx,8)
.LBB4_28:
	cmpq	$0, -168(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -200(%rbp)
	movq	-136(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movl	-92(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-216(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-128(%rbp), %r8
	callq	Manifest
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB4_41
# BB#29:
	cmpl	$0, -76(%rbp)
	je	.LBB4_41
# BB#30:
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_41
# BB#31:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -224(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-224(%rbp), %rax
	cmpq	-232(%rbp), %rax
	je	.LBB4_40
# BB#32:
	movq	-224(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_34
# BB#33:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_34:
	movq	-224(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-232(%rbp), %rax
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
	movq	-224(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_40
# BB#38:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_40
# BB#39:
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
.LBB4_40:
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB4_41
	.align	16, 0x90
.LBB4_181:                              #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -200(%rbp)
.LBB4_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_47 Depth 2
                                        #     Child Loop BB4_76 Depth 2
                                        #     Child Loop BB4_84 Depth 2
                                        #     Child Loop BB4_124 Depth 2
                                        #     Child Loop BB4_127 Depth 2
                                        #     Child Loop BB4_131 Depth 2
                                        #       Child Loop BB4_136 Depth 3
                                        #       Child Loop BB4_139 Depth 3
	cmpq	$0, -160(%rbp)
	je	.LBB4_182
# BB#42:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB4_44
# BB#43:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_44:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-160(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_46
# BB#45:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.58, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_46:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-160(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_47
	.align	16, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_47 Depth=2
	movq	-184(%rbp), %rax
.LBB4_47:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_48
# BB#49:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-184(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	-92(%rbp), %edx
	movl	%edx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	-216(%rbp), %rdx
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -184(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -184(%rbp)
	movq	-40(%rbp), %rsi
	movq	-160(%rbp), %rdx
	addq	$44, %rdx
	leaq	-196(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movslq	-192(%rbp), %rax
	cmpq	$0, -112(%rbp,%rax,8)
	je	.LBB4_61
# BB#50:                                #   in Loop: Header=BB4_41 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_52
# BB#51:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_55
	.align	16, 0x90
.LBB4_52:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_53
# BB#54:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_55
.LBB4_53:                               #   in Loop: Header=BB4_41 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB4_55:                               #   in Loop: Header=BB4_41 Depth=1
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
	movslq	-192(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_58
# BB#56:                                #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_58
# BB#57:                                #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_58:                               #   in Loop: Header=BB4_41 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-160(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_61
# BB#59:                                #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_61
# BB#60:                                #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_61:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-192(%rbp), %rax
	cmpq	$0, -128(%rbp,%rax,8)
	je	.LBB4_73
# BB#62:                                #   in Loop: Header=BB4_41 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_64
# BB#63:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_67
	.align	16, 0x90
.LBB4_64:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_65
# BB#66:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_67
.LBB4_65:                               #   in Loop: Header=BB4_41 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB4_67:                               #   in Loop: Header=BB4_41 Depth=1
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
	movslq	-192(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_70
# BB#68:                                #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_70
# BB#69:                                #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_70:                               #   in Loop: Header=BB4_41 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-160(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_73
# BB#71:                                #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_73
# BB#72:                                #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_73:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
	cmpq	-24(%rbp), %rax
	jne	.LBB4_75
# BB#74:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.59, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_75:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-144(%rbp), %rax
	jmp	.LBB4_76
	.align	16, 0x90
.LBB4_77:                               #   in Loop: Header=BB4_76 Depth=2
	movq	-136(%rbp), %rax
.LBB4_76:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_77
# BB#78:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	cmpq	-24(%rbp), %rax
	je	.LBB4_79
# BB#83:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-152(%rbp), %rax
	jmp	.LBB4_84
	.align	16, 0x90
.LBB4_85:                               #   in Loop: Header=BB4_84 Depth=2
	movq	-160(%rbp), %rax
.LBB4_84:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_85
	jmp	.LBB4_80
	.align	16, 0x90
.LBB4_79:                               #   in Loop: Header=BB4_41 Depth=1
	movq	$0, -160(%rbp)
.LBB4_80:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, -176(%rbp)
	movslq	-188(%rbp), %rax
	cmpq	$0, -128(%rbp,%rax,8)
	je	.LBB4_90
# BB#81:                                #   in Loop: Header=BB4_41 Depth=1
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_86
# BB#82:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_89
	.align	16, 0x90
.LBB4_90:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	$0, -112(%rbp,%rax,8)
	jmp	.LBB4_91
	.align	16, 0x90
.LBB4_86:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_87
# BB#88:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_89
.LBB4_87:                               #   in Loop: Header=BB4_41 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB4_89:                               #   in Loop: Header=BB4_41 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movslq	-188(%rbp), %rcx
	movq	%rax, -112(%rbp,%rcx,8)
.LBB4_91:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, -160(%rbp)
	je	.LBB4_99
# BB#92:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-160(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB4_93
	jmp	.LBB4_100
	.align	16, 0x90
.LBB4_99:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_100
.LBB4_93:                               #   in Loop: Header=BB4_41 Depth=1
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB4_95
# BB#94:                                #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_98
	.align	16, 0x90
.LBB4_100:                              #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	$0, -128(%rbp,%rax,8)
	jmp	.LBB4_101
	.align	16, 0x90
.LBB4_95:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB4_96
# BB#97:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB4_98
.LBB4_96:                               #   in Loop: Header=BB4_41 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB4_98:                               #   in Loop: Header=BB4_41 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$-117, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movslq	-188(%rbp), %rcx
	movq	%rax, -128(%rbp,%rcx,8)
.LBB4_101:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-136(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-64(%rbp), %r9
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	movq	-88(%rbp), %rdx
	movl	-92(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-216(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-128(%rbp), %r8
	callq	Manifest
	movq	%rax, -136(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB4_114
# BB#102:                               #   in Loop: Header=BB4_41 Depth=1
	cmpl	$0, -76(%rbp)
	je	.LBB4_114
# BB#103:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB4_114
# BB#104:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -264(%rbp)
	movq	-248(%rbp), %rax
	cmpq	-256(%rbp), %rax
	je	.LBB4_113
# BB#105:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-248(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_107
# BB#106:                               #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_107:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_110
# BB#108:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_110
# BB#109:                               #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_110:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-248(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-264(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_113
# BB#111:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_113
# BB#112:                               #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_113:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	.align	16, 0x90
.LBB4_114:                              #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	cmpq	$0, -112(%rbp,%rax,8)
	je	.LBB4_181
# BB#115:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_117
# BB#116:                               #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.60, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_117:                              #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, -176(%rbp)
	je	.LBB4_119
# BB#118:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-176(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_120
.LBB4_119:                              #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_120:                              #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -300(%rbp)
	movslq	-188(%rbp), %rax
	cmpq	$0, -128(%rbp,%rax,8)
	je	.LBB4_130
# BB#121:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_123
# BB#122:                               #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.62, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_123:                              #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	(%rax), %rax
	jmp	.LBB4_124
	.align	16, 0x90
.LBB4_125:                              #   in Loop: Header=BB4_124 Depth=2
	movq	-288(%rbp), %rax
.LBB4_124:                              #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_125
# BB#126:                               #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	(%rax), %rax
	jmp	.LBB4_127
	.align	16, 0x90
.LBB4_128:                              #   in Loop: Header=BB4_127 Depth=2
	movq	-296(%rbp), %rax
.LBB4_127:                              #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_128
# BB#129:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-288(%rbp), %rax
	cmpq	-296(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -300(%rbp)
.LBB4_130:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)
	movslq	-188(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	jmp	.LBB4_131
	.align	16, 0x90
.LBB4_157:                              #   in Loop: Header=BB4_131 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-272(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-280(%rbp), %rax
.LBB4_131:                              #   Parent Loop BB4_41 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_136 Depth 3
                                        #       Child Loop BB4_139 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-272(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.LBB4_132
# BB#133:                               #   in Loop: Header=BB4_131 Depth=2
	movq	-280(%rbp), %rax
	movslq	-188(%rbp), %rcx
	cmpq	-112(%rbp,%rcx,8), %rax
	setne	%al
	jmp	.LBB4_134
	.align	16, 0x90
.LBB4_132:                              #   in Loop: Header=BB4_131 Depth=2
	xorl	%eax, %eax
.LBB4_134:                              #   in Loop: Header=BB4_131 Depth=2
	testb	%al, %al
	je	.LBB4_158
# BB#135:                               #   in Loop: Header=BB4_131 Depth=2
	movq	-272(%rbp), %rax
	jmp	.LBB4_136
	.align	16, 0x90
.LBB4_137:                              #   in Loop: Header=BB4_136 Depth=3
	movq	-288(%rbp), %rax
.LBB4_136:                              #   Parent Loop BB4_41 Depth=1
                                        #     Parent Loop BB4_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -288(%rbp)
	movq	-288(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_137
# BB#138:                               #   in Loop: Header=BB4_131 Depth=2
	movq	-280(%rbp), %rax
	jmp	.LBB4_139
	.align	16, 0x90
.LBB4_140:                              #   in Loop: Header=BB4_139 Depth=3
	movq	-296(%rbp), %rax
.LBB4_139:                              #   Parent Loop BB4_41 Depth=1
                                        #     Parent Loop BB4_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-296(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_140
# BB#141:                               #   in Loop: Header=BB4_131 Depth=2
	movq	-288(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jne	.LBB4_143
# BB#142:                               #   in Loop: Header=BB4_131 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.63, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_143:                              #   in Loop: Header=BB4_131 Depth=2
	movq	-288(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-296(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB4_145
# BB#144:                               #   in Loop: Header=BB4_131 Depth=2
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
.LBB4_145:                              #   in Loop: Header=BB4_131 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_148
# BB#146:                               #   in Loop: Header=BB4_131 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_148
# BB#147:                               #   in Loop: Header=BB4_131 Depth=2
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
.LBB4_148:                              #   in Loop: Header=BB4_131 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	movl	$0, %eax
	je	.LBB4_150
# BB#149:                               #   in Loop: Header=BB4_131 Depth=2
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
.LBB4_150:                              #   in Loop: Header=BB4_131 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_153
# BB#151:                               #   in Loop: Header=BB4_131 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB4_153
# BB#152:                               #   in Loop: Header=BB4_131 Depth=2
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
.LBB4_153:                              #   in Loop: Header=BB4_131 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_155
# BB#154:                               #   in Loop: Header=BB4_131 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_156
.LBB4_155:                              #   in Loop: Header=BB4_131 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_157
	.align	16, 0x90
.LBB4_156:                              #   in Loop: Header=BB4_131 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB4_157
	.align	16, 0x90
.LBB4_158:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-280(%rbp), %rax
	movslq	-188(%rbp), %rcx
	cmpq	-112(%rbp,%rcx,8), %rax
	je	.LBB4_169
# BB#159:                               #   in Loop: Header=BB4_41 Depth=1
	cmpl	$0, -200(%rbp)
	je	.LBB4_169
# BB#160:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-280(%rbp), %rax
	movq	%rax, -312(%rbp)
	movslq	-188(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rax
	movq	%rax, -320(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -328(%rbp)
	movq	-312(%rbp), %rax
	cmpq	-320(%rbp), %rax
	je	.LBB4_169
# BB#161:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-312(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_163
# BB#162:                               #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_163:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-312(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-320(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_166
# BB#164:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_166
# BB#165:                               #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_166:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-312(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-328(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_169
# BB#167:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_169
# BB#168:                               #   in Loop: Header=BB4_41 Depth=1
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
	.align	16, 0x90
.LBB4_169:                              #   in Loop: Header=BB4_41 Depth=1
	movslq	-188(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rdi
	callq	DisposeObject
	movq	-272(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.LBB4_180
# BB#170:                               #   in Loop: Header=BB4_41 Depth=1
	cmpl	$0, -300(%rbp)
	je	.LBB4_180
# BB#171:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-272(%rbp), %rax
	movq	%rax, -336(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -344(%rbp)
	movslq	-188(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rax
	movq	%rax, -352(%rbp)
	movq	-336(%rbp), %rax
	cmpq	-344(%rbp), %rax
	je	.LBB4_180
# BB#172:                               #   in Loop: Header=BB4_41 Depth=1
	movq	-336(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_174
# BB#173:                               #   in Loop: Header=BB4_41 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_174:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-344(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_177
# BB#175:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_177
# BB#176:                               #   in Loop: Header=BB4_41 Depth=1
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
.LBB4_177:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-352(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_180
# BB#178:                               #   in Loop: Header=BB4_41 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB4_180
# BB#179:                               #   in Loop: Header=BB4_41 Depth=1
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
	.align	16, 0x90
.LBB4_180:                              #   in Loop: Header=BB4_41 Depth=1
	movq	-176(%rbp), %rdi
	callq	DisposeObject
	cmpl	$0, -300(%rbp)
	jne	.LBB4_41
	jmp	.LBB4_181
.LBB4_182:
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_198
# BB#183:
	movslq	-188(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, xx_res(%rip)
	movslq	-188(%rbp), %rax
	movq	-128(%rbp,%rax,8), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_185
# BB#184:
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
.LBB4_185:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_188
# BB#186:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_188
# BB#187:
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
.LBB4_188:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB4_190
# BB#189:
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
.LBB4_190:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_193
# BB#191:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_193
# BB#192:
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
.LBB4_193:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_195
# BB#194:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_196
.LBB4_195:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_197
.LBB4_196:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_197:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_198:
	movslq	-188(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_214
# BB#199:
	movslq	-188(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, xx_res(%rip)
	movq	-168(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB4_201
# BB#200:
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
.LBB4_201:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_204
# BB#202:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_204
# BB#203:
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
.LBB4_204:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB4_206
# BB#205:
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
.LBB4_206:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_209
# BB#207:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_209
# BB#208:
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
.LBB4_209:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_211
# BB#210:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_212
.LBB4_211:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_213
.LBB4_212:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_213:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_214:
	movq	-24(%rbp), %rax
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ManifestCat, .Lfunc_end4-ManifestCat
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI5_1:
	.long	1120403456              # float 100
	.text
	.align	16, 0x90
	.type	GetScaleFactor,@function
GetScaleFactor:                         # @GetScaleFactor
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
	movzbl	32(%rdi), %eax
	cmpl	$11, %eax
	je	.LBB5_3
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_2
.LBB5_3:
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	leaq	-12(%rbp), %rdx
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB5_5
# BB#4:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$4, %esi
	movl	$.L.str.66, %edx
	jmp	.LBB5_9
.LBB5_5:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI5_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB5_7
# BB#6:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$5, %esi
	movl	$.L.str.67, %edx
	jmp	.LBB5_9
.LBB5_2:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$3, %esi
	movl	$.L.str.64, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_10
.LBB5_7:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI5_1(%rip), %xmm0
	jbe	.LBB5_11
# BB#8:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$6, %esi
	movl	$.L.str.68, %edx
.LBB5_9:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_10:
	movl	$1065353216, -12(%rbp)  # imm = 0x3F800000
.LBB5_11:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	GetScaleFactor, .Lfunc_end5-GetScaleFactor
	.cfi_endproc

	.align	16, 0x90
	.type	ManifestCase,@function
ManifestCase:                           # @ManifestCase
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
	movl	48(%rbp), %r10d
	movq	40(%rbp), %r11
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movq	%r11, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-120(%rbp), %rax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_2
# BB#3:
	movq	-120(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -120(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -120(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_4
	.align	16, 0x90
.LBB6_5:                                #   in Loop: Header=BB6_4 Depth=1
	movq	-112(%rbp), %rax
.LBB6_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_5
# BB#6:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB6_29
# BB#7:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_12
.LBB6_9:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_10
# BB#11:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_12
.LBB6_10:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_12:
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
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_14
# BB#13:
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
.LBB6_14:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_17
# BB#15:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_17
# BB#16:
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
.LBB6_17:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_22
.LBB6_19:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_20
# BB#21:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_22
.LBB6_20:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_22:
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
	je	.LBB6_25
# BB#23:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_25
# BB#24:
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
.LBB6_25:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_28
# BB#26:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_28
# BB#27:
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
.LBB6_28:
	movq	-168(%rbp), %rax
	movq	%rax, -112(%rbp)
.LBB6_29:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB6_37
# BB#30:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$7, %esi
	movl	$.L.str.69, %edx
.LBB6_31:
	movl	$2, %ecx
	movl	$.L.str.70, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_33
# BB#32:
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
.LBB6_33:
	movq	%rbx, xx_tmp(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_36
# BB#34:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_36
# BB#35:
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
.LBB6_36:
	movq	-32(%rbp), %rdi
	callq	DisposeObject
	movq	-112(%rbp), %rdi
	jmp	.LBB6_107
.LBB6_37:
	movq	$0, -160(%rbp)
	movq	$0, -176(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB6_38
	.align	16, 0x90
.LBB6_98:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-128(%rbp), %rax
.LBB6_38:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
                                        #     Child Loop BB6_59 Depth 2
                                        #     Child Loop BB6_76 Depth 2
                                        #       Child Loop BB6_78 Depth 3
                                        #       Child Loop BB6_86 Depth 3
                                        #     Child Loop BB6_93 Depth 2
                                        #     Child Loop BB6_65 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB6_39
# BB#40:                                #   in Loop: Header=BB6_38 Depth=1
	cmpq	$0, -160(%rbp)
	sete	%al
	jmp	.LBB6_41
	.align	16, 0x90
.LBB6_39:                               #   in Loop: Header=BB6_38 Depth=1
	xorl	%eax, %eax
.LBB6_41:                               #   in Loop: Header=BB6_38 Depth=1
	testb	%al, %al
	je	.LBB6_48
# BB#42:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-128(%rbp), %rax
	jmp	.LBB6_43
	.align	16, 0x90
.LBB6_44:                               #   in Loop: Header=BB6_43 Depth=2
	movq	-136(%rbp), %rax
.LBB6_43:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_44
# BB#45:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB6_98
# BB#46:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB6_47
# BB#58:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_59
	.align	16, 0x90
.LBB6_60:                               #   in Loop: Header=BB6_59 Depth=2
	movq	-144(%rbp), %rax
.LBB6_59:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_60
# BB#61:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -144(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -144(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_63
# BB#62:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_74
.LBB6_63:                               #   in Loop: Header=BB6_38 Depth=1
	cmpq	$0, -176(%rbp)
	jne	.LBB6_67
# BB#64:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_65
	.align	16, 0x90
.LBB6_66:                               #   in Loop: Header=BB6_65 Depth=2
	movq	-184(%rbp), %rax
.LBB6_65:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_66
.LBB6_67:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_69
# BB#68:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_70
.LBB6_69:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rdi
	addq	$64, %rdi
	movq	-120(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB6_71
.LBB6_70:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.72, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_98
	jmp	.LBB6_71
.LBB6_74:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB6_96
# BB#75:                                #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, -168(%rbp)
	jmp	.LBB6_76
	.align	16, 0x90
.LBB6_95:                               #   in Loop: Header=BB6_76 Depth=2
	movq	-152(%rbp), %rax
.LBB6_76:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_78 Depth 3
                                        #       Child Loop BB6_86 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-168(%rbp), %rax
	je	.LBB6_98
# BB#77:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-152(%rbp), %rax
	jmp	.LBB6_78
	.align	16, 0x90
.LBB6_79:                               #   in Loop: Header=BB6_78 Depth=3
	movq	-144(%rbp), %rax
.LBB6_78:                               #   Parent Loop BB6_38 Depth=1
                                        #     Parent Loop BB6_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_79
# BB#80:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB6_95
# BB#81:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_84
# BB#82:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_83
.LBB6_84:                               #   in Loop: Header=BB6_76 Depth=2
	cmpq	$0, -176(%rbp)
	jne	.LBB6_88
# BB#85:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_86
	.align	16, 0x90
.LBB6_87:                               #   in Loop: Header=BB6_86 Depth=3
	movq	-184(%rbp), %rax
.LBB6_86:                               #   Parent Loop BB6_38 Depth=1
                                        #     Parent Loop BB6_76 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_87
.LBB6_88:                               #   in Loop: Header=BB6_76 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_90
# BB#89:                                #   in Loop: Header=BB6_76 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_91
.LBB6_90:                               #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rdi
	addq	$64, %rdi
	movq	-120(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB6_92
.LBB6_91:                               #   in Loop: Header=BB6_76 Depth=2
	movq	-144(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.72, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB6_95
.LBB6_92:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_93
	.align	16, 0x90
.LBB6_94:                               #   in Loop: Header=BB6_93 Depth=2
	movq	-160(%rbp), %rax
.LBB6_93:                               #   Parent Loop BB6_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_94
	jmp	.LBB6_98
.LBB6_96:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$10, %esi
.LBB6_97:                               #   in Loop: Header=BB6_38 Depth=1
	movl	$.L.str.73, %edx
	movl	$2, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_98
.LBB6_83:                               #   in Loop: Header=BB6_38 Depth=1
	movq	-144(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$9, %esi
	jmp	.LBB6_97
.LBB6_71:
	movq	-136(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB6_72
	.align	16, 0x90
.LBB6_73:                               #   in Loop: Header=BB6_72 Depth=1
	movq	-160(%rbp), %rax
.LBB6_72:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_73
	jmp	.LBB6_48
.LBB6_47:
	movq	-136(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$8, %esi
	movl	$.L.str.71, %edx
	movl	$2, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_48:
	cmpq	$0, -160(%rbp)
	jne	.LBB6_51
# BB#49:
	cmpq	$0, -176(%rbp)
	je	.LBB6_99
# BB#50:
	movq	-120(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	-176(%rbp), %rcx
	addq	$64, %rcx
	movq	%rcx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$8, %edi
	movl	$11, %esi
	movl	$.L.str.74, %edx
	movl	$2, %ecx
	movl	$.L.str.70, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-184(%rbp), %rax
	movq	%rax, -160(%rbp)
.LBB6_51:
	movq	-160(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB6_53
# BB#52:
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
.LBB6_53:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB6_55
# BB#54:
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
.LBB6_55:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB6_57
# BB#56:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB6_100
.LBB6_57:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB6_101
.LBB6_100:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB6_101:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-32(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB6_103
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
.LBB6_103:
	movq	%rax, xx_tmp(%rip)
	movq	-160(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_106
# BB#104:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_106
# BB#105:
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
.LBB6_106:
	movq	-32(%rbp), %rdi
	callq	DisposeObject
	movq	-160(%rbp), %rdi
.LBB6_107:
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-84(%rbp), %r11d
	movq	-96(%rbp), %rax
	movl	-100(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -32(%rbp)
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_99:
	movq	-120(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$12, %esi
	movl	$.L.str.75, %edx
	jmp	.LBB6_31
.Lfunc_end6:
	.size	ManifestCase, .Lfunc_end6-ManifestCase
	.cfi_endproc

	.align	16, 0x90
	.type	SetUnderline,@function
SetUnderline:                           # @SetUnderline
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$17, %eax
	jne	.LBB7_7
# BB#1:
	movq	-8(%rbp), %rax
	jmp	.LBB7_2
	.align	16, 0x90
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	SetUnderline
	movq	-24(%rbp), %rax
.LBB7_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB7_7
# BB#3:                                 #   in Loop: Header=BB7_2 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=2
	movq	-16(%rbp), %rax
.LBB7_4:                                #   Parent Loop BB7_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_5
	jmp	.LBB7_6
.LBB7_7:
	movq	-8(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$1073741824, %ecx       # imm = 0x40000000
	movl	%ecx, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	SetUnderline, .Lfunc_end7-SetUnderline
	.cfi_endproc

	.align	16, 0x90
	.type	ManifestTg,@function
ManifestTg:                             # @ManifestTg
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
	pushq	%r14
	pushq	%rbx
	subq	$160, %rsp
.Ltmp45:
	.cfi_offset %rbx, -32
.Ltmp46:
	.cfi_offset %r14, -24
	movl	48(%rbp), %r10d
	movq	40(%rbp), %r11
	movl	32(%rbp), %r14d
	movl	24(%rbp), %ebx
	movq	16(%rbp), %rax
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%r8, -64(%rbp)
	movq	%r9, -72(%rbp)
	movq	%rax, -80(%rbp)
	movl	%ebx, -84(%rbp)
	movl	%r14d, -88(%rbp)
	movq	%r11, -96(%rbp)
	movl	%r10d, -100(%rbp)
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB8_3
# BB#1:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB8_3
# BB#2:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB8_4
.LBB8_3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.76, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_4:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB8_5
	.align	16, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_5 Depth=1
	movq	-112(%rbp), %rax
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_6
# BB#7:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB8_20
# BB#8:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB8_20
# BB#9:
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, 32(%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -112(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB8_20
# BB#10:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB8_11
.LBB8_20:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB8_21
	.align	16, 0x90
.LBB8_22:                               #   in Loop: Header=BB8_21 Depth=1
	movq	-128(%rbp), %rax
.LBB8_21:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_22
# BB#23:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB8_25
# BB#24:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$14, %esi
	movl	$.L.str.79, %edx
.LBB8_12:
	movl	$2, %ecx
	movl	$.L.str.78, %r9d
.LBB8_13:
	xorl	%eax, %eax
	callq	Error
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
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
	movq	zz_res(%rip), %rbx
.LBB8_15:
	movq	%rbx, xx_tmp(%rip)
	jmp	.LBB8_16
.LBB8_25:
	movq	-128(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$1, %eax
	jae	.LBB8_26
# BB#29:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB8_30
	.align	16, 0x90
.LBB8_31:                               #   in Loop: Header=BB8_30 Depth=1
	movq	-128(%rbp), %rax
.LBB8_30:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_31
# BB#32:
	movq	-128(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -128(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -128(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_34
# BB#33:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_36
.LBB8_34:
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.82, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_35
.LBB8_36:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_38
# BB#37:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_40
.LBB8_38:
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.83, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_39
.LBB8_40:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_42
# BB#41:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_47
.LBB8_42:
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.84, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB8_43
.LBB8_47:
	movq	-128(%rbp), %r8
	addq	$32, %r8
	movq	$.L.str.78, 16(%rsp)
	movq	$.L.str.84, 8(%rsp)
	movq	$.L.str.83, (%rsp)
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$16, %esi
	movl	$.L.str.85, %edx
	movl	$2, %ecx
	movl	$.L.str.82, %r9d
	jmp	.LBB8_13
.LBB8_26:
	movq	-128(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movq	$.L.str.81, (%rsp)
	xorl	%r14d, %r14d
	movl	$8, %edi
	movl	$15, %esi
	movl	$.L.str.80, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -112(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB8_28
# BB#27:
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
.LBB8_28:
	movq	%r14, xx_tmp(%rip)
.LBB8_16:
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_19
# BB#17:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_19
# BB#18:
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
.LBB8_19:
	movq	-32(%rbp), %rdi
	callq	DisposeObject
	movq	-112(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-84(%rbp), %r11d
	movq	-96(%rbp), %rax
	movl	-100(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -32(%rbp)
.LBB8_67:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB8_35:
	movq	-112(%rbp), %rax
	movb	$-122, 41(%rax)
	jmp	.LBB8_44
.LBB8_11:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$13, %esi
	movl	$.L.str.77, %edx
	jmp	.LBB8_12
.LBB8_39:
	movq	-112(%rbp), %rax
	movb	$127, 41(%rax)
	jmp	.LBB8_44
.LBB8_43:
	movq	-112(%rbp), %rax
	movb	$-128, 41(%rax)
.LBB8_44:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB8_45
	.align	16, 0x90
.LBB8_46:                               #   in Loop: Header=BB8_45 Depth=1
	movq	-120(%rbp), %rax
.LBB8_45:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB8_46
# BB#48:
	movq	-120(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-100(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -120(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -120(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_51
# BB#49:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_50
.LBB8_51:
	movq	-128(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB8_53
# BB#52:
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
.LBB8_53:
	movq	%rax, xx_tmp(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_56
# BB#54:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_56
# BB#55:
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
.LBB8_56:
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	movq	-32(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB8_58
# BB#57:
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
.LBB8_58:
	movq	%rax, xx_tmp(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_61
# BB#59:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_61
# BB#60:
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
.LBB8_61:
	movq	-32(%rbp), %rdi
	callq	DisposeObject
	movq	-112(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB8_65
# BB#62:
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB8_65
# BB#63:
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB8_65
# BB#64:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB8_66
.LBB8_65:
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	insert_split
	movq	%rax, -32(%rbp)
.LBB8_66:
	movq	-32(%rbp), %rax
	jmp	.LBB8_67
.LBB8_50:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$17, %esi
	movl	$.L.str.86, %edx
	jmp	.LBB8_12
.Lfunc_end8:
	.size	ManifestTg, .Lfunc_end8-ManifestTg
	.cfi_endproc

	.type	ReplaceWithTidy.buff,@object # @ReplaceWithTidy.buff
	.local	ReplaceWithTidy.buff
	.comm	ReplaceWithTidy.buff,512,16
	.type	ReplaceWithTidy.buff_len,@object # @ReplaceWithTidy.buff_len
	.local	ReplaceWithTidy.buff_len
	.comm	ReplaceWithTidy.buff_len,4,4
	.type	ReplaceWithTidy.buff_pos,@object # @ReplaceWithTidy.buff_pos
	.local	ReplaceWithTidy.buff_pos
	.comm	ReplaceWithTidy.buff_pos,8,4
	.type	ReplaceWithTidy.buff_typ,@object # @ReplaceWithTidy.buff_typ
	.local	ReplaceWithTidy.buff_typ
	.comm	ReplaceWithTidy.buff_typ,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"word is too long"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	" "
	.size	.L.str.3, 2

	.type	Manifest.depth,@object  # @Manifest.depth
	.local	Manifest.depth
	.comm	Manifest.depth,4,4
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"maximum depth of symbol expansion (%d) reached"
	.size	.L.str.4, 47

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Manifest/ENV_OBJ: res_env!"
	.size	.L.str.5, 27

	.type	nbt,@object             # @nbt
	.local	nbt
	.comm	nbt,16,16
	.type	nft,@object             # @nft
	.local	nft
	.comm	nft,16,16
	.type	ntarget,@object         # @ntarget
	.local	ntarget
	.comm	ntarget,8,8
	.type	nenclose,@object        # @nenclose
	.local	nenclose
	.comm	nenclose,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Manifest: CROSS child!"
	.size	.L.str.6, 23

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Manifest/CROSS: type(x)!"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Manifest: ACAT!"
	.size	.L.str.9, 16

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Manifest ACAT: GAP_OBJ is first!"
	.size	.L.str.10, 33

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Manifest ACAT: no GAP_OBJ!"
	.size	.L.str.11, 27

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Manifest ACAT: GAP_OBJ is last!"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Manifest ACAT: double GAP_OBJ!"
	.size	.L.str.13, 31

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Manifest: unexpected space_style!"
	.size	.L.str.14, 34

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Manifest/ACAT: underline(prev)!"
	.size	.L.str.15, 32

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Manifest/ACAT: underline(y)!"
	.size	.L.str.16, 29

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"word %s%s is too long"
	.size	.L.str.17, 22

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"replacing invalid left parameter of %s by 2i"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"replacing invalid left parameter of %s by +0i"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"replacing invalid left parameter of %s by 0d"
	.size	.L.str.20, 45

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%s not expected here"
	.size	.L.str.21, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"@Yield"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%s dropped (parameter is not a simple word)"
	.size	.L.str.23, 44

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"@Char"
	.size	.L.str.24, 6

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%s dropped (no current font at this point)"
	.size	.L.str.25, 43

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s dropped (character %s unknown in font %s)"
	.size	.L.str.26, 45

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"no current language at this point, using %s"
	.size	.L.str.27, 44

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"none"
	.size	.L.str.28, 5

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"no current font at this point, using %s"
	.size	.L.str.29, 40

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"%dp"
	.size	.L.str.30, 4

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Manifest: FONT!"
	.size	.L.str.31, 16

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Manifest: UNDERLINE!"
	.size	.L.str.32, 21

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Manifest: COMMON!"
	.size	.L.str.33, 18

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"object dropped by %s: no suitable insert point"
	.size	.L.str.34, 47

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"@Insert"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%s ignored: no choices in right parameter"
	.size	.L.str.36, 42

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"@OneOf"
	.size	.L.str.37, 7

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Manifest/NEXT: Down(x) == x!"
	.size	.L.str.38, 29

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%d"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"??"
	.size	.L.str.40, 3

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"invalid left parameter of %s"
	.size	.L.str.41, 29

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"@Open"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%s deleted (invalid right parameter)"
	.size	.L.str.43, 37

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"@IncludeGraphic"
	.size	.L.str.44, 16

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.45, 19

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"assert failed in %s %s"
	.size	.L.str.46, 23

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Manifest:"
	.size	.L.str.47, 10

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Manifest/CLOSURE: type(y) != PAR!"
	.size	.L.str.48, 34

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"this %s is not a sequence of one or more words"
	.size	.L.str.49, 47

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%s\n"
	.size	.L.str.50, 4

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Manifest: prntenv!"
	.size	.L.str.51, 19

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"ManifestCl/filtered: type(sym)!"
	.size	.L.str.52, 32

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"ManifestCl filter-encl!"
	.size	.L.str.53, 24

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"filter parameter of %s symbol is not simple"
	.size	.L.str.54, 44

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ReplaceWithSplit: type(x) already SPLIT!"
	.size	.L.str.55, 41

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Manifest/VCAT: less than two children!"
	.size	.L.str.56, 39

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Manifest/VCAT: type(g) != GAP_OBJECT!"
	.size	.L.str.57, 38

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Manifest/VCAT: GAP_OBJ has no child!"
	.size	.L.str.58, 37

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Manifest/VCAT: GAP_OBJ is last child!"
	.size	.L.str.59, 38

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Manifest: bt[par] no children!"
	.size	.L.str.60, 31

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Manifest:last_ft!"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Manifest: ft[par] child!"
	.size	.L.str.62, 25

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Manifest: lthread == rthread!"
	.size	.L.str.63, 30

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"replacing invalid scale factor by 1.0"
	.size	.L.str.64, 38

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%f"
	.size	.L.str.65, 3

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"replacing invalid scale factor %s by 1.0"
	.size	.L.str.66, 41

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"replacing undersized scale factor %s by 1.0"
	.size	.L.str.67, 44

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"replacing oversized scale factor %s by 1.0"
	.size	.L.str.68, 43

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"%s deleted (right parameter is malformed)"
	.size	.L.str.69, 42

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"@Case"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%s expected here"
	.size	.L.str.71, 17

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"else"
	.size	.L.str.72, 5

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"error in left parameter of %s"
	.size	.L.str.73, 30

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"replacing unknown %s option %s by %s"
	.size	.L.str.74, 37

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"%s deleted (choice %s unknown)"
	.size	.L.str.75, 31

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"Manifest TAGGED: children!"
	.size	.L.str.76, 27

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"left parameter of %s is not a cross reference"
	.size	.L.str.77, 46

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"@Tagged"
	.size	.L.str.78, 8

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"left parameter of %s must be a symbol"
	.size	.L.str.79, 38

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"symbol %s not allowed here (it has no %s)"
	.size	.L.str.80, 42

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"@Tag"
	.size	.L.str.81, 5

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"preceding"
	.size	.L.str.82, 10

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"following"
	.size	.L.str.83, 10

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"foll_or_prec"
	.size	.L.str.84, 13

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%s, %s or %s expected in left parameter of %s"
	.size	.L.str.85, 46

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"right parameter of %s must be a simple word"
	.size	.L.str.86, 44


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
