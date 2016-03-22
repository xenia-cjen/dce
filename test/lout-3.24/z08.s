	.text
	.file	"z08.dce"
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
	subq	$1448, %rsp             # imm = 0x5A8
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
	movq	%rdi, -392(%rbp)
	movq	%rsi, -400(%rbp)
	movq	%rdx, -408(%rbp)
	movq	%rcx, -416(%rbp)
	movq	%r8, -424(%rbp)
	movq	%r9, -432(%rbp)
	movq	%rax, -440(%rbp)
	movl	%ebx, -444(%rbp)
	movl	%r14d, -448(%rbp)
	movq	%r11, -456(%rbp)
	movl	%r10d, -460(%rbp)
	movl	Manifest.depth(%rip), %eax
	incl	%eax
	movl	%eax, Manifest.depth(%rip)
	cmpl	$1000, %eax             # imm = 0x3E8
	jne	.LBB1_2
# BB#1:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$40, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	movl	$1000, %r9d             # imm = 0x3E8
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB1_1393
# BB#3:
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_731:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_732
	.align	16, 0x90
.LBB1_733:                              #   in Loop: Header=BB1_732 Depth=1
	movq	-504(%rbp), %rax
.LBB1_732:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_733
	jmp	.LBB1_769
.LBB1_1393:
	movq	no_fpos(%rip), %rbx
	movq	-392(%rbp), %rax
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
.LBB1_1394:
	callq	Error
	jmp	.LBB1_1395
.LBB1_940:
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_942
# BB#941:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB1_943
.LBB1_942:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_943:
	movq	-408(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-680(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -678(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-676(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movb	-680(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-676(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -674(%rbp)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-668(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-680(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -672(%rbp)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -670(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_944
	.align	16, 0x90
.LBB1_945:                              #   in Loop: Header=BB1_944 Depth=1
	movq	-504(%rbp), %rax
.LBB1_944:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_945
# BB#946:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$65, %ecx
	sete	%cl
	movzbl	%cl, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-59, %eax
	cmpl	$8, %eax
	ja	.LBB1_955
# BB#947:
	jmpq	*.LJTI1_1(,%rax,8)
.LBB1_948:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	FontChange
	jmp	.LBB1_955
.LBB1_968:
	movq	-408(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-680(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -678(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-676(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movb	-680(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-676(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -674(%rbp)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-668(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-680(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -672(%rbp)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -670(%rbp)
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$66, %eax
	jne	.LBB1_970
# BB#969:
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	-668(%rbp), %eax
	orl	$4194304, %eax          # imm = 0x400000
	movl	%eax, -668(%rbp)
	jmp	.LBB1_975
.LBB1_986:
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_988
# BB#987:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB1_989
.LBB1_988:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.33, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_989:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_990
	.align	16, 0x90
.LBB1_991:                              #   in Loop: Header=BB1_990 Depth=1
	movq	-616(%rbp), %rax
.LBB1_990:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -616(%rbp)
	movq	-616(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_991
# BB#992:
	movq	-616(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_1015
# BB#993:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_995
# BB#994:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_998
.LBB1_201:
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_203
# BB#202:
	movq	-392(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	8(%rax), %rcx
	jne	.LBB1_204
.LBB1_203:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_204:
	cmpl	$0, -460(%rbp)
	jne	.LBB1_1395
# BB#205:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_206
.LBB1_207:                              #   in Loop: Header=BB1_206 Depth=1
	movq	-504(%rbp), %rax
.LBB1_206:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_207
# BB#208:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_244
# BB#209:
	movq	-392(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rcx
	leaq	-552(%rbp), %r8
	callq	CrossExpand
	movq	%rax, -392(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB1_211
# BB#210:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_211:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_213
# BB#212:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_216
.LBB1_251:
	cmpl	$0, -444(%rbp)
	je	.LBB1_253
# BB#252:
	movq	-440(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_253
# BB#257:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_259
# BB#258:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_262
.LBB1_444:
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-432(%rbp), %rbx
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %r10d
	movq	-456(%rbp), %r11
	movl	-460(%rbp), %r14d
	movq	%rax, -48(%rbp)
	movq	%rcx, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rsi, -72(%rbp)
	movq	%rdi, -80(%rbp)
	movq	%rbx, -88(%rbp)
	movq	%r8, -96(%rbp)
	movl	%r9d, -196(%rbp)
	movl	%r10d, -200(%rbp)
	movq	%r11, -104(%rbp)
	movl	%r14d, -204(%rbp)
	movq	-64(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-272(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -272(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -272(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -272(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -272(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -272(%rbp)
	movq	-64(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -270(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-268(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -268(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -268(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -268(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movb	-272(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -272(%rbp)
	movq	-64(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-268(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -268(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -268(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -268(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -268(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -268(%rbp)
	movq	-64(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -266(%rbp)
	movq	-64(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	andl	-260(%rbp), %eax
	orl	%ecx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rcx), %edx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rcx), %edx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rcx), %edx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rcx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	12(%rcx), %edx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rcx), %edx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%edx, %eax
	movl	%eax, -260(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-272(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -272(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -272(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -272(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -272(%rbp)
	movq	-64(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -264(%rbp)
	movq	-64(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -262(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$18, %eax
	jne	.LBB1_446
# BB#445:
	movl	$1, -244(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	shrb	%al
	andb	$1, %al
	movq	-48(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	andb	$-3, -272(%rbp)
	jmp	.LBB1_447
.LBB1_687:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_688
	.align	16, 0x90
.LBB1_689:                              #   in Loop: Header=BB1_688 Depth=1
	movq	-504(%rbp), %rax
.LBB1_688:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_689
# BB#690:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rsi
	movq	-392(%rbp), %rdx
	addq	$64, %rdx
	leaq	-660(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_691
	.align	16, 0x90
.LBB1_692:                              #   in Loop: Header=BB1_691 Depth=1
	movq	-504(%rbp), %rax
.LBB1_691:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_692
	jmp	.LBB1_704
.LBB1_693:
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -504(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_695
# BB#694:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_698
.LBB1_647:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_648
	.align	16, 0x90
.LBB1_649:                              #   in Loop: Header=BB1_648 Depth=1
	movq	-504(%rbp), %rax
.LBB1_648:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_649
# BB#650:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rsi
	leaq	-656(%rbp), %rdx
	leaq	-660(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	cmpl	$158, -660(%rbp)
	jne	.LBB1_653
# BB#651:
	movzwl	-656(%rbp), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_653
# BB#652:
	movzwl	-656(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB1_654
.LBB1_653:
	movq	-504(%rbp), %rbx
	addq	$32, %rbx
	movq	-392(%rbp), %rax
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
	movzwl	-656(%rbp), %eax
	andl	$58367, %eax            # imm = 0xE3FF
	orl	$1024, %eax             # imm = 0x400
	movw	%ax, -656(%rbp)
	movw	$2880, -654(%rbp)       # imm = 0xB40
.LBB1_654:
	movq	-392(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movswl	-654(%rbp), %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movq	-392(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
	jmp	.LBB1_655
.LBB1_662:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_663
	.align	16, 0x90
.LBB1_664:                              #   in Loop: Header=BB1_663 Depth=1
	movq	-504(%rbp), %rax
.LBB1_663:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_664
# BB#665:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rsi
	movq	-392(%rbp), %rdx
	addq	$64, %rdx
	leaq	-660(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movw	-660(%rbp), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-392(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_668
# BB#666:
	movq	-392(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB1_655
# BB#667:
	movq	-392(%rbp), %rax
	movzwl	64(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$5, %eax
	je	.LBB1_655
.LBB1_668:
	movq	-504(%rbp), %rbx
	addq	$32, %rbx
	movq	-392(%rbp), %rax
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
	movq	-392(%rbp), %rax
	movw	$159, 70(%rax)
	movq	-392(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 64(%rax)
	movq	-392(%rbp), %rax
	movw	$0, 66(%rax)
	movq	-392(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 64(%rax)
.LBB1_655:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_657
# BB#656:
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
.LBB1_657:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_659
# BB#658:
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
.LBB1_659:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_661
# BB#660:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_669
.LBB1_661:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_670
.LBB1_771:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_772
	.align	16, 0x90
.LBB1_773:                              #   in Loop: Header=BB1_772 Depth=1
	movq	-504(%rbp), %rax
.LBB1_772:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_773
	jmp	.LBB1_774
.LBB1_930:
	movq	-408(%rbp), %rax
	movzwl	12(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	je	.LBB1_931
# BB#932:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$69, %eax
	jne	.LBB1_934
# BB#933:
	movq	-408(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	12(%rax), %edi
	callq	FontFamily
	jmp	.LBB1_935
.LBB1_936:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$71, %eax
	jne	.LBB1_938
# BB#937:
	movq	-408(%rbp), %rax
	movswq	8(%rax), %rax
	jmp	.LBB1_939
.LBB1_1227:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1228
	.align	16, 0x90
.LBB1_1229:                             #   in Loop: Header=BB1_1228 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1228:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1229
# BB#1230:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1231
	.align	16, 0x90
.LBB1_1232:                             #   in Loop: Header=BB1_1231 Depth=1
	movq	-584(%rbp), %rax
.LBB1_1231:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1232
# BB#1233:
	movq	-584(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -584(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -584(%rbp)
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1235
# BB#1234:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1243
.LBB1_1235:
	movq	-504(%rbp), %rdi
	addq	$64, %rdi
	leaq	-648(%rbp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB1_1243
# BB#1236:
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1238
# BB#1237:
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1243
.LBB1_1238:
	movq	-584(%rbp), %rdi
	addq	$64, %rdi
	leaq	-652(%rbp), %rdx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB1_1243
# BB#1239:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$79, %eax
	jne	.LBB1_1241
# BB#1240:
	movl	-648(%rbp), %edx
	addl	-652(%rbp), %edx
	jmp	.LBB1_1242
.LBB1_1382:
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1383
	.align	16, 0x90
.LBB1_1384:                             #   in Loop: Header=BB1_1383 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1383:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1384
# BB#1385:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_195
# BB#1386:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_195
# BB#1387:
	movq	-504(%rbp), %r8
	addq	$32, %r8
	movq	-392(%rbp), %rax
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
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1389
# BB#1388:
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
.LBB1_1389:
	movq	%rbx, xx_tmp(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1392
# BB#1390:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1392
# BB#1391:
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
.LBB1_1392:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1396
.LBB1_1368:
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_1369
	.align	16, 0x90
.LBB1_1370:                             #   in Loop: Header=BB1_1369 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1369:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1370
# BB#1371:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1372
	.align	16, 0x90
.LBB1_1373:                             #   in Loop: Header=BB1_1372 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1372:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1373
# BB#1374:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	jmp	.LBB1_194
.LBB1_1376:
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_1377
	.align	16, 0x90
.LBB1_1378:                             #   in Loop: Header=BB1_1377 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1377:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1378
# BB#1379:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1380
	.align	16, 0x90
.LBB1_1381:                             #   in Loop: Header=BB1_1380 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1380:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1381
	jmp	.LBB1_193
.LBB1_970:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$49, %eax
	jne	.LBB1_972
# BB#971:
	orb	$1, -680(%rbp)
	jmp	.LBB1_975
.LBB1_1243:
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.40, %esi
.LBB1_1244:
	callq	MakeWord
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	callq	Manifest
	movq	%rax, -544(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1246
# BB#1245:
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
.LBB1_1246:
	movq	%rax, xx_tmp(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1249
# BB#1247:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1249
# BB#1248:
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
.LBB1_1249:
	movq	-392(%rbp), %rdi
	jmp	.LBB1_1300
.LBB1_253:
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	12(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-408(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-392(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-392(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_256
# BB#254:
	cmpl	$0, -444(%rbp)
	je	.LBB1_256
# BB#255:
	movq	-392(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	MapSmallCaps
	movq	%rax, -392(%rbp)
.LBB1_256:
	movq	-392(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	jmp	.LBB1_195
.LBB1_19:
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-432(%rbp), %rbx
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %r10d
	movq	-456(%rbp), %r11
	movl	-460(%rbp), %r14d
	movq	%rax, -240(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -280(%rbp)
	movl	%r10d, -288(%rbp)
	movq	%r11, -88(%rbp)
	movl	%r14d, -296(%rbp)
	movq	-240(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-240(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-240(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	2(%rax), %ax
	movq	-240(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-240(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	movq	-240(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	4(%rax), %al
	movq	-240(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-240(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-240(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-240(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-240(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-48(%rbp), %rax
	movw	6(%rax), %ax
	movq	-240(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-48(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-240(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-240(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-240(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movq	-240(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-240(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-48(%rbp), %rax
	movq	-240(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-240(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-240(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-240(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movb	(%rax), %al
	movq	-240(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-48(%rbp), %rax
	movw	8(%rax), %ax
	movq	-240(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-48(%rbp), %rax
	movw	10(%rax), %ax
	movq	-240(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_53
# BB#20:
	movq	-240(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	GalleySym(%rip), %rax
	je	.LBB1_22
# BB#21:
	movq	-240(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	je	.LBB1_22
.LBB1_53:
	movl	$1, -304(%rbp)
	movq	-240(%rbp), %rax
	jmp	.LBB1_54
.LBB1_87:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-104(%rbp), %rax
.LBB1_54:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_56 Depth 2
                                        #     Child Loop BB1_61 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-240(%rbp), %rax
	je	.LBB1_88
# BB#55:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-104(%rbp), %rax
	jmp	.LBB1_56
	.align	16, 0x90
.LBB1_57:                               #   in Loop: Header=BB1_56 Depth=2
	movq	-96(%rbp), %rax
.LBB1_56:                               #   Parent Loop BB1_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_57
# BB#58:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB1_60
# BB#59:                                #   in Loop: Header=BB1_54 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_60:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_61
	.align	16, 0x90
.LBB1_62:                               #   in Loop: Header=BB1_61 Depth=2
	movq	-144(%rbp), %rax
.LBB1_61:                               #   Parent Loop BB1_54 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_62
# BB#63:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_84
# BB#64:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_84
# BB#65:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$19, %eax
	jb	.LBB1_84
# BB#66:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	testb	$1, 41(%rax)
	jne	.LBB1_68
# BB#67:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$13, %eax
	jae	.LBB1_71
.LBB1_68:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-296(%rbp), %ecx
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
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -144(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_84
# BB#69:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_84
# BB#70:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-96(%rbp), %rbx
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
	jmp	.LBB1_84
.LBB1_71:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$78, %eax
	jne	.LBB1_73
# BB#72:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-296(%rbp), %ecx
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
.LBB1_83:                               #   in Loop: Header=BB1_54 Depth=1
	movq	%rax, -144(%rbp)
	jmp	.LBB1_84
.LBB1_73:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_84
# BB#74:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jl	.LBB1_84
# BB#75:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jg	.LBB1_84
# BB#76:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rdi
	movq	-272(%rbp), %rsi
	callq	ParameterCheck
	movq	%rax, -152(%rbp)
	testq	%rax, %rax
	je	.LBB1_84
# BB#77:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_79
# BB#78:                                #   in Loop: Header=BB1_54 Depth=1
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
.LBB1_79:                               #   in Loop: Header=BB1_54 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_82
# BB#80:                                #   in Loop: Header=BB1_54 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_82
# BB#81:                                #   in Loop: Header=BB1_54 Depth=1
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
.LBB1_82:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rdi
	callq	DisposeObject
	movq	-152(%rbp), %rax
	jmp	.LBB1_83
.LBB1_84:                               #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_87
# BB#85:                                #   in Loop: Header=BB1_54 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_87
# BB#86:                                #   in Loop: Header=BB1_54 Depth=1
	movl	$0, -304(%rbp)
	jmp	.LBB1_87
.LBB1_190:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_191
.LBB1_192:                              #   in Loop: Header=BB1_191 Depth=1
	movq	-504(%rbp), %rax
.LBB1_191:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_192
.LBB1_193:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	jmp	.LBB1_194
.LBB1_200:
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 74(%rcx)
	jmp	.LBB1_195
.LBB1_734:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_735
.LBB1_736:                              #   in Loop: Header=BB1_735 Depth=1
	movq	-504(%rbp), %rax
.LBB1_735:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_736
# BB#737:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_739
# BB#738:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_741
.LBB1_739:
	movq	-504(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.8, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_740
.LBB1_741:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_743
# BB#742:
	movq	-504(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -696(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-392(%rbp), %rcx
	movl	%eax, 64(%rcx)
	jmp	.LBB1_750
.LBB1_763:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_764
.LBB1_765:                              #   in Loop: Header=BB1_764 Depth=1
	movq	-504(%rbp), %rax
.LBB1_764:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_765
# BB#766:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_767
.LBB1_768:                              #   in Loop: Header=BB1_767 Depth=1
	movq	-504(%rbp), %rax
.LBB1_767:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_768
	jmp	.LBB1_769
.LBB1_705:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_706
.LBB1_707:                              #   in Loop: Header=BB1_706 Depth=1
	movq	-504(%rbp), %rax
.LBB1_706:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_707
# BB#708:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movq	-408(%rbp), %rsi
	leaq	-656(%rbp), %rdx
	leaq	-660(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	cmpl	$158, -660(%rbp)
	jne	.LBB1_711
# BB#709:
	movzwl	-656(%rbp), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_711
# BB#710:
	movzwl	-656(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$4, %eax
	je	.LBB1_712
.LBB1_711:
	movq	-504(%rbp), %rbx
	addq	$32, %rbx
	movq	-392(%rbp), %rax
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
	movzwl	-656(%rbp), %eax
	andl	$58367, %eax            # imm = 0xE3FF
	orl	$4096, %eax             # imm = 0x1000
	movw	%ax, -656(%rbp)
	movw	$0, -654(%rbp)
.LBB1_712:
	movswl	-654(%rbp), %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 76(%rcx)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_714
# BB#713:
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
.LBB1_714:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_716
# BB#715:
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
.LBB1_716:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_718
# BB#717:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_719
.LBB1_718:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_720
.LBB1_725:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_726
.LBB1_727:                              #   in Loop: Header=BB1_726 Depth=1
	movq	-504(%rbp), %rax
.LBB1_726:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_727
# BB#728:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_729
.LBB1_730:                              #   in Loop: Header=BB1_729 Depth=1
	movq	-504(%rbp), %rax
.LBB1_729:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_730
	jmp	.LBB1_769
.LBB1_799:
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-432(%rbp), %rbx
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %r10d
	movq	-456(%rbp), %r11
	movl	-460(%rbp), %r14d
	movq	%rax, -240(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -176(%rbp)
	movl	%r10d, -184(%rbp)
	movq	%r11, -88(%rbp)
	movl	%r14d, -192(%rbp)
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_800
.LBB1_801:                              #   in Loop: Header=BB1_800 Depth=1
	movq	-104(%rbp), %rax
.LBB1_800:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_801
# BB#802:
	movq	-104(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-192(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -104(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -104(%rbp)
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_803
.LBB1_804:                              #   in Loop: Header=BB1_803 Depth=1
	movq	-96(%rbp), %rax
.LBB1_803:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_804
# BB#805:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB1_824
# BB#806:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_807
# BB#808:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_809
.LBB1_770:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$29, %esi
	movl	$.L.str.21, %edx
	movl	$1, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	jmp	.LBB1_1394
.LBB1_904:
	movq	BackEnd(%rip), %rax
	movq	8(%rax), %rsi
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	jmp	.LBB1_905
.LBB1_913:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_914
.LBB1_915:                              #   in Loop: Header=BB1_914 Depth=1
	movq	-504(%rbp), %rax
.LBB1_914:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_915
# BB#916:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -504(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -504(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_921
# BB#917:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_918
.LBB1_921:
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rcx), %edx
	movl	12(%rax), %eax
	movl	$4095, %edi             # imm = 0xFFF
	movl	$4095, %esi             # imm = 0xFFF
	andl	%eax, %esi
	orl	%edx, %esi
	andl	%edi, %eax
	movl	%esi, 40(%rcx)
	je	.LBB1_922
# BB#923:
	movq	-504(%rbp), %rsi
	andl	40(%rsi), %edi
	leaq	64(%rsi), %rbx
	addq	$32, %rsi
	callq	FontMapping
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	MapCharEncoding
	movb	%al, -689(%rbp)
	testb	%al, %al
	je	.LBB1_924
# BB#925:
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$12, %edi
	movl	$.L.str.3, %esi
	callq	MakeWord
	movq	%rax, -544(%rbp)
	movb	-689(%rbp), %cl
	movb	%cl, 64(%rax)
	jmp	.LBB1_907
.LBB1_979:
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_981
# BB#980:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB1_982
.LBB1_981:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.32, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_982:
	movq	-392(%rbp), %rax
	movb	$17, 32(%rax)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	shrb	$2, %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-408(%rbp), %rax
	andb	$-5, (%rax)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-392(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-392(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_983
.LBB1_984:                              #   in Loop: Header=BB1_983 Depth=1
	movq	-504(%rbp), %rax
.LBB1_983:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_984
# BB#985:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rdi
	callq	SetUnderline
	jmp	.LBB1_195
.LBB1_926:
	movq	-408(%rbp), %rax
	movzbl	15(%rax), %eax
	testb	$63, %al
	je	.LBB1_927
# BB#929:
	movq	-408(%rbp), %rax
	movzbl	15(%rax), %edi
	andl	$63, %edi
	callq	LanguageString
	jmp	.LBB1_935
.LBB1_1156:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1157
.LBB1_1158:                             #   in Loop: Header=BB1_1157 Depth=1
	movq	-584(%rbp), %rax
.LBB1_1157:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1158
# BB#1159:
	movq	-584(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -584(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1161
# BB#1160:
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
.LBB1_1161:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1163
# BB#1162:
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
.LBB1_1163:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1165
# BB#1164:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1166
.LBB1_1165:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1167
.LBB1_1194:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1195
.LBB1_1196:                             #   in Loop: Header=BB1_1195 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1195:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1196
# BB#1197:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_1199
# BB#1198:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$39, %esi
	movl	$.L.str.36, %edx
	movl	$2, %ecx
	movl	$.L.str.37, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_774:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	jmp	.LBB1_775
.LBB1_1221:
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_1223
# BB#1222:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1223:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1224
.LBB1_1225:                             #   in Loop: Header=BB1_1224 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1224:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1225
# BB#1226:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	callq	Manifest
	movq	%rax, -504(%rbp)
	movl	$0, -684(%rbp)
	movq	-504(%rbp), %rdi
	leaq	-684(%rbp), %rdx
	movl	$1, %esi
	callq	Next
	jmp	.LBB1_776
.LBB1_4:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_5
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=1
	movq	-504(%rbp), %rax
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_6
# BB#7:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_8
.LBB1_9:                                #   in Loop: Header=BB1_8 Depth=1
	movq	-552(%rbp), %rax
.LBB1_8:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -552(%rbp)
	movq	-552(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_9
# BB#10:
	movq	-552(%rbp), %rax
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
	movq	-504(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 16(%rsp)
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rcx
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
	movq	-504(%rbp), %rax
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
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_18
.LBB1_1250:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1251
.LBB1_1252:                             #   in Loop: Header=BB1_1251 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1251:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1252
# BB#1253:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1255
# BB#1254:
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
.LBB1_1255:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1257
# BB#1256:
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
.LBB1_1257:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1259
# BB#1258:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1260
.LBB1_1259:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1261
.LBB1_1302:
	movq	-392(%rbp), %rax
	movq	-400(%rbp), %rcx
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdi
	movq	-432(%rbp), %rbx
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %r9d
	movl	-448(%rbp), %r10d
	movq	-456(%rbp), %r11
	movl	-460(%rbp), %r14d
	movq	%rax, -240(%rbp)
	movq	%rcx, -272(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rdi, -64(%rbp)
	movq	%rbx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	%r9d, -120(%rbp)
	movl	%r10d, -128(%rbp)
	movq	%r11, -88(%rbp)
	movl	%r14d, -136(%rbp)
	movq	-240(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_1305
# BB#1303:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB1_1305
# BB#1304:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB1_1306
.LBB1_1305:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.76, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1306:
	movq	-240(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1307
.LBB1_1308:                             #   in Loop: Header=BB1_1307 Depth=1
	movq	-96(%rbp), %rax
.LBB1_1307:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1308
# BB#1309:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB1_1322
# BB#1310:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	je	.LBB1_1322
# BB#1311:
	movq	-96(%rbp), %rdi
	movq	-272(%rbp), %rsi
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
	movq	%rax, -96(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB1_1322
# BB#1312:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB1_1313
.LBB1_1322:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1323
.LBB1_1324:                             #   in Loop: Header=BB1_1323 Depth=1
	movq	-112(%rbp), %rax
.LBB1_1323:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1324
# BB#1325:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB1_1327
# BB#1326:
	movq	-96(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$14, %esi
	movl	$.L.str.79, %edx
.LBB1_1314:
	movl	$2, %ecx
	movl	$.L.str.78, %r9d
.LBB1_1315:
	xorl	%eax, %eax
	callq	Error
	movq	-240(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -96(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1317
# BB#1316:
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
.LBB1_1317:
	movq	%rbx, xx_tmp(%rip)
	jmp	.LBB1_1318
.LBB1_446:
	movl	$0, -244(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-48(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$11, %eax
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	andb	$-2, -272(%rbp)
.LBB1_447:
	movl	$1, %eax
	subl	-244(%rbp), %eax
	movl	%eax, -248(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB1_449
# BB#448:
	movq	-128(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jne	.LBB1_450
.LBB1_449:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_450:
	movq	-120(%rbp), %rax
	jmp	.LBB1_451
	.align	16, 0x90
.LBB1_452:                              #   in Loop: Header=BB1_451 Depth=1
	movq	-112(%rbp), %rax
.LBB1_451:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_452
# BB#453:
	movq	-128(%rbp), %rax
	jmp	.LBB1_454
	.align	16, 0x90
.LBB1_455:                              #   in Loop: Header=BB1_454 Depth=1
	movq	-136(%rbp), %rax
.LBB1_454:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_455
# BB#456:
	movslq	-248(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -224(%rbp,%rax,8)
	movslq	-248(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -240(%rbp,%rax,8)
	movslq	-244(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB1_461
# BB#457:
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_458
# BB#459:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_460
.LBB1_695:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_696
# BB#697:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_698
.LBB1_669:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_670:
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
	jne	.LBB1_672
# BB#671:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_672:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$24, %ecx
	je	.LBB1_678
# BB#673:
	movq	-392(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$40, %ecx
	je	.LBB1_678
# BB#674:
	movq	-392(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_678
# BB#675:
	movq	-392(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$38, %ecx
	je	.LBB1_678
# BB#676:
	movq	-392(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$26, %ecx
	je	.LBB1_678
# BB#677:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$28, %eax
	sete	%al
.LBB1_678:
	xorb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -644(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_679
	.align	16, 0x90
.LBB1_680:                              #   in Loop: Header=BB1_679 Depth=1
	movq	-504(%rbp), %rax
.LBB1_679:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_680
# BB#681:
	movslq	-644(%rbp), %rax
	movq	$0, -496(%rbp,%rax,8)
	movslq	-644(%rbp), %rax
	movq	$0, -480(%rbp,%rax,8)
	movslq	-644(%rbp), %rax
	movl	$1, %r14d
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-416(%rbp), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -480(%rbp,%rcx,8)
	movslq	-644(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-424(%rbp), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -496(%rbp,%rcx,8)
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-480(%rbp), %rcx
	leaq	-496(%rbp), %r8
	callq	Manifest
	movq	%rax, -504(%rbp)
	movslq	-644(%rbp), %rax
	movq	-416(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -480(%rbp,%rax,8)
	movslq	-644(%rbp), %rax
	movq	-424(%rbp), %rcx
	movq	(%rcx,%rax,8), %rcx
	movq	%rcx, -496(%rbp,%rax,8)
	movslq	-644(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	$0, -496(%rbp,%rcx,8)
	movslq	-644(%rbp), %rax
	subq	%rax, %r14
	movq	$0, -480(%rbp,%r14,8)
	cmpq	$0, -472(%rbp)
	jne	.LBB1_685
# BB#682:
	cmpq	$0, -480(%rbp)
	jne	.LBB1_685
# BB#683:
	cmpq	$0, -488(%rbp)
	jne	.LBB1_685
# BB#684:
	cmpq	$0, -496(%rbp)
	je	.LBB1_1395
.LBB1_685:
	movq	-392(%rbp), %rdi
	leaq	-480(%rbp), %rsi
	leaq	-496(%rbp), %rdx
	jmp	.LBB1_686
.LBB1_938:
	movq	-408(%rbp), %rax
	movswq	10(%rax), %rax
.LBB1_939:
	imulq	$1717986919, %rax, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$35, %rdx
	addl	%eax, %edx
	leaq	-784(%rbp), %rdi
	movl	$.L.str.30, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	leaq	-784(%rbp), %rsi
.LBB1_905:
	movl	$11, %edi
	jmp	.LBB1_906
.LBB1_972:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB1_974
# BB#973:
	orb	$2, -680(%rbp)
	jmp	.LBB1_975
.LBB1_995:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_996
# BB#997:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_998
.LBB1_931:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$38, %esi
	movl	$.L.str.29, %edx
	jmp	.LBB1_928
.LBB1_461:
	movq	$0, -144(%rbp)
	jmp	.LBB1_462
.LBB1_934:
	movq	-408(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	andl	12(%rax), %edi
	callq	FontFace
.LBB1_935:
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%rax, %rsi
	jmp	.LBB1_906
.LBB1_88:
	cmpl	$0, -304(%rbp)
	je	.LBB1_115
# BB#89:
	movq	-112(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB1_115
# BB#90:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB1_115
# BB#91:
	movq	-272(%rbp), %rdi
	movq	-112(%rbp), %rax
	movq	48(%rax), %rsi
	callq	SearchEnv
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB1_115
# BB#92:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_115
# BB#93:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_94
.LBB1_95:                               #   in Loop: Header=BB1_94 Depth=1
	movq	-184(%rbp), %rax
.LBB1_94:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_95
# BB#96:
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB1_98
# BB#97:
	movq	stderr(%rip), %rbx
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, %rcx
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
.LBB1_98:
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB1_100
# BB#99:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_100:
	movq	-184(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB1_101
# BB#102:
	movq	-96(%rbp), %rdi
	xorl	%esi, %esi
	callq	SetEnv
	jmp	.LBB1_103
.LBB1_115:
	movq	$0, -136(%rbp)
.LBB1_116:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB1_138
# BB#117:
	cmpl	$0, -288(%rbp)
	je	.LBB1_118
.LBB1_138:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB1_139
# BB#140:
	cmpl	$0, -288(%rbp)
	jne	.LBB1_148
# BB#141:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$20, %eax
	jae	.LBB1_143
# BB#142:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB1_148
.LBB1_143:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jb	.LBB1_145
# BB#144:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$10, %eax
	jae	.LBB1_148
.LBB1_145:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jae	.LBB1_178
# BB#146:
	movq	-72(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_178
# BB#147:
	movq	-112(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	(%rax), %rsi
	callq	SearchUses
	testl	%eax, %eax
	jne	.LBB1_148
.LBB1_178:
	movq	-272(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	AttachEnv
	jmp	.LBB1_179
.LBB1_1199:
	movq	-504(%rbp), %rax
	jmp	.LBB1_1200
.LBB1_1206:                             #   in Loop: Header=BB1_1200 Depth=1
	movq	-512(%rbp), %rax
.LBB1_1200:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_1202 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)
	movq	-512(%rbp), %rax
	cmpq	-504(%rbp), %rax
	je	.LBB1_1207
# BB#1201:                              #   in Loop: Header=BB1_1200 Depth=1
	movq	-512(%rbp), %rax
	jmp	.LBB1_1202
	.align	16, 0x90
.LBB1_1203:                             #   in Loop: Header=BB1_1202 Depth=2
	movq	-584(%rbp), %rax
.LBB1_1202:                             #   Parent Loop BB1_1200 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1203
# BB#1204:                              #   in Loop: Header=BB1_1200 Depth=1
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_1206
# BB#1205:                              #   in Loop: Header=BB1_1200 Depth=1
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -928(%rbp)
	movq	-584(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -584(%rbp)
	movq	-432(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-928(%rbp), %rax
	je	.LBB1_1206
.LBB1_1207:
	movq	-584(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1209
# BB#1208:
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
.LBB1_1209:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1211
# BB#1210:
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
.LBB1_1211:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1213
# BB#1212:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1214
.LBB1_1213:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1215
.LBB1_974:
	orb	$4, -680(%rbp)
.LBB1_975:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_976
	.align	16, 0x90
.LBB1_977:                              #   in Loop: Header=BB1_976 Depth=1
	movq	-504(%rbp), %rax
.LBB1_976:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_977
	jmp	.LBB1_978
.LBB1_1327:
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$1, %eax
	jae	.LBB1_1328
# BB#1331:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1332
.LBB1_1333:                             #   in Loop: Header=BB1_1332 Depth=1
	movq	-112(%rbp), %rax
.LBB1_1332:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1333
# BB#1334:
	movq	-112(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-136(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -112(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -112(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1336
# BB#1335:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1338
.LBB1_1336:
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.82, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_1337
.LBB1_1338:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1340
# BB#1339:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1342
.LBB1_1340:
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.83, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_1341
.LBB1_1342:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1344
# BB#1343:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1349
.LBB1_1344:
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.84, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_1345
.LBB1_1349:
	movq	-112(%rbp), %r8
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
	jmp	.LBB1_1315
.LBB1_458:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_460:
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
	movq	%rax, -144(%rbp)
.LBB1_462:
	movq	-144(%rbp), %rax
	movslq	-244(%rbp), %rcx
	movq	%rax, -224(%rbp,%rcx,8)
	movq	-136(%rbp), %rax
	btl	$9, 44(%rax)
	jae	.LBB1_467
# BB#463:
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_464
# BB#465:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_466
.LBB1_467:
	movslq	-244(%rbp), %rax
	movq	$0, -240(%rbp,%rax,8)
	jmp	.LBB1_468
.LBB1_464:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_466:
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
	movslq	-244(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
.LBB1_468:
	cmpq	$0, -144(%rbp)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -256(%rbp)
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %rax
	movl	-196(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	-204(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-272(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-240(%rbp), %r8
	callq	Manifest
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB1_481
# BB#469:
	cmpl	$0, -196(%rbp)
	je	.LBB1_481
# BB#470:
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_481
# BB#471:
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-168(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.LBB1_480
# BB#472:
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_474
# BB#473:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_474:
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-176(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_477
# BB#475:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_477
# BB#476:
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
.LBB1_477:
	movq	-168(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_480
# BB#478:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_480
# BB#479:
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
.LBB1_480:
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB1_481
	.align	16, 0x90
.LBB1_613:                              #   in Loop: Header=BB1_481 Depth=1
	movl	$0, -256(%rbp)
.LBB1_481:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_487 Depth 2
                                        #     Child Loop BB1_512 Depth 2
                                        #     Child Loop BB1_520 Depth 2
                                        #     Child Loop BB1_556 Depth 2
                                        #     Child Loop BB1_559 Depth 2
                                        #     Child Loop BB1_563 Depth 2
                                        #       Child Loop BB1_568 Depth 3
                                        #       Child Loop BB1_571 Depth 3
	cmpq	$0, -136(%rbp)
	je	.LBB1_614
# BB#482:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_484
# BB#483:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_484:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-136(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_486
# BB#485:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.58, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_486:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_487
	.align	16, 0x90
.LBB1_488:                              #   in Loop: Header=BB1_487 Depth=2
	movq	-160(%rbp), %rax
.LBB1_487:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_488
# BB#489:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-160(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-96(%rbp), %rax
	movq	-104(%rbp), %rcx
	movl	-204(%rbp), %edx
	movl	%edx, 32(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	leaq	-272(%rbp), %rdx
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -160(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -160(%rbp)
	movq	-64(%rbp), %rsi
	movq	-136(%rbp), %rdx
	addq	$44, %rdx
	leaq	-252(%rbp), %rcx
	movq	%rax, %rdi
	callq	GetGap
	movslq	-248(%rbp), %rax
	cmpq	$0, -224(%rbp,%rax,8)
	je	.LBB1_499
# BB#490:                               #   in Loop: Header=BB1_481 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_491
# BB#492:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_493
.LBB1_491:                              #   in Loop: Header=BB1_481 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_493:                              #   in Loop: Header=BB1_481 Depth=1
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
	movslq	-248(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_496
# BB#494:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_496
# BB#495:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_496:                              #   in Loop: Header=BB1_481 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_499
# BB#497:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_499
# BB#498:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_499:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-248(%rbp), %rax
	cmpq	$0, -240(%rbp,%rax,8)
	je	.LBB1_509
# BB#500:                               #   in Loop: Header=BB1_481 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_501
# BB#502:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_503
.LBB1_501:                              #   in Loop: Header=BB1_481 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_503:                              #   in Loop: Header=BB1_481 Depth=1
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
	movslq	-248(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_506
# BB#504:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_506
# BB#505:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_506:                              #   in Loop: Header=BB1_481 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_509
# BB#507:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_509
# BB#508:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_509:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	cmpq	-48(%rbp), %rax
	jne	.LBB1_511
# BB#510:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.59, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_511:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB1_512
	.align	16, 0x90
.LBB1_513:                              #   in Loop: Header=BB1_512 Depth=2
	movq	-112(%rbp), %rax
.LBB1_512:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_513
# BB#514:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	cmpq	-48(%rbp), %rax
	je	.LBB1_515
# BB#519:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-128(%rbp), %rax
	jmp	.LBB1_520
	.align	16, 0x90
.LBB1_521:                              #   in Loop: Header=BB1_520 Depth=2
	movq	-136(%rbp), %rax
.LBB1_520:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_521
	jmp	.LBB1_516
.LBB1_515:                              #   in Loop: Header=BB1_481 Depth=1
	movq	$0, -136(%rbp)
.LBB1_516:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	%rax, -152(%rbp)
	movslq	-244(%rbp), %rax
	cmpq	$0, -240(%rbp,%rax,8)
	je	.LBB1_524
# BB#517:                               #   in Loop: Header=BB1_481 Depth=1
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_518
# BB#522:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_523
.LBB1_524:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	$0, -224(%rbp,%rax,8)
	jmp	.LBB1_525
.LBB1_518:                              #   in Loop: Header=BB1_481 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_523:                              #   in Loop: Header=BB1_481 Depth=1
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
	movslq	-244(%rbp), %rcx
	movq	%rax, -224(%rbp,%rcx,8)
.LBB1_525:                              #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, -136(%rbp)
	je	.LBB1_531
# BB#526:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-136(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB1_527
	jmp	.LBB1_532
.LBB1_531:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-80(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB1_532
.LBB1_527:                              #   in Loop: Header=BB1_481 Depth=1
	movzbl	zz_lengths+139(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_528
# BB#529:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_530
.LBB1_532:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	$0, -240(%rbp,%rax,8)
	jmp	.LBB1_533
.LBB1_528:                              #   in Loop: Header=BB1_481 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_530:                              #   in Loop: Header=BB1_481 Depth=1
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
	movslq	-244(%rbp), %rcx
	movq	%rax, -240(%rbp,%rcx,8)
.LBB1_533:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-112(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-88(%rbp), %r9
	movq	-96(%rbp), %rax
	movl	-196(%rbp), %ecx
	movq	-104(%rbp), %rdx
	movl	-204(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-272(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	leaq	-240(%rbp), %r8
	callq	Manifest
	movq	%rax, -112(%rbp)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB1_546
# BB#534:                               #   in Loop: Header=BB1_481 Depth=1
	cmpl	$0, -196(%rbp)
	je	.LBB1_546
# BB#535:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_546
# BB#536:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -288(%rbp)
	movq	-192(%rbp), %rax
	cmpq	-280(%rbp), %rax
	je	.LBB1_545
# BB#537:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_539
# BB#538:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_539:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-280(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_542
# BB#540:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_542
# BB#541:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_542:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-288(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_545
# BB#543:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_545
# BB#544:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_545:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	.align	16, 0x90
.LBB1_546:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	cmpq	$0, -224(%rbp,%rax,8)
	je	.LBB1_613
# BB#547:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_549
# BB#548:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.60, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_549:                              #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, -152(%rbp)
	je	.LBB1_551
# BB#550:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-152(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_552
.LBB1_551:                              #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.61, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_552:                              #   in Loop: Header=BB1_481 Depth=1
	movl	$0, -324(%rbp)
	movslq	-244(%rbp), %rax
	cmpq	$0, -240(%rbp,%rax,8)
	je	.LBB1_562
# BB#553:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_555
# BB#554:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.62, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_555:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	movq	(%rax), %rax
	jmp	.LBB1_556
	.align	16, 0x90
.LBB1_557:                              #   in Loop: Header=BB1_556 Depth=2
	movq	-312(%rbp), %rax
.LBB1_556:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_557
# BB#558:                               #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	(%rax), %rax
	jmp	.LBB1_559
	.align	16, 0x90
.LBB1_560:                              #   in Loop: Header=BB1_559 Depth=2
	movq	-320(%rbp), %rax
.LBB1_559:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_560
# BB#561:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-312(%rbp), %rax
	cmpq	-320(%rbp), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -324(%rbp)
.LBB1_562:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-152(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)
	movslq	-244(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	jmp	.LBB1_563
	.align	16, 0x90
.LBB1_589:                              #   in Loop: Header=BB1_563 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-296(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -296(%rbp)
	movq	-304(%rbp), %rax
.LBB1_563:                              #   Parent Loop BB1_481 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_568 Depth 3
                                        #       Child Loop BB1_571 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -304(%rbp)
	movq	-296(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_564
# BB#565:                               #   in Loop: Header=BB1_563 Depth=2
	movq	-304(%rbp), %rax
	movslq	-244(%rbp), %rcx
	cmpq	-224(%rbp,%rcx,8), %rax
	setne	%al
	jmp	.LBB1_566
	.align	16, 0x90
.LBB1_564:                              #   in Loop: Header=BB1_563 Depth=2
	xorl	%eax, %eax
.LBB1_566:                              #   in Loop: Header=BB1_563 Depth=2
	testb	%al, %al
	je	.LBB1_590
# BB#567:                               #   in Loop: Header=BB1_563 Depth=2
	movq	-296(%rbp), %rax
	jmp	.LBB1_568
	.align	16, 0x90
.LBB1_569:                              #   in Loop: Header=BB1_568 Depth=3
	movq	-312(%rbp), %rax
.LBB1_568:                              #   Parent Loop BB1_481 Depth=1
                                        #     Parent Loop BB1_563 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_569
# BB#570:                               #   in Loop: Header=BB1_563 Depth=2
	movq	-304(%rbp), %rax
	jmp	.LBB1_571
	.align	16, 0x90
.LBB1_572:                              #   in Loop: Header=BB1_571 Depth=3
	movq	-320(%rbp), %rax
.LBB1_571:                              #   Parent Loop BB1_481 Depth=1
                                        #     Parent Loop BB1_563 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_572
# BB#573:                               #   in Loop: Header=BB1_563 Depth=2
	movq	-312(%rbp), %rax
	cmpq	-320(%rbp), %rax
	jne	.LBB1_575
# BB#574:                               #   in Loop: Header=BB1_563 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.63, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_575:                              #   in Loop: Header=BB1_563 Depth=2
	movq	-312(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-320(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_577
# BB#576:                               #   in Loop: Header=BB1_563 Depth=2
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
.LBB1_577:                              #   in Loop: Header=BB1_563 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_580
# BB#578:                               #   in Loop: Header=BB1_563 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_580
# BB#579:                               #   in Loop: Header=BB1_563 Depth=2
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
.LBB1_580:                              #   in Loop: Header=BB1_563 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	movl	$0, %eax
	je	.LBB1_582
# BB#581:                               #   in Loop: Header=BB1_563 Depth=2
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
.LBB1_582:                              #   in Loop: Header=BB1_563 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_585
# BB#583:                               #   in Loop: Header=BB1_563 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_585
# BB#584:                               #   in Loop: Header=BB1_563 Depth=2
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
.LBB1_585:                              #   in Loop: Header=BB1_563 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_587
# BB#586:                               #   in Loop: Header=BB1_563 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_588
.LBB1_587:                              #   in Loop: Header=BB1_563 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_589
	.align	16, 0x90
.LBB1_588:                              #   in Loop: Header=BB1_563 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_589
	.align	16, 0x90
.LBB1_590:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-304(%rbp), %rax
	movslq	-244(%rbp), %rcx
	cmpq	-224(%rbp,%rcx,8), %rax
	je	.LBB1_601
# BB#591:                               #   in Loop: Header=BB1_481 Depth=1
	cmpl	$0, -256(%rbp)
	je	.LBB1_601
# BB#592:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-304(%rbp), %rax
	movq	%rax, -336(%rbp)
	movslq	-244(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rax
	movq	%rax, -344(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -352(%rbp)
	movq	-336(%rbp), %rax
	cmpq	-344(%rbp), %rax
	je	.LBB1_601
# BB#593:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-336(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_595
# BB#594:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_595:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-344(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_598
# BB#596:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_598
# BB#597:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_598:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-336(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-352(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_601
# BB#599:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_601
# BB#600:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_601:                              #   in Loop: Header=BB1_481 Depth=1
	movslq	-244(%rbp), %rax
	movq	-224(%rbp,%rax,8), %rdi
	callq	DisposeObject
	movq	-296(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_612
# BB#602:                               #   in Loop: Header=BB1_481 Depth=1
	cmpl	$0, -324(%rbp)
	je	.LBB1_612
# BB#603:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-296(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-152(%rbp), %rax
	movq	%rax, -368(%rbp)
	movslq	-244(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rax
	movq	%rax, -376(%rbp)
	movq	-360(%rbp), %rax
	cmpq	-368(%rbp), %rax
	je	.LBB1_612
# BB#604:                               #   in Loop: Header=BB1_481 Depth=1
	movq	-360(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_606
# BB#605:                               #   in Loop: Header=BB1_481 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_606:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-360(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-368(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_609
# BB#607:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_609
# BB#608:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_609:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-360(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_612
# BB#610:                               #   in Loop: Header=BB1_481 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_612
# BB#611:                               #   in Loop: Header=BB1_481 Depth=1
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
.LBB1_612:                              #   in Loop: Header=BB1_481 Depth=1
	movq	-152(%rbp), %rdi
	callq	DisposeObject
	cmpl	$0, -324(%rbp)
	jne	.LBB1_481
	jmp	.LBB1_613
.LBB1_614:
	movslq	-244(%rbp), %rax
	movq	-80(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB1_630
# BB#615:
	movslq	-244(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, xx_res(%rip)
	movslq	-244(%rbp), %rax
	movq	-240(%rbp,%rax,8), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_617
# BB#616:
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
.LBB1_617:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_620
# BB#618:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_620
# BB#619:
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
.LBB1_620:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_622
# BB#621:
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
.LBB1_622:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_625
# BB#623:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_625
# BB#624:
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
.LBB1_625:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_627
# BB#626:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_628
.LBB1_627:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_629
.LBB1_949:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	SpaceChange
	jmp	.LBB1_955
.LBB1_950:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	YUnitChange
	jmp	.LBB1_955
.LBB1_951:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	ZUnitChange
	jmp	.LBB1_955
.LBB1_952:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	BreakChange
	jmp	.LBB1_955
.LBB1_953:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	ColourChange
	jmp	.LBB1_955
.LBB1_954:
	movq	-504(%rbp), %rsi
	leaq	-680(%rbp), %rdi
	callq	LanguageChange
.LBB1_955:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_957
# BB#956:
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
.LBB1_957:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_959
# BB#958:
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
.LBB1_959:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_961
# BB#960:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_962
.LBB1_961:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_963
.LBB1_962:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_963:
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
	jne	.LBB1_965
# BB#964:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_965:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_966
	.align	16, 0x90
.LBB1_967:                              #   in Loop: Header=BB1_966 Depth=1
	movq	-504(%rbp), %rax
.LBB1_966:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_967
.LBB1_978:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %edx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%edx, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-680(%rbp), %rdx
.LBB1_775:
	callq	Manifest
.LBB1_776:
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_778
# BB#777:
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
.LBB1_778:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_780
# BB#779:
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
.LBB1_780:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_782
# BB#781:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_783
.LBB1_782:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_784
.LBB1_783:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_784:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-504(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-392(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_786
# BB#785:
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
.LBB1_786:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_789
# BB#787:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_789
# BB#788:
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
.LBB1_789:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_791
# BB#790:
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
.LBB1_791:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_794
# BB#792:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_794
# BB#793:
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
.LBB1_794:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_796
# BB#795:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_797
.LBB1_796:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_798
.LBB1_797:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_798:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_18:
	movq	-504(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_259:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_260
# BB#261:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_262
.LBB1_22:
	movq	-240(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_24
# BB#23:
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
.LBB1_24:
	movq	%rax, xx_tmp(%rip)
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_27
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_27
# BB#26:
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
.LBB1_27:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_28
.LBB1_29:                               #   in Loop: Header=BB1_28 Depth=1
	movq	-168(%rbp), %rax
.LBB1_28:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_29
# BB#30:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_31
.LBB1_32:                               #   in Loop: Header=BB1_31 Depth=1
	movq	-176(%rbp), %rax
.LBB1_31:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_32
# BB#33:
	movq	-176(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_35
# BB#34:
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
.LBB1_35:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_37
# BB#36:
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
.LBB1_37:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_39
# BB#38:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_40
.LBB1_39:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_41
.LBB1_244:
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_246
# BB#245:
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
.LBB1_246:
	movq	%rax, xx_tmp(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_249
# BB#247:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_249
# BB#248:
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
.LBB1_249:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	-504(%rbp), %rdi
	jmp	.LBB1_250
.LBB1_927:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$33, %esi
	movl	$.L.str.27, %edx
.LBB1_928:
	movl	$2, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.28, %esi
	jmp	.LBB1_906
.LBB1_696:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_698:
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
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_701
# BB#699:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_701
# BB#700:
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
.LBB1_701:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_704
# BB#702:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_704
# BB#703:
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
.LBB1_704:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movl	-448(%rbp), %r14d
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	callq	Manifest
	movq	%rax, -504(%rbp)
	jmp	.LBB1_1395
.LBB1_743:
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_744
.LBB1_745:                              #   in Loop: Header=BB1_744 Depth=1
	movq	-584(%rbp), %rax
.LBB1_744:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_745
# BB#746:
	movq	-584(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -696(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-504(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_747
.LBB1_748:                              #   in Loop: Header=BB1_747 Depth=1
	movq	-584(%rbp), %rax
.LBB1_747:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_748
# BB#749:
	movq	-584(%rbp), %rdi
	callq	GetScaleFactor
	movss	%xmm0, -696(%rbp)
	mulss	.LCPI1_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movq	-392(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB1_750
.LBB1_628:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_629:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_630:
	movslq	-244(%rbp), %rax
	movq	-72(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB1_646
# BB#631:
	movslq	-244(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, xx_res(%rip)
	movq	-144(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_633
# BB#632:
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
.LBB1_633:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_636
# BB#634:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_636
# BB#635:
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
.LBB1_636:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_638
# BB#637:
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
.LBB1_638:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_641
# BB#639:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_641
# BB#640:
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
.LBB1_641:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_643
# BB#642:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_644
.LBB1_643:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_645
.LBB1_644:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_645:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_646:                              # %ManifestCat.exit
	movq	-48(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_740:
	movq	-392(%rbp), %rax
	movl	$0, 72(%rax)
	movq	-392(%rbp), %rax
	movl	$0, 64(%rax)
.LBB1_750:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_752
# BB#751:
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
.LBB1_752:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_754
# BB#753:
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
.LBB1_754:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_756
# BB#755:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_757
.LBB1_756:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_758
.LBB1_922:
	movq	-504(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$31, %esi
	movl	$.L.str.25, %edx
	jmp	.LBB1_919
.LBB1_996:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_998:
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
	movq	%rax, -792(%rbp)
	movq	-408(%rbp), %rcx
	movb	(%rcx), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movzwl	42(%rax), %edx
	shll	$11, %ecx
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	movq	-408(%rbp), %rax
	andb	$-5, (%rax)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1000
# BB#999:
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
.LBB1_1000:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-792(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1003
# BB#1001:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1003
# BB#1002:
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
.LBB1_1003:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_1005
# BB#1004:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_1008
.LBB1_1005:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_1006
# BB#1007:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1008
.LBB1_1006:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_1008:
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
	movq	-792(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1011
# BB#1009:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1011
# BB#1010:
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
.LBB1_1011:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-616(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1014
# BB#1012:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1014
# BB#1013:
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
.LBB1_1014:
	movq	-792(%rbp), %rax
	movq	%rax, -616(%rbp)
.LBB1_1015:
	movq	-616(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -616(%rbp)
	jmp	.LBB1_1016
	.align	16, 0x90
.LBB1_1041:                             #   in Loop: Header=BB1_1016 Depth=1
	movq	-600(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_1016:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_1017 Depth 2
                                        #       Child Loop BB1_1019 Depth 3
	movq	%rax, -600(%rbp)
	jmp	.LBB1_1017
.LBB1_1040:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_1017:                             #   Parent Loop BB1_1016 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_1019 Depth 3
	movq	-600(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-616(%rbp), %rax
	je	.LBB1_1042
# BB#1018:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	-600(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1019
	.align	16, 0x90
.LBB1_1020:                             #   in Loop: Header=BB1_1019 Depth=3
	movq	-584(%rbp), %rax
.LBB1_1019:                             #   Parent Loop BB1_1016 Depth=1
                                        #     Parent Loop BB1_1017 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1020
# BB#1021:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_1041
# BB#1022:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -800(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -808(%rbp)
	movq	-600(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -816(%rbp)
	movq	-800(%rbp), %rax
	cmpq	-808(%rbp), %rax
	je	.LBB1_1031
# BB#1023:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	-800(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1025
# BB#1024:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1025:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	-800(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-808(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1028
# BB#1026:                              #   in Loop: Header=BB1_1017 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1028
# BB#1027:                              #   in Loop: Header=BB1_1017 Depth=2
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
.LBB1_1028:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	-800(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-816(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1031
# BB#1029:                              #   in Loop: Header=BB1_1017 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1031
# BB#1030:                              #   in Loop: Header=BB1_1017 Depth=2
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
.LBB1_1031:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	-584(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_1033
# BB#1032:                              #   in Loop: Header=BB1_1017 Depth=2
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
.LBB1_1033:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1035
# BB#1034:                              #   in Loop: Header=BB1_1017 Depth=2
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
.LBB1_1035:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1037
# BB#1036:                              #   in Loop: Header=BB1_1017 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1038
.LBB1_1037:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1039
.LBB1_1038:                             #   in Loop: Header=BB1_1017 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1039:                             #   in Loop: Header=BB1_1017 Depth=2
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
	jne	.LBB1_1017
	jmp	.LBB1_1040
.LBB1_1042:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1043
	.align	16, 0x90
.LBB1_1044:                             #   in Loop: Header=BB1_1043 Depth=1
	movq	-624(%rbp), %rax
.LBB1_1043:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -624(%rbp)
	movq	-624(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1044
# BB#1045:
	movq	-624(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_1068
# BB#1046:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_1048
# BB#1047:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_1051
.LBB1_1048:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_1049
# BB#1050:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1051
.LBB1_1049:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_1051:
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
	movq	%rax, -824(%rbp)
	movq	-408(%rbp), %rcx
	movb	(%rcx), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	movzwl	42(%rax), %edx
	shll	$11, %ecx
	andl	$63487, %edx            # imm = 0xF7FF
	orl	%ecx, %edx
	movw	%dx, 42(%rax)
	movq	-408(%rbp), %rax
	andb	$-5, (%rax)
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1053
# BB#1052:
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
.LBB1_1053:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-824(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1056
# BB#1054:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1056
# BB#1055:
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
.LBB1_1056:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_1058
# BB#1057:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_1061
.LBB1_1058:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_1059
# BB#1060:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1061
.LBB1_1059:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_1061:
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
	movq	-824(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1064
# BB#1062:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1064
# BB#1063:
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
.LBB1_1064:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-624(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1067
# BB#1065:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1067
# BB#1066:
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
.LBB1_1067:
	movq	-824(%rbp), %rax
	movq	%rax, -624(%rbp)
.LBB1_1068:
	movq	-624(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
	movq	%rax, -624(%rbp)
	jmp	.LBB1_1069
	.align	16, 0x90
.LBB1_1094:                             #   in Loop: Header=BB1_1069 Depth=1
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
.LBB1_1069:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_1070 Depth 2
                                        #       Child Loop BB1_1072 Depth 3
	movq	%rax, -608(%rbp)
	jmp	.LBB1_1070
.LBB1_1093:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_1070:                             #   Parent Loop BB1_1069 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_1072 Depth 3
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-624(%rbp), %rax
	je	.LBB1_1095
# BB#1071:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1072
	.align	16, 0x90
.LBB1_1073:                             #   in Loop: Header=BB1_1072 Depth=3
	movq	-584(%rbp), %rax
.LBB1_1072:                             #   Parent Loop BB1_1069 Depth=1
                                        #     Parent Loop BB1_1070 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1073
# BB#1074:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_1094
# BB#1075:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	-584(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -832(%rbp)
	movq	-584(%rbp), %rax
	movq	%rax, -840(%rbp)
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -848(%rbp)
	movq	-832(%rbp), %rax
	cmpq	-840(%rbp), %rax
	je	.LBB1_1084
# BB#1076:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	-832(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1078
# BB#1077:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1078:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	-832(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-840(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1081
# BB#1079:                              #   in Loop: Header=BB1_1070 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1081
# BB#1080:                              #   in Loop: Header=BB1_1070 Depth=2
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
.LBB1_1081:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	-832(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-848(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1084
# BB#1082:                              #   in Loop: Header=BB1_1070 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1084
# BB#1083:                              #   in Loop: Header=BB1_1070 Depth=2
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
.LBB1_1084:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	-584(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_1086
# BB#1085:                              #   in Loop: Header=BB1_1070 Depth=2
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
.LBB1_1086:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1088
# BB#1087:                              #   in Loop: Header=BB1_1070 Depth=2
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
.LBB1_1088:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1090
# BB#1089:                              #   in Loop: Header=BB1_1070 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1091
.LBB1_1090:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1092
.LBB1_1091:                             #   in Loop: Header=BB1_1070 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1092:                             #   in Loop: Header=BB1_1070 Depth=2
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
	jne	.LBB1_1070
	jmp	.LBB1_1093
.LBB1_1095:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$75, %eax
	jne	.LBB1_1097
# BB#1096:
	movq	-616(%rbp), %rdi
	movq	-624(%rbp), %rsi
	callq	Meld
	jmp	.LBB1_1149
.LBB1_1097:
	movq	-616(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-624(%rbp), %rax
	jmp	.LBB1_1098
.LBB1_1118:                             #   in Loop: Header=BB1_1098 Depth=1
	movq	-600(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -600(%rbp)
	movq	-608(%rbp), %rax
.LBB1_1098:                             # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_1103 Depth 2
                                        #     Child Loop BB1_1106 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -608(%rbp)
	movq	-600(%rbp), %rax
	cmpq	-616(%rbp), %rax
	je	.LBB1_1099
# BB#1100:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-608(%rbp), %rax
	cmpq	-624(%rbp), %rax
	setne	%al
	jmp	.LBB1_1101
.LBB1_1099:                             #   in Loop: Header=BB1_1098 Depth=1
	xorl	%eax, %eax
.LBB1_1101:                             #   in Loop: Header=BB1_1098 Depth=1
	testb	%al, %al
	je	.LBB1_1113
# BB#1102:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-600(%rbp), %rax
	jmp	.LBB1_1103
	.align	16, 0x90
.LBB1_1104:                             #   in Loop: Header=BB1_1103 Depth=2
	movq	-632(%rbp), %rax
.LBB1_1103:                             #   Parent Loop BB1_1098 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -632(%rbp)
	movq	-632(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1104
# BB#1105:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-608(%rbp), %rax
	jmp	.LBB1_1106
	.align	16, 0x90
.LBB1_1107:                             #   in Loop: Header=BB1_1106 Depth=2
	movq	-640(%rbp), %rax
.LBB1_1106:                             #   Parent Loop BB1_1098 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -640(%rbp)
	movq	-640(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1107
# BB#1108:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-632(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1110
# BB#1109:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-632(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1117
.LBB1_1110:                             #   in Loop: Header=BB1_1098 Depth=1
	movq	-640(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1112
# BB#1111:                              #   in Loop: Header=BB1_1098 Depth=1
	movq	-640(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1117
.LBB1_1112:                             #   in Loop: Header=BB1_1098 Depth=1
	movq	-632(%rbp), %rdi
	addq	$64, %rdi
	movq	-640(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_1118
	jmp	.LBB1_1113
.LBB1_1117:                             #   in Loop: Header=BB1_1098 Depth=1
	movq	-632(%rbp), %rax
	movzbl	32(%rax), %eax
	movq	-640(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_1118
.LBB1_1113:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$73, %eax
	jne	.LBB1_1128
# BB#1114:
	movq	-608(%rbp), %rax
	cmpq	-624(%rbp), %rax
	je	.LBB1_1148
# BB#1115:
	movq	-600(%rbp), %rax
	cmpq	-616(%rbp), %rax
	je	.LBB1_1116
# BB#1119:
	movq	-608(%rbp), %rax
	movq	-624(%rbp), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB1_1120
# BB#1121:
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -856(%rbp)
	movq	-624(%rbp), %rax
	movq	%rax, -864(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -872(%rbp)
	movq	-856(%rbp), %rax
	cmpq	-864(%rbp), %rax
	je	.LBB1_1148
# BB#1122:
	movq	-856(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1124
# BB#1123:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1124:
	movq	-856(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-864(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1127
# BB#1125:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1127
# BB#1126:
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
.LBB1_1127:
	movq	-856(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-872(%rbp), %rax
	jmp	.LBB1_1145
.LBB1_1128:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$74, %eax
	jne	.LBB1_1150
# BB#1129:
	movq	-608(%rbp), %rax
	cmpq	-624(%rbp), %rax
	je	.LBB1_1120
# BB#1130:
	movq	-600(%rbp), %rax
	cmpq	-616(%rbp), %rax
	je	.LBB1_1131
# BB#1138:
	movq	-624(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -904(%rbp)
	movq	-608(%rbp), %rax
	movq	%rax, -912(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -920(%rbp)
	movq	-904(%rbp), %rax
	cmpq	-912(%rbp), %rax
	je	.LBB1_1148
# BB#1139:
	movq	-904(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1141
# BB#1140:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1141:
	movq	-904(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-912(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1144
# BB#1142:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1144
# BB#1143:
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
.LBB1_1144:
	movq	-904(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-920(%rbp), %rax
	jmp	.LBB1_1145
.LBB1_1120:
	movq	-624(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	jmp	.LBB1_1149
.LBB1_719:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_720:
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
	jne	.LBB1_722
# BB#721:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_722:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_723
.LBB1_724:                              #   in Loop: Header=BB1_723 Depth=1
	movq	-504(%rbp), %rax
.LBB1_723:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_724
	jmp	.LBB1_769
.LBB1_918:
	movq	-504(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$30, %esi
	movl	$.L.str.23, %edx
.LBB1_919:
	movl	$2, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	jmp	.LBB1_920
.LBB1_1166:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1167:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_1168
.LBB1_1169:                             #   in Loop: Header=BB1_1168 Depth=1
	movq	-504(%rbp), %rax
.LBB1_1168:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1169
# BB#1170:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1172
# BB#1171:
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
.LBB1_1172:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_1174
# BB#1173:
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
.LBB1_1174:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1176
# BB#1175:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1177
.LBB1_1176:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1178
.LBB1_1260:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1261:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_1262
.LBB1_1263:                             #   in Loop: Header=BB1_1262 Depth=1
	movq	-544(%rbp), %rax
.LBB1_1262:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -544(%rbp)
	movq	-544(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1263
# BB#1264:
	movq	$0, -568(%rbp)
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_1283
# BB#1265:
	movq	-400(%rbp), %rdi
	movq	-504(%rbp), %rsi
	callq	AttachEnv
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-504(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-504(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-504(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-504(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-504(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-504(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-504(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-504(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-504(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-504(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-504(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-504(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	12(%rax), %edx
	movl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	12(%rax), %edx
	movl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	12(%rax), %ecx
	movq	-504(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	76(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 76(%rax)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	12(%rax), %edx
	movl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 76(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movq	-504(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$-2, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-504(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$2, %al
	andb	$-3, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-504(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$4, %al
	andb	$-5, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-504(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movq	-504(%rbp), %rcx
	movw	%ax, 72(%rcx)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movq	-504(%rbp), %rcx
	movw	%ax, 74(%rcx)
	movq	-504(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB1_1266
.LBB1_1283:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB1_1285
# BB#1284:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB1_1291
.LBB1_1285:
	movq	-504(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_1286
.LBB1_1287:                             #   in Loop: Header=BB1_1286 Depth=1
	movq	-584(%rbp), %rax
.LBB1_1286:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1287
# BB#1288:
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB1_1290
# BB#1289:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-440(%rbp), %rcx
	leaq	-552(%rbp), %r8
	callq	CrossExpand
	movq	%rax, -504(%rbp)
	movq	-552(%rbp), %rdi
	movq	%rax, %rsi
	callq	AttachEnv
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
.LBB1_1266:
	callq	SetEnv
	movq	%rax, -552(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_1268
# BB#1267:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_1271
.LBB1_1268:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_1269
# BB#1270:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1271
.LBB1_757:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_758:
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
	jne	.LBB1_760
# BB#759:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_760:
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_761
.LBB1_762:                              #   in Loop: Header=BB1_761 Depth=1
	movq	-504(%rbp), %rax
.LBB1_761:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_762
.LBB1_769:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r8
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rbx
	movl	-460(%rbp), %eax
	movl	%eax, 32(%rsp)
	movq	%rbx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%r8, (%rsp)
	movl	$0, 16(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
.LBB1_194:
	movq	%rax, -504(%rbp)
.LBB1_195:
	movq	-416(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_199
# BB#196:
	movq	-416(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_199
# BB#197:
	movq	-424(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_199
# BB#198:
	movq	-424(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_1395
.LBB1_199:
	movq	-392(%rbp), %rdi
	movq	-416(%rbp), %rsi
	movq	-424(%rbp), %rdx
.LBB1_686:
	callq	insert_split
	movq	%rax, -392(%rbp)
.LBB1_1395:
	decl	Manifest.depth(%rip)
	movq	-392(%rbp), %rax
.LBB1_1396:
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	addq	$1448, %rsp             # imm = 0x5A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_1177:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1178:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-504(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-392(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1180
# BB#1179:
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
.LBB1_1180:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1183
# BB#1181:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1183
# BB#1182:
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
.LBB1_1183:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB1_1185
# BB#1184:
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
.LBB1_1185:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1188
# BB#1186:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1188
# BB#1187:
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
.LBB1_1188:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1190
# BB#1189:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1191
.LBB1_1190:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_1192
.LBB1_1191:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1192:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-504(%rbp), %rdi
	movq	%rdi, -392(%rbp)
	movq	-408(%rbp), %rdx
	leaq	-584(%rbp), %rsi
	callq	InsertObject
	movq	%rax, -392(%rbp)
	cmpq	$0, -584(%rbp)
	je	.LBB1_1395
# BB#1193:
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$34, %esi
	movl	$.L.str.34, %edx
	movl	$2, %ecx
	movl	$.L.str.35, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-584(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_1395
.LBB1_213:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_214
# BB#215:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_216
.LBB1_807:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_809:
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
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_811
# BB#810:
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
.LBB1_811:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_814
# BB#812:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_814
# BB#813:
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
.LBB1_814:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_815
# BB#816:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_817
.LBB1_1290:
	movq	-504(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$35, %esi
	jmp	.LBB1_1292
.LBB1_815:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_817:
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
	je	.LBB1_820
# BB#818:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_820
# BB#819:
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
.LBB1_820:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-152(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_823
# BB#821:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_823
# BB#822:
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
.LBB1_823:
	movq	-152(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_824:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_832
# BB#825:
	movq	-96(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$7, %esi
	movl	$.L.str.69, %edx
.LBB1_826:
	movl	$2, %ecx
	movl	$.L.str.70, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-240(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -96(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_828
# BB#827:
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
.LBB1_828:
	movq	%rbx, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_831
# BB#829:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_831
# BB#830:
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
.LBB1_831:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rdi
	jmp	.LBB1_902
.LBB1_832:
	movq	$0, -144(%rbp)
	movq	$0, -160(%rbp)
	movq	-96(%rbp), %rax
	jmp	.LBB1_833
.LBB1_893:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-112(%rbp), %rax
.LBB1_833:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_838 Depth 2
                                        #     Child Loop BB1_854 Depth 2
                                        #     Child Loop BB1_871 Depth 2
                                        #       Child Loop BB1_873 Depth 3
                                        #       Child Loop BB1_881 Depth 3
                                        #     Child Loop BB1_888 Depth 2
                                        #     Child Loop BB1_860 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB1_834
# BB#835:                               #   in Loop: Header=BB1_833 Depth=1
	cmpq	$0, -144(%rbp)
	sete	%al
	jmp	.LBB1_836
.LBB1_834:                              #   in Loop: Header=BB1_833 Depth=1
	xorl	%eax, %eax
.LBB1_836:                              #   in Loop: Header=BB1_833 Depth=1
	testb	%al, %al
	je	.LBB1_843
# BB#837:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-112(%rbp), %rax
	jmp	.LBB1_838
	.align	16, 0x90
.LBB1_839:                              #   in Loop: Header=BB1_838 Depth=2
	movq	-120(%rbp), %rax
.LBB1_838:                              #   Parent Loop BB1_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_839
# BB#840:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_893
# BB#841:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$55, %eax
	jne	.LBB1_842
# BB#853:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_854
	.align	16, 0x90
.LBB1_855:                              #   in Loop: Header=BB1_854 Depth=2
	movq	-128(%rbp), %rax
.LBB1_854:                              #   Parent Loop BB1_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_855
# BB#856:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-192(%rbp), %ecx
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
	je	.LBB1_858
# BB#857:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_869
.LBB1_858:                              #   in Loop: Header=BB1_833 Depth=1
	cmpq	$0, -160(%rbp)
	jne	.LBB1_862
# BB#859:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_860
.LBB1_861:                              #   in Loop: Header=BB1_860 Depth=2
	movq	-168(%rbp), %rax
.LBB1_860:                              #   Parent Loop BB1_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_861
.LBB1_862:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_864
# BB#863:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_865
.LBB1_864:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movq	-104(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_866
.LBB1_865:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.72, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_893
	jmp	.LBB1_866
.LBB1_869:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB1_891
# BB#870:                               #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -152(%rbp)
	jmp	.LBB1_871
.LBB1_890:                              #   in Loop: Header=BB1_871 Depth=2
	movq	-136(%rbp), %rax
.LBB1_871:                              #   Parent Loop BB1_833 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_873 Depth 3
                                        #       Child Loop BB1_881 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-152(%rbp), %rax
	je	.LBB1_893
# BB#872:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-136(%rbp), %rax
	jmp	.LBB1_873
	.align	16, 0x90
.LBB1_874:                              #   in Loop: Header=BB1_873 Depth=3
	movq	-128(%rbp), %rax
.LBB1_873:                              #   Parent Loop BB1_833 Depth=1
                                        #     Parent Loop BB1_871 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_874
# BB#875:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_890
# BB#876:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_879
# BB#877:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_878
.LBB1_879:                              #   in Loop: Header=BB1_871 Depth=2
	cmpq	$0, -160(%rbp)
	jne	.LBB1_883
# BB#880:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_881
	.align	16, 0x90
.LBB1_882:                              #   in Loop: Header=BB1_881 Depth=3
	movq	-168(%rbp), %rax
.LBB1_881:                              #   Parent Loop BB1_833 Depth=1
                                        #     Parent Loop BB1_871 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_882
.LBB1_883:                              #   in Loop: Header=BB1_871 Depth=2
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_885
# BB#884:                               #   in Loop: Header=BB1_871 Depth=2
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_886
.LBB1_885:                              #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movq	-104(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_887
.LBB1_886:                              #   in Loop: Header=BB1_871 Depth=2
	movq	-128(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.72, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_890
.LBB1_887:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_888
.LBB1_889:                              #   in Loop: Header=BB1_888 Depth=2
	movq	-144(%rbp), %rax
.LBB1_888:                              #   Parent Loop BB1_833 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_889
	jmp	.LBB1_893
.LBB1_891:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$10, %esi
.LBB1_892:                              #   in Loop: Header=BB1_833 Depth=1
	movl	$.L.str.73, %edx
	movl	$2, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_893
.LBB1_878:                              #   in Loop: Header=BB1_833 Depth=1
	movq	-128(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$9, %esi
	jmp	.LBB1_892
.LBB1_139:
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
.LBB1_148:
	movq	-240(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-80(%rbp), %rcx
	leaq	-120(%rbp), %r8
	movl	$1, %edx
	callq	ClosureExpand
	movq	%rax, -240(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_149
# BB#150:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_151
.LBB1_924:
	movq	-504(%rbp), %rax
	movb	$12, 32(%rax)
	movq	-504(%rbp), %rdi
	leaq	32(%rdi), %r14
	callq	StringQuotedWord
	movq	%rax, %rbx
	movq	-504(%rbp), %rax
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
.LBB1_920:
	callq	Error
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
.LBB1_906:
	callq	MakeWord
	movq	%rax, -544(%rbp)
.LBB1_907:
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_909
# BB#908:
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
.LBB1_909:
	movq	%rax, xx_tmp(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_912
# BB#910:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_912
# BB#911:
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
.LBB1_912:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	-544(%rbp), %rdi
.LBB1_250:
	movq	-400(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_1328:
	movq	-112(%rbp), %rbx
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
	movq	-240(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.8, %esi
	callq	MakeWord
	movq	%rax, -96(%rbp)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_1330
# BB#1329:
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
.LBB1_1330:
	movq	%r14, xx_tmp(%rip)
.LBB1_1318:
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1321
# BB#1319:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1321
# BB#1320:
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
.LBB1_1321:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-120(%rbp), %r11d
	movq	-88(%rbp), %rax
	movl	-136(%rbp), %ebx
	jmp	.LBB1_903
.LBB1_1116:
	movq	-616(%rbp), %rax
	jmp	.LBB1_1149
.LBB1_149:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_151:
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
	movq	%rax, -128(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_152
# BB#153:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_154
.LBB1_152:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_154:
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
	movq	-128(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_157
# BB#155:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_157
# BB#156:
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
.LBB1_157:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-120(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_160
# BB#158:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_160
# BB#159:
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
.LBB1_160:
	movq	-240(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	jne	.LBB1_177
# BB#161:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	je	.LBB1_163
# BB#162:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.52, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_163:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	$0, 104(%rax)
	jne	.LBB1_165
# BB#164:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_165:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_166
# BB#167:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_168
.LBB1_260:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_262:
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
	movq	%rax, -504(%rbp)
	movq	-392(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-392(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-504(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-392(%rbp), %rax
	andl	36(%rax), %esi
	movq	-504(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_264
# BB#263:
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
.LBB1_264:
	movq	%rax, xx_tmp(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_267
# BB#265:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_267
# BB#266:
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
.LBB1_267:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_269
# BB#268:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_272
.LBB1_269:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_270
# BB#271:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_272
.LBB1_270:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_272:
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
	movq	-504(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_275
# BB#273:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_275
# BB#274:
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
.LBB1_275:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_278
# BB#276:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_278
# BB#277:
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
.LBB1_278:
	movq	-504(%rbp), %rax
	movq	%rax, -392(%rbp)
.LBB1_279:
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzbl	1(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	64(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 64(%rcx)
	movq	-408(%rbp), %rax
	movw	2(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$-4, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$12, %al
	andb	$-13, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	movq	-392(%rbp), %rcx
	movb	68(%rcx), %dl
	andb	$112, %al
	andb	$-113, %dl
	orb	%al, %dl
	movb	%dl, 68(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	movq	-392(%rbp), %rcx
	movb	64(%rcx), %dl
	andb	$8, %al
	andb	$-9, %dl
	orb	%al, %dl
	movb	%dl, 64(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-392(%rbp), %rcx
	movzwl	68(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 68(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-392(%rbp), %rcx
	movw	%ax, 70(%rcx)
	movq	-408(%rbp), %rax
	movl	$4095, %r8d             # imm = 0xFFF
	movl	12(%rax), %ecx
	andl	%r8d, %ecx
	movq	-392(%rbp), %rdx
	movl	$-4096, %eax            # imm = 0xFFFFFFFFFFFFF000
	movl	76(%rdx), %esi
	andl	%eax, %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-408(%rbp), %rcx
	movq	-392(%rbp), %rdx
	movl	$4190208, %r9d          # imm = 0x3FF000
	movl	12(%rcx), %ecx
	andl	%r9d, %ecx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	76(%rdx), %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-408(%rbp), %rcx
	movq	-392(%rbp), %rdx
	movl	$12582912, %r10d        # imm = 0xC00000
	movl	12(%rcx), %ecx
	andl	%r10d, %ecx
	movl	$-12582913, %edi        # imm = 0xFFFFFFFFFF3FFFFF
	andl	76(%rdx), %edi
	orl	%ecx, %edi
	movl	%edi, 76(%rdx)
	movq	-408(%rbp), %rcx
	movq	-392(%rbp), %rdx
	movl	$1056964608, %r11d      # imm = 0x3F000000
	movl	12(%rcx), %ecx
	andl	%r11d, %ecx
	movl	$-1056964609, %ebx      # imm = 0xFFFFFFFFC0FFFFFF
	andl	76(%rdx), %ebx
	orl	%ecx, %ebx
	movl	%ebx, 76(%rdx)
	movq	-408(%rbp), %rcx
	movl	$-2147483648, %r14d     # imm = 0xFFFFFFFF80000000
	movl	12(%rcx), %ecx
	andl	%r14d, %ecx
	movq	-392(%rbp), %rdx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	andl	76(%rdx), %esi
	orl	%ecx, %esi
	movl	%esi, 76(%rdx)
	movq	-408(%rbp), %rdx
	movq	-392(%rbp), %rsi
	movl	$1073741824, %ecx       # imm = 0x40000000
	movl	12(%rdx), %edx
	andl	%ecx, %edx
	movl	$-1073741825, %edi      # imm = 0xFFFFFFFFBFFFFFFF
	andl	76(%rsi), %edi
	orl	%edx, %edi
	movl	%edi, 76(%rsi)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	andb	$1, %dl
	movq	-392(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$-2, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-392(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$2, %dl
	andb	$-3, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-392(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$4, %dl
	andb	$-5, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	movq	-392(%rbp), %rsi
	movb	64(%rsi), %bl
	andb	$112, %dl
	andb	$-113, %bl
	orb	%dl, %bl
	movb	%bl, 64(%rsi)
	movq	-408(%rbp), %rdx
	movw	8(%rdx), %dx
	movq	-392(%rbp), %rsi
	movw	%dx, 72(%rsi)
	movq	-408(%rbp), %rdx
	movw	10(%rdx), %dx
	movq	-392(%rbp), %rsi
	movw	%dx, 74(%rsi)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	shrb	$2, %dl
	andb	$1, %dl
	movq	-392(%rbp), %rsi
	movzbl	%dl, %edx
	movzwl	42(%rsi), %edi
	shll	$11, %edx
	andl	$63487, %edi            # imm = 0xF7FF
	orl	%edx, %edi
	movw	%di, 42(%rsi)
	movq	-408(%rbp), %rdx
	movzwl	(%rdx), %esi
	movzwl	-680(%rbp), %edx
	andl	$128, %esi
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%esi, %edx
	movw	%dx, -680(%rbp)
	movq	-408(%rbp), %rsi
	movzbl	1(%rsi), %esi
	andl	$1, %esi
	shll	$8, %esi
	andl	$-257, %edx             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%esi, %edx
	movw	%dx, -680(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$512, %esi              # imm = 0x200
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%esi, %edx
	movw	%dx, -680(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$7168, %esi             # imm = 0x1C00
	andl	$-7169, %edx            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%esi, %edx
	movw	%dx, -680(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	(%rsi), %esi
	andl	$57344, %esi            # imm = 0xE000
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%esi, %edx
	movw	%dx, -680(%rbp)
	movq	-408(%rbp), %rdx
	movw	2(%rdx), %dx
	movw	%dx, -678(%rbp)
	movq	-408(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$3, %dl
	movb	-676(%rbp), %bl
	andb	$-4, %bl
	orb	%dl, %bl
	movb	%bl, -676(%rbp)
	movq	-408(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$12, %dl
	andb	$-13, %bl
	orb	%dl, %bl
	movb	%bl, -676(%rbp)
	movq	-408(%rbp), %rdx
	movb	4(%rdx), %dl
	andb	$112, %dl
	andb	$-113, %bl
	orb	%dl, %bl
	movb	%bl, -676(%rbp)
	movq	-408(%rbp), %rdx
	movb	(%rdx), %dl
	movb	-680(%rbp), %bl
	andb	$8, %dl
	andb	$-9, %bl
	orb	%dl, %bl
	movb	%bl, -680(%rbp)
	movq	-408(%rbp), %rdx
	movzwl	4(%rdx), %esi
	movzwl	-676(%rbp), %edx
	andl	$128, %esi
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%esi, %edx
	movw	%dx, -676(%rbp)
	movq	-408(%rbp), %rsi
	movzbl	5(%rsi), %esi
	andl	$1, %esi
	shll	$8, %esi
	andl	$-257, %edx             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%esi, %edx
	movw	%dx, -676(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$512, %esi              # imm = 0x200
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%esi, %edx
	movw	%dx, -676(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$7168, %esi             # imm = 0x1C00
	andl	$-7169, %edx            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%esi, %edx
	movw	%dx, -676(%rbp)
	movq	-408(%rbp), %rsi
	movzwl	4(%rsi), %esi
	andl	$57344, %esi            # imm = 0xE000
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%esi, %edx
	movw	%dx, -676(%rbp)
	movq	-408(%rbp), %rdx
	movw	6(%rdx), %dx
	movw	%dx, -674(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %r8d
	andl	-668(%rbp), %eax
	orl	%r8d, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %r9d
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%r9d, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %r10d
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%r10d, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %r11d
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%r11d, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %r14d
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%r14d, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rdx
	andl	12(%rdx), %ecx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-680(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-408(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -672(%rbp)
	movq	-408(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -670(%rbp)
	andb	$-5, -680(%rbp)
	movq	-392(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_281
# BB#280:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_281:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)
	jmp	.LBB1_282
	.align	16, 0x90
.LBB1_283:                              #   in Loop: Header=BB1_282 Depth=1
	movq	-504(%rbp), %rax
.LBB1_282:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_283
# BB#284:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_286
# BB#285:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_286:
	movl	$0, -688(%rbp)
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_288
# BB#287:
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_291
.LBB1_288:
	movq	-408(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	movq	-504(%rbp), %rax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	12(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	12(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-408(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-504(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-504(%rbp), %rcx
	shll	$31, %eax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_293
# BB#289:
	cmpl	$0, -444(%rbp)
	je	.LBB1_293
# BB#290:
	movq	-504(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	MapSmallCaps
	jmp	.LBB1_292
.LBB1_291:
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %rax
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rdx
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$0, 16(%rsp)
	leaq	-680(%rbp), %rdx
	movl	$nbt, %ecx
	movl	$nft, %r8d
	callq	Manifest
.LBB1_292:
	movq	%rax, -504(%rbp)
.LBB1_293:
	movq	-504(%rbp), %rax
	movl	$-1610612737, %r14d     # imm = 0xFFFFFFFF9FFFFFFF
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	cmpl	$0, -444(%rbp)
	je	.LBB1_305
# BB#294:
	movq	-440(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_305
# BB#295:
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -704(%rbp)
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -712(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -720(%rbp)
	movq	-704(%rbp), %rax
	cmpq	-712(%rbp), %rax
	je	.LBB1_304
# BB#296:
	movq	-704(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_298
# BB#297:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_298:
	movq	-704(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-712(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_301
# BB#299:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_301
# BB#300:
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
.LBB1_301:
	movq	-704(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-720(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_304
# BB#302:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_304
# BB#303:
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
.LBB1_304:
	movq	-440(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-440(%rbp), %rax
	movq	$0, (%rax)
.LBB1_305:
	movq	-504(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	-512(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)
	movl	$4095, %r13d            # imm = 0xFFF
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	movl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	leaq	-680(%rbp), %r12
	jmp	.LBB1_306
	.align	16, 0x90
.LBB1_443:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-512(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -520(%rbp)
.LBB1_306:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_308 Depth 2
                                        #     Child Loop BB1_315 Depth 2
                                        #     Child Loop BB1_359 Depth 2
                                        #       Child Loop BB1_366 Depth 3
                                        #     Child Loop BB1_371 Depth 2
                                        #     Child Loop BB1_338 Depth 2
                                        #       Child Loop BB1_345 Depth 3
                                        #     Child Loop BB1_350 Depth 2
                                        #     Child Loop BB1_328 Depth 2
	movq	-520(%rbp), %rax
	cmpq	-392(%rbp), %rax
	je	.LBB1_195
# BB#307:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-520(%rbp), %rax
	jmp	.LBB1_308
	.align	16, 0x90
.LBB1_309:                              #   in Loop: Header=BB1_308 Depth=2
	movq	-528(%rbp), %rax
.LBB1_308:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -528(%rbp)
	movq	-528(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_309
# BB#310:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB1_312
# BB#311:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_312:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-520(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -512(%rbp)
	cmpq	-392(%rbp), %rax
	jne	.LBB1_314
# BB#313:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_314:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-512(%rbp), %rax
	jmp	.LBB1_315
	.align	16, 0x90
.LBB1_316:                              #   in Loop: Header=BB1_315 Depth=2
	movq	-504(%rbp), %rax
.LBB1_315:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -504(%rbp)
	movq	-504(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_316
# BB#317:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_319
# BB#318:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_319:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_321
# BB#320:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_324
.LBB1_321:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-408(%rbp), %rax
	movl	12(%rax), %eax
	andl	%r13d, %eax
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	12(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	12(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movl	12(%rax), %eax
	shrl	%eax
	movq	-504(%rbp), %rcx
	andl	$528482304, %eax        # imm = 0x1F800000
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movzbl	%al, %eax
	cmpl	$2, %eax
	sete	%al
	movzbl	%al, %eax
	movq	-504(%rbp), %rcx
	shll	$31, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-408(%rbp), %rax
	btl	$3, (%rax)
	jae	.LBB1_326
# BB#322:                               #   in Loop: Header=BB1_306 Depth=1
	cmpl	$0, -444(%rbp)
	je	.LBB1_326
# BB#323:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rdi
	movq	-408(%rbp), %rsi
	callq	MapSmallCaps
	jmp	.LBB1_325
.LBB1_324:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %rax
	movl	-444(%rbp), %ecx
	movq	-456(%rbp), %rdx
	movl	-460(%rbp), %ebx
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
.LBB1_325:                              #   in Loop: Header=BB1_306 Depth=1
	movq	%rax, -504(%rbp)
.LBB1_326:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-528(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_331
# BB#327:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_328
	.align	16, 0x90
.LBB1_329:                              #   in Loop: Header=BB1_328 Depth=2
	movq	-584(%rbp), %rax
.LBB1_328:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_329
# BB#330:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rdi
	movq	-400(%rbp), %rsi
	movq	-440(%rbp), %rax
	movl	-460(%rbp), %ecx
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
	movq	%rax, -584(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -584(%rbp)
	movq	-408(%rbp), %rsi
	movq	-528(%rbp), %rdx
	addq	$44, %rdx
	movq	%rax, %rdi
	leaq	-660(%rbp), %rcx
	callq	GetGap
	movq	-528(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-528(%rbp), %rax
	movb	$0, 42(%rax)
	jmp	.LBB1_383
.LBB1_331:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-528(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-408(%rbp), %rax
	movzbl	5(%rax), %eax
	andl	$1, %eax
	movq	-528(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-528(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	movq	-528(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-408(%rbp), %rax
	movzwl	4(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-528(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-408(%rbp), %rax
	movw	6(%rax), %ax
	movq	-528(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-408(%rbp), %rax
	movb	(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$4, %eax
	jbe	.LBB1_332
# BB#376:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_377
.LBB1_332:                              #   in Loop: Header=BB1_306 Depth=1
	jmpq	*.LJTI1_2(,%rax,8)
.LBB1_333:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzwl	46(%rax), %ecx
	movzbl	42(%rax), %edx
	movzbl	41(%rax), %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movw	%si, 46(%rax)
	jmp	.LBB1_377
.LBB1_334:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB1_377
	jmp	.LBB1_335
.LBB1_336:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzwl	46(%rax), %ecx
	movzbl	42(%rax), %edx
	movzbl	41(%rax), %esi
	addl	%edx, %esi
	imull	%ecx, %esi
	movw	%si, 46(%rax)
	movq	-528(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_377
# BB#337:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movq	%rax, -584(%rbp)
	jmp	.LBB1_338
	.align	16, 0x90
.LBB1_344:                              #   in Loop: Header=BB1_338 Depth=2
	movq	-584(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_345
	.align	16, 0x90
.LBB1_346:                              #   in Loop: Header=BB1_345 Depth=3
	movq	-584(%rbp), %rax
.LBB1_345:                              #   Parent Loop BB1_306 Depth=1
                                        #     Parent Loop BB1_338 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_346
.LBB1_338:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_345 Depth 3
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$17, %ecx
	je	.LBB1_343
# BB#339:                               #   in Loop: Header=BB1_338 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$24, %ecx
	je	.LBB1_343
# BB#340:                               #   in Loop: Header=BB1_338 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$25, %ecx
	je	.LBB1_343
# BB#341:                               #   in Loop: Header=BB1_338 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_343
# BB#342:                               #   in Loop: Header=BB1_338 Depth=2
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$37, %eax
	sete	%al
	.align	16, 0x90
.LBB1_343:                              #   in Loop: Header=BB1_338 Depth=2
	testb	%al, %al
	jne	.LBB1_344
# BB#347:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_349
# BB#348:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_377
.LBB1_349:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -536(%rbp)
	jmp	.LBB1_350
.LBB1_351:                              #   in Loop: Header=BB1_350 Depth=2
	incq	-536(%rbp)
.LBB1_350:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-536(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_351
# BB#352:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -536(%rbp)
	je	.LBB1_377
# BB#353:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-536(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$0, LanguageSentenceEnds(,%rax,4)
	je	.LBB1_377
# BB#354:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rdi
	xorl	%esi, %esi
	jmp	.LBB1_355
.LBB1_357:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	je	.LBB1_335
# BB#358:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movq	%rax, -584(%rbp)
	jmp	.LBB1_359
	.align	16, 0x90
.LBB1_365:                              #   in Loop: Header=BB1_359 Depth=2
	movq	-584(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_366
	.align	16, 0x90
.LBB1_367:                              #   in Loop: Header=BB1_366 Depth=3
	movq	-584(%rbp), %rax
.LBB1_366:                              #   Parent Loop BB1_306 Depth=1
                                        #     Parent Loop BB1_359 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -584(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_367
.LBB1_359:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_366 Depth 3
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$17, %ecx
	je	.LBB1_364
# BB#360:                               #   in Loop: Header=BB1_359 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$24, %ecx
	je	.LBB1_364
# BB#361:                               #   in Loop: Header=BB1_359 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$25, %ecx
	je	.LBB1_364
# BB#362:                               #   in Loop: Header=BB1_359 Depth=2
	movq	-584(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	je	.LBB1_364
# BB#363:                               #   in Loop: Header=BB1_359 Depth=2
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$37, %eax
	sete	%al
	.align	16, 0x90
.LBB1_364:                              #   in Loop: Header=BB1_359 Depth=2
	testb	%al, %al
	jne	.LBB1_365
# BB#368:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_370
# BB#369:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_377
.LBB1_370:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -536(%rbp)
	jmp	.LBB1_371
.LBB1_372:                              #   in Loop: Header=BB1_371 Depth=2
	incq	-536(%rbp)
.LBB1_371:                              #   Parent Loop BB1_306 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-536(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_372
# BB#373:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rax
	addq	$64, %rax
	cmpq	%rax, -536(%rbp)
	je	.LBB1_377
# BB#374:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-536(%rbp), %rax
	movzbl	-1(%rax), %eax
	cmpl	$0, LanguageSentenceEnds(,%rax,4)
	je	.LBB1_377
# BB#375:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rdi
	movl	$1, %esi
.LBB1_355:                              #   in Loop: Header=BB1_306 Depth=1
	callq	LanguageWordEndsSentence
	testl	%eax, %eax
	je	.LBB1_377
# BB#356:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-408(%rbp), %rax
	movzwl	6(%rax), %eax
	movq	-528(%rbp), %rcx
	movzwl	46(%rcx), %edx
	addl	%eax, %edx
	movw	%dx, 46(%rcx)
	jmp	.LBB1_377
.LBB1_335:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movw	$0, 46(%rax)
.LBB1_377:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	cmpw	$0, 46(%rax)
	sete	%cl
	movzbl	%cl, %ecx
	movzwl	44(%rax), %edx
	shll	$7, %ecx
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%ecx, %edx
	movw	%dx, 44(%rax)
	movq	-528(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jg	.LBB1_380
# BB#378:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB1_383
# BB#379:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4097, %eax             # imm = 0x1001
	jl	.LBB1_383
.LBB1_380:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB1_383
# BB#381:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB1_383
# BB#382:                               #   in Loop: Header=BB1_306 Depth=1
	movl	$1, -688(%rbp)
	.align	16, 0x90
.LBB1_383:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_385
# BB#384:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_431
.LBB1_385:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB1_431
# BB#386:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	btl	$7, 44(%rax)
	jae	.LBB1_431
# BB#387:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	jne	.LBB1_431
# BB#388:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	jne	.LBB1_431
# BB#389:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB1_431
# BB#390:                               #   in Loop: Header=BB1_306 Depth=1
	cmpq	$0, -592(%rbp)
	je	.LBB1_431
# BB#391:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_393
# BB#392:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_431
.LBB1_393:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-528(%rbp), %rax
	movzbl	45(%rax), %eax
	testb	$1, %al
	jne	.LBB1_431
# BB#394:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	andl	%r13d, %eax
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%r13d, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_431
# BB#395:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$12, %ecx
	andl	$1023, %ecx             # imm = 0x3FF
	cmpl	%ecx, %eax
	jne	.LBB1_431
# BB#396:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$22, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_431
# BB#397:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %ecx
	shrl	$23, %ecx
	andl	$63, %ecx
	cmpl	%ecx, %eax
	jne	.LBB1_431
# BB#398:                               #   in Loop: Header=BB1_306 Depth=1
	movl	$-4096, %ebx            # imm = 0xFFFFFFFFFFFFF000
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB1_400
# BB#399:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_400:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB1_402
# BB#401:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_402:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, -1448(%rbp)       # 8-byte Spill
	movq	-504(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	-1448(%rbp), %rax       # 8-byte Folded Reload
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_404
# BB#403:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-592(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	-504(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$8, %edi
	movl	$24, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_404:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movq	%rax, -584(%rbp)
	movq	-592(%rbp), %rax
	movzbl	32(%rax), %ecx
	movb	$1, %al
	cmpl	$12, %ecx
	je	.LBB1_406
# BB#405:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	sete	%al
.LBB1_406:                              #   in Loop: Header=BB1_306 Depth=1
	movzbl	%al, %edi
	addl	$11, %edi
	movl	%edi, -724(%rbp)
	movq	-592(%rbp), %rcx
	movq	-504(%rbp), %rdx
	addq	$64, %rdx
	leaq	64(%rcx), %rsi
	addq	$32, %rcx
	callq	MakeWordTwo
	movq	%rax, -504(%rbp)
	movq	-592(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	%r13d, %ecx
	movl	40(%rax), %edx
	andl	%ebx, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-592(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-592(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-592(%rbp), %rax
	movq	-504(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-592(%rbp), %rax
	movl	40(%rax), %eax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	%ecx, %eax
	movq	-504(%rbp), %rcx
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-504(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r14d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-512(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_408
# BB#407:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_408:                              #   in Loop: Header=BB1_306 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-504(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_411
# BB#409:                               #   in Loop: Header=BB1_306 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_411
# BB#410:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_411:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-584(%rbp), %rdi
	callq	DisposeObject
	movq	-592(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_413
# BB#412:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_413:                              #   in Loop: Header=BB1_306 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_415
# BB#414:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_415:                              #   in Loop: Header=BB1_306 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_417
# BB#416:                               #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_418
.LBB1_417:                              #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_419
.LBB1_418:                              #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_419:                              #   in Loop: Header=BB1_306 Depth=1
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
	jne	.LBB1_421
# BB#420:                               #   in Loop: Header=BB1_306 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_421:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-520(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB1_423
# BB#422:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_423:                              #   in Loop: Header=BB1_306 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_425
# BB#424:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_425:                              #   in Loop: Header=BB1_306 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_427
# BB#426:                               #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_428
.LBB1_427:                              #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_429
.LBB1_428:                              #   in Loop: Header=BB1_306 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_429:                              #   in Loop: Header=BB1_306 Depth=1
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
	jne	.LBB1_431
# BB#430:                               #   in Loop: Header=BB1_306 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	.align	16, 0x90
.LBB1_431:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-504(%rbp), %rax
	movq	%rax, -592(%rbp)
	cmpl	$0, -444(%rbp)
	je	.LBB1_443
# BB#432:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-440(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_443
# BB#433:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -736(%rbp)
	movq	-440(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -744(%rbp)
	movq	-512(%rbp), %rax
	movq	%rax, -752(%rbp)
	movq	-736(%rbp), %rax
	cmpq	-744(%rbp), %rax
	je	.LBB1_442
# BB#434:                               #   in Loop: Header=BB1_306 Depth=1
	movq	-736(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_436
# BB#435:                               #   in Loop: Header=BB1_306 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_436:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-736(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-744(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_439
# BB#437:                               #   in Loop: Header=BB1_306 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_439
# BB#438:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_439:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-736(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-752(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_442
# BB#440:                               #   in Loop: Header=BB1_306 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_442
# BB#441:                               #   in Loop: Header=BB1_306 Depth=1
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
.LBB1_442:                              #   in Loop: Header=BB1_306 Depth=1
	movq	-440(%rbp), %rax
	movq	(%rax), %rdi
	callq	DisposeObject
	movq	-440(%rbp), %rax
	movq	$0, (%rax)
	jmp	.LBB1_443
.LBB1_118:
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_119
# BB#120:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_121
.LBB1_866:
	movq	-120(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_867
.LBB1_868:                              #   in Loop: Header=BB1_867 Depth=1
	movq	-144(%rbp), %rax
.LBB1_867:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_868
	jmp	.LBB1_843
.LBB1_1241:
	movl	-648(%rbp), %edx
	subl	-652(%rbp), %edx
.LBB1_1242:
	leaq	-1440(%rbp), %rbx
	movl	$.L.str.39, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-392(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movq	%rbx, %rsi
	jmp	.LBB1_1244
.LBB1_1269:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_1271:
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
	movq	%rax, -568(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_1273
# BB#1272:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_1276
.LBB1_1273:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_1274
# BB#1275:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_1276
.LBB1_1274:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_1276:
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
	movq	-568(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1279
# BB#1277:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1279
# BB#1278:
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
.LBB1_1279:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-552(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1282
# BB#1280:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1282
# BB#1281:
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
.LBB1_1282:
	movq	-544(%rbp), %rdi
	movq	-552(%rbp), %rsi
	jmp	.LBB1_1293
.LBB1_1214:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_1215:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1217
# BB#1216:
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
.LBB1_1217:
	movq	%rax, xx_tmp(%rip)
	movq	-584(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1220
# BB#1218:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1220
# BB#1219:
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
.LBB1_1220:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	-584(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_1291:
	movq	-504(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$36, %esi
.LBB1_1292:
	movl	$.L.str.41, %edx
	movl	$2, %ecx
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-544(%rbp), %rdi
	movq	-400(%rbp), %rsi
.LBB1_1293:
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -544(%rbp)
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1295
# BB#1294:
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
.LBB1_1295:
	movq	%rax, xx_tmp(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1298
# BB#1296:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1298
# BB#1297:
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
.LBB1_1298:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	cmpq	$0, -568(%rbp)
	je	.LBB1_1301
# BB#1299:
	movq	-568(%rbp), %rdi
.LBB1_1300:
	callq	DisposeObject
.LBB1_1301:
	movq	-544(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_842:
	movq	-120(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$8, %esi
	movl	$.L.str.71, %edx
	movl	$2, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_843:
	cmpq	$0, -144(%rbp)
	jne	.LBB1_846
# BB#844:
	cmpq	$0, -160(%rbp)
	je	.LBB1_894
# BB#845:
	movq	-104(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	-160(%rbp), %rcx
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
	movq	-168(%rbp), %rax
	movq	%rax, -144(%rbp)
.LBB1_846:
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
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
.LBB1_848:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_850
# BB#849:
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
.LBB1_850:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_852
# BB#851:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_895
.LBB1_852:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_896
.LBB1_895:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_896:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-240(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_898
# BB#897:
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
.LBB1_898:
	movq	%rax, xx_tmp(%rip)
	movq	-144(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_901
# BB#899:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_901
# BB#900:
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
.LBB1_901:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-144(%rbp), %rdi
.LBB1_902:                              # %ManifestCase.exit
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-176(%rbp), %r11d
	movq	-88(%rbp), %rax
	movl	-192(%rbp), %ebx
	jmp	.LBB1_903
.LBB1_40:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_41:
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
	jne	.LBB1_43
# BB#42:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_43:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
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
.LBB1_44:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_46:
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
	movq	-176(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_49
# BB#47:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_49
# BB#48:
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
.LBB1_49:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_52
# BB#50:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_52
# BB#51:
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
.LBB1_52:
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-88(%rbp), %rax
	movq	$0, (%rax)
	movq	-240(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-280(%rbp), %r11d
	movq	-88(%rbp), %rax
	movl	-296(%rbp), %ebx
.LBB1_903:                              # %ManifestCl.exit
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -240(%rbp)
	jmp	.LBB1_189
.LBB1_1131:
	movq	-624(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -880(%rbp)
	movq	-608(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -888(%rbp)
	movq	-616(%rbp), %rax
	movq	%rax, -896(%rbp)
	movq	-880(%rbp), %rax
	cmpq	-888(%rbp), %rax
	je	.LBB1_1148
# BB#1132:
	movq	-880(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1134
# BB#1133:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_1134:
	movq	-880(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-888(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1137
# BB#1135:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1137
# BB#1136:
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
.LBB1_1137:
	movq	-880(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-896(%rbp), %rax
.LBB1_1145:
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1148
# BB#1146:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1148
# BB#1147:
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
.LBB1_1148:
	movq	-624(%rbp), %rax
.LBB1_1149:
	movq	%rax, -544(%rbp)
.LBB1_1150:
	movq	-392(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1152
# BB#1151:
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
.LBB1_1152:
	movq	%rax, xx_tmp(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1155
# BB#1153:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1155
# BB#1154:
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
.LBB1_1155:
	movq	-392(%rbp), %rdi
	callq	DisposeObject
	movq	-544(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_195
.LBB1_1337:
	movq	-96(%rbp), %rax
	movb	$-122, 41(%rax)
	jmp	.LBB1_1346
.LBB1_166:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_168:
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
	movq	%rax, -160(%rbp)
	movq	-240(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-240(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-160(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-240(%rbp), %rax
	andl	36(%rax), %esi
	movq	-160(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	104(%rax), %rax
	movq	-160(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-240(%rbp), %rdi
	callq	FilterSetFileNames
	movq	-160(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-296(%rbp), %ecx
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
	je	.LBB1_171
# BB#169:
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_171
# BB#170:
	movq	-160(%rbp), %rbx
	addq	$32, %rbx
	movq	-112(%rbp), %rax
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
.LBB1_171:
	movq	-240(%rbp), %rdi
	movq	-160(%rbp), %rsi
	addq	$64, %rsi
	movq	-120(%rbp), %rdx
	callq	FilterExecute
	movq	%rax, -96(%rbp)
	movq	-160(%rbp), %rdi
	callq	DisposeObject
	movq	-240(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_173
# BB#172:
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
.LBB1_173:
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_176
# BB#174:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_176
# BB#175:
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
.LBB1_176:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB1_177:
	movq	-240(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movq	-64(%rbp), %r8
	movq	-72(%rbp), %r9
	movq	-80(%rbp), %r10
	movl	-280(%rbp), %r11d
	movq	-88(%rbp), %rax
	movl	-296(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$0, 16(%rsp)
	callq	Manifest
	movq	%rax, -240(%rbp)
	movq	-128(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_186
.LBB1_214:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_216:
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
	movq	%rax, -568(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_218
# BB#217:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_221
.LBB1_218:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_219
# BB#220:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_221
.LBB1_894:
	movq	-104(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$12, %esi
	movl	$.L.str.75, %edx
	jmp	.LBB1_826
.LBB1_219:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_221:
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
	movq	-568(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_224
# BB#222:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_224
# BB#223:
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
.LBB1_224:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-552(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_227
# BB#225:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_227
# BB#226:
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
.LBB1_227:
	movq	-392(%rbp), %rdi
	movq	-552(%rbp), %rsi
	movq	-440(%rbp), %rcx
	leaq	-560(%rbp), %r8
	xorl	%edx, %edx
	callq	ClosureExpand
	movq	%rax, -392(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_229
# BB#228:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_232
.LBB1_229:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_230
# BB#231:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_232
.LBB1_230:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_232:
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
	movq	%rax, -576(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_234
# BB#233:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_237
.LBB1_234:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_235
# BB#236:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_237
.LBB1_235:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_237:
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
	je	.LBB1_240
# BB#238:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_240
# BB#239:
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
.LBB1_240:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-560(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_243
# BB#241:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_243
# BB#242:
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
.LBB1_243:
	movq	-392(%rbp), %rdi
	movq	-560(%rbp), %rsi
	movq	-408(%rbp), %rdx
	movq	-416(%rbp), %rcx
	movq	-424(%rbp), %r8
	movq	-432(%rbp), %r9
	movq	-440(%rbp), %r10
	movl	-444(%rbp), %r11d
	movq	-456(%rbp), %rax
	movl	-460(%rbp), %ebx
	movl	%ebx, 32(%rsp)
	movq	%rax, 24(%rsp)
	movl	%r11d, 8(%rsp)
	movq	%r10, (%rsp)
	movl	$1, 16(%rsp)
	callq	Manifest
	movq	%rax, -392(%rbp)
	movq	-568(%rbp), %rdi
	callq	DisposeObject
	movq	-576(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_1395
.LBB1_1313:
	movq	-96(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$13, %esi
	movl	$.L.str.77, %edx
	jmp	.LBB1_1314
.LBB1_1341:
	movq	-96(%rbp), %rax
	movb	$127, 41(%rax)
	jmp	.LBB1_1346
.LBB1_119:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_121:
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
	movq	%rax, -192(%rbp)
	movq	-240(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-240(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-192(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-240(%rbp), %rax
	andl	36(%rax), %esi
	movq	-192(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-112(%rbp), %rax
	movq	-192(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-192(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-192(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-192(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-112(%rbp), %rax
	movzbl	43(%rax), %eax
	movq	-192(%rbp), %rcx
	movzwl	42(%rcx), %edx
	andl	$32, %eax
	shll	$3, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-192(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-192(%rbp), %rax
	orw	$128, 42(%rax)
	movq	-192(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-240(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_123
# BB#122:
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
.LBB1_123:
	movq	%rax, xx_tmp(%rip)
	movq	-192(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_126
# BB#124:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_126
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
.LBB1_126:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_127
# BB#128:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_129
.LBB1_127:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_129:
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
	movq	-192(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_132
# BB#130:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_132
# BB#131:
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
.LBB1_132:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-240(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_135
# BB#133:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_135
# BB#134:
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
.LBB1_135:
	movq	-272(%rbp), %rdi
	movq	-240(%rbp), %rsi
	callq	AttachEnv
	movq	-192(%rbp), %rdi
	callq	SetTarget
	movq	-112(%rbp), %rcx
	xorl	%eax, %eax
	movzbl	126(%rcx), %ecx
	btl	$5, %ecx
	jae	.LBB1_137
# BB#136:
	movq	-192(%rbp), %rdi
	callq	BuildEnclose
.LBB1_137:
	movq	-192(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-192(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-192(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-192(%rbp), %rax
	movq	%rax, -240(%rbp)
.LBB1_179:
	movq	-56(%rbp), %rcx
	movb	$1, %al
	cmpq	$0, (%rcx)
	jne	.LBB1_181
# BB#180:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	setne	%al
.LBB1_181:
	movq	-240(%rbp), %rcx
	movzbl	%al, %eax
	movzwl	42(%rcx), %edx
	shll	$2, %eax
	andl	$65531, %edx            # imm = 0xFFFB
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_185
# BB#182:
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_185
# BB#183:
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_185
# BB#184:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_186
.LBB1_185:
	movq	-240(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	insert_split
	movq	%rax, -240(%rbp)
.LBB1_186:
	cmpq	$0, -136(%rbp)
	je	.LBB1_188
# BB#187:
	movq	-136(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB1_188
.LBB1_1345:
	movq	-96(%rbp), %rax
	movb	$-128, 41(%rax)
.LBB1_1346:
	movq	-240(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_1347
.LBB1_1348:                             #   in Loop: Header=BB1_1347 Depth=1
	movq	-104(%rbp), %rax
.LBB1_1347:                             # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_1348
# BB#1350:
	movq	-104(%rbp), %rdi
	movq	-272(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	-80(%rbp), %rax
	movl	-136(%rbp), %ecx
	movl	%ecx, 32(%rsp)
	movq	%rax, (%rsp)
	movq	$nenclose, 24(%rsp)
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$nbt, %ecx
	movl	$nft, %r8d
	movl	$ntarget, %r9d
	callq	Manifest
	movq	%rax, -104(%rbp)
	movl	$1, %esi
	movq	%rax, %rdi
	callq	ReplaceWithTidy
	movq	%rax, -104(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_1353
# BB#1351:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_1352
.LBB1_1353:
	movq	-112(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1355
# BB#1354:
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
.LBB1_1355:
	movq	%rax, xx_tmp(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1358
# BB#1356:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1358
# BB#1357:
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
.LBB1_1358:
	movq	-112(%rbp), %rdi
	callq	DisposeObject
	movq	-240(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_1360
# BB#1359:
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
.LBB1_1360:
	movq	%rax, xx_tmp(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_1363
# BB#1361:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_1363
# BB#1362:
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
.LBB1_1363:
	movq	-240(%rbp), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-56(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_1367
# BB#1364:
	movq	-56(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB1_1367
# BB#1365:
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB1_1367
# BB#1366:
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB1_188
.LBB1_1367:
	movq	-240(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %rdx
	callq	insert_split
	movq	%rax, -240(%rbp)
.LBB1_188:
	movq	-240(%rbp), %rax
.LBB1_189:                              # %ManifestCl.exit
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -392(%rbp)
	jmp	.LBB1_1395
.LBB1_1352:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	xorl	%ebx, %ebx
	movl	$8, %edi
	movl	$17, %esi
	movl	$.L.str.86, %edx
	jmp	.LBB1_1314
.LBB1_101:
	movq	-184(%rbp), %rax
.LBB1_103:
	movq	%rax, -272(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_104
# BB#105:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_106
.LBB1_104:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_106:
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
	movq	%rax, -136(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_107
# BB#108:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_109
.LBB1_107:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_109:
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
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_112
# BB#110:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_112
# BB#111:
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
.LBB1_112:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-272(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_116
# BB#113:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_116
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
	jmp	.LBB1_116
.Lfunc_end1:
	.size	Manifest, .Lfunc_end1-Manifest
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_19
	.quad	.LBB1_1393
	.quad	.LBB1_190
	.quad	.LBB1_200
	.quad	.LBB1_201
	.quad	.LBB1_201
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_251
	.quad	.LBB1_251
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_279
	.quad	.LBB1_444
	.quad	.LBB1_444
	.quad	.LBB1_687
	.quad	.LBB1_693
	.quad	.LBB1_687
	.quad	.LBB1_693
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_647
	.quad	.LBB1_647
	.quad	.LBB1_662
	.quad	.LBB1_662
	.quad	.LBB1_731
	.quad	.LBB1_731
	.quad	.LBB1_731
	.quad	.LBB1_731
	.quad	.LBB1_734
	.quad	.LBB1_763
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_672
	.quad	.LBB1_731
	.quad	.LBB1_731
	.quad	.LBB1_731
	.quad	.LBB1_195
	.quad	.LBB1_195
	.quad	.LBB1_968
	.quad	.LBB1_968
	.quad	.LBB1_968
	.quad	.LBB1_705
	.quad	.LBB1_725
	.quad	.LBB1_799
	.quad	.LBB1_771
	.quad	.LBB1_771
	.quad	.LBB1_770
	.quad	.LBB1_904
	.quad	.LBB1_1393
	.quad	.LBB1_913
	.quad	.LBB1_940
	.quad	.LBB1_940
	.quad	.LBB1_940
	.quad	.LBB1_940
	.quad	.LBB1_940
	.quad	.LBB1_979
	.quad	.LBB1_940
	.quad	.LBB1_968
	.quad	.LBB1_940
	.quad	.LBB1_926
	.quad	.LBB1_930
	.quad	.LBB1_930
	.quad	.LBB1_936
	.quad	.LBB1_936
	.quad	.LBB1_986
	.quad	.LBB1_986
	.quad	.LBB1_986
	.quad	.LBB1_1156
	.quad	.LBB1_1194
	.quad	.LBB1_1221
	.quad	.LBB1_1227
	.quad	.LBB1_1227
	.quad	.LBB1_4
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1393
	.quad	.LBB1_1250
	.quad	.LBB1_1302
	.quad	.LBB1_1382
	.quad	.LBB1_1382
	.quad	.LBB1_1368
	.quad	.LBB1_1368
	.quad	.LBB1_1376
	.quad	.LBB1_1376
.LJTI1_1:
	.quad	.LBB1_948
	.quad	.LBB1_949
	.quad	.LBB1_950
	.quad	.LBB1_951
	.quad	.LBB1_952
	.quad	.LBB1_955
	.quad	.LBB1_953
	.quad	.LBB1_955
	.quad	.LBB1_954
.LJTI1_2:
	.quad	.LBB1_333
	.quad	.LBB1_334
	.quad	.LBB1_377
	.quad	.LBB1_336
	.quad	.LBB1_357

	.text
	.align	16, 0x90
	.type	insert_split,@function
insert_split:                           # @insert_split
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp18:
	.cfi_offset %rbx, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.55, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movzbl	zz_lengths+9(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_7
.LBB2_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_7
.LBB2_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_7:
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
	je	.LBB2_9
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
.LBB2_9:
	movq	%rax, xx_tmp(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_12
# BB#10:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_12
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
.LBB2_12:
	movl	$0, -68(%rbp)
	movb	$1, %bl
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_13 Depth=1
	incl	-68(%rbp)
.LBB2_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1, -68(%rbp)
	jg	.LBB2_82
# BB#14:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB2_69
.LBB2_16:                               #   in Loop: Header=BB2_13 Depth=1
	movl	$16, %eax
	cmpl	$0, -68(%rbp)
	je	.LBB2_18
# BB#17:                                # %select.mid
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	$15, %eax
.LBB2_18:                               # %select.end
                                        #   in Loop: Header=BB2_13 Depth=1
	cltq
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_20
# BB#19:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_23
	.align	16, 0x90
.LBB2_20:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_21
# BB#22:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_23
.LBB2_21:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_13 Depth=1
	movl	$16, %eax
	cmpl	$0, -68(%rbp)
	je	.LBB2_25
# BB#24:                                # %select.mid2
                                        #   in Loop: Header=BB2_13 Depth=1
	movl	$15, %eax
.LBB2_25:                               # %select.end1
                                        #   in Loop: Header=BB2_13 Depth=1
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
	jne	.LBB2_27
# BB#26:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_28
# BB#29:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_30
.LBB2_28:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_30:                               #   in Loop: Header=BB2_13 Depth=1
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
	je	.LBB2_33
# BB#31:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_33
# BB#32:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_33:                               #   in Loop: Header=BB2_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_36
# BB#34:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_36
# BB#35:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_36:                               #   in Loop: Header=BB2_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_38
# BB#37:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_41
	.align	16, 0x90
.LBB2_38:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_39
# BB#40:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_41
.LBB2_39:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_41:                               #   in Loop: Header=BB2_13 Depth=1
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
	je	.LBB2_44
# BB#42:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_44
# BB#43:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_44:                               #   in Loop: Header=BB2_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_47
# BB#45:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_47
# BB#46:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_47:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-40(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB2_59
# BB#48:                                #   in Loop: Header=BB2_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_50
# BB#49:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_53
	.align	16, 0x90
.LBB2_50:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_51
# BB#52:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_53
.LBB2_69:                               #   in Loop: Header=BB2_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_71
# BB#70:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_74
.LBB2_51:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_53:                               #   in Loop: Header=BB2_13 Depth=1
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
	je	.LBB2_56
# BB#54:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_56
# BB#55:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_56:                               #   in Loop: Header=BB2_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_59
# BB#57:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_59
# BB#58:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_59:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	-68(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB2_81
# BB#60:                                #   in Loop: Header=BB2_13 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_62
# BB#61:                                #   in Loop: Header=BB2_13 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_65
	.align	16, 0x90
.LBB2_62:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_63
# BB#64:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_65
.LBB2_63:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_65:                               #   in Loop: Header=BB2_13 Depth=1
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
	je	.LBB2_68
# BB#66:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_68
# BB#67:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_68:                               #   in Loop: Header=BB2_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	jmp	.LBB2_78
.LBB2_71:                               #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_72
# BB#73:                                #   in Loop: Header=BB2_13 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_74
.LBB2_72:                               #   in Loop: Header=BB2_13 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_74:                               #   in Loop: Header=BB2_13 Depth=1
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
	je	.LBB2_77
# BB#75:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_77
# BB#76:                                #   in Loop: Header=BB2_13 Depth=1
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
.LBB2_77:                               #   in Loop: Header=BB2_13 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
.LBB2_78:                               #   in Loop: Header=BB2_13 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_81
# BB#79:                                #   in Loop: Header=BB2_13 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_81
# BB#80:                                #   in Loop: Header=BB2_13 Depth=1
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
	jmp	.LBB2_81
.LBB2_82:
	movq	-56(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	insert_split, .Lfunc_end2-insert_split
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI3_0:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_1:
	.long	1120403456              # float 100
	.text
	.align	16, 0x90
	.type	GetScaleFactor,@function
GetScaleFactor:                         # @GetScaleFactor
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
	movzbl	32(%rdi), %eax
	cmpl	$11, %eax
	je	.LBB3_3
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_2
.LBB3_3:
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	leaq	-12(%rbp), %rdx
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB3_5
# BB#4:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$4, %esi
	movl	$.L.str.66, %edx
	jmp	.LBB3_9
.LBB3_5:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI3_0(%rip), %xmm1   # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	.LBB3_7
# BB#6:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$5, %esi
	movl	$.L.str.67, %edx
	jmp	.LBB3_9
.LBB3_2:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$8, %edi
	movl	$3, %esi
	movl	$.L.str.64, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_10
.LBB3_7:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI3_1(%rip), %xmm0
	jbe	.LBB3_11
# BB#8:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$8, %edi
	movl	$6, %esi
	movl	$.L.str.68, %edx
.LBB3_9:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_10:
	movl	$1065353216, -12(%rbp)  # imm = 0x3F800000
.LBB3_11:
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	GetScaleFactor, .Lfunc_end3-GetScaleFactor
	.cfi_endproc

	.align	16, 0x90
	.type	SetUnderline,@function
SetUnderline:                           # @SetUnderline
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$17, %eax
	jne	.LBB4_7
# BB#1:
	movq	-8(%rbp), %rax
	jmp	.LBB4_2
	.align	16, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	movq	-16(%rbp), %rdi
	callq	SetUnderline
	movq	-24(%rbp), %rax
.LBB4_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB4_7
# BB#3:                                 #   in Loop: Header=BB4_2 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_4 Depth=2
	movq	-16(%rbp), %rax
.LBB4_4:                                #   Parent Loop BB4_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_5
	jmp	.LBB4_6
.LBB4_7:
	movq	-8(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$1073741824, %ecx       # imm = 0x40000000
	movl	%ecx, 40(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	SetUnderline, .Lfunc_end4-SetUnderline
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
