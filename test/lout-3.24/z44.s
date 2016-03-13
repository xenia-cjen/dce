	.text
	.file	"z44.opt"
	.globl	VerticalHyphenate
	.align	16, 0x90
	.type	VerticalHyphenate,@function
VerticalHyphenate:                      # @VerticalHyphenate
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
	pushq	%rbx
	subq	$248, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -72(%rbp)
	movl	$0, -140(%rbp)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$18, %eax
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
	movq	-24(%rbp), %rax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
                                        #     Child Loop BB0_13 Depth 2
                                        #     Child Loop BB0_19 Depth 2
                                        #     Child Loop BB0_22 Depth 2
                                        #     Child Loop BB0_31 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_43
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_5
	.align	16, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	-80(%rbp), %rax
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_6
# BB#7:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_10
# BB#8:                                 #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB0_42
	jmp	.LBB0_9
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	je	.LBB0_12
# BB#11:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$24, %eax
	jne	.LBB0_15
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=2
	movq	-88(%rbp), %rax
.LBB0_13:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_14
	jmp	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_16:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_17
# BB#18:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_19
	.align	16, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_19 Depth=2
	movq	-96(%rbp), %rax
.LBB0_19:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_20
# BB#21:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_22 Depth=2
	movq	-104(%rbp), %rax
.LBB0_22:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_23
# BB#24:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	jne	.LBB0_25
# BB#26:                                #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB0_28
# BB#27:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, -72(%rbp)
.LBB0_28:                               #   in Loop: Header=BB0_3 Depth=1
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_29
# BB#30:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_31 Depth=2
	movq	-112(%rbp), %rax
.LBB0_31:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_32
# BB#33:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_34
# BB#35:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	je	.LBB0_39
# BB#36:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-140(%rbp), %eax
	movq	-96(%rbp), %rcx
	cmpl	60(%rcx), %eax
	jge	.LBB0_38
# BB#37:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rax
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_3 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB0_40
# BB#41:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-96(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -136(%rbp)
	jmp	.LBB0_42
.LBB0_38:                               #   in Loop: Header=BB0_3 Depth=1
	movl	-140(%rbp), %eax
	movl	%eax, -140(%rbp)
	movq	-56(%rbp), %rax
	jmp	.LBB0_3
.LBB0_43:
	cmpq	$0, -32(%rbp)
	je	.LBB0_44
# BB#45:
	movl	$1, -144(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_46
	.align	16, 0x90
.LBB0_54:                               #   in Loop: Header=BB0_46 Depth=1
	movzbl	%al, %eax
	movl	%eax, -144(%rbp)
	movq	-56(%rbp), %rax
.LBB0_46:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_48 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_57
# BB#47:                                #   in Loop: Header=BB0_46 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_48 Depth=2
	movq	-120(%rbp), %rax
.LBB0_48:                               #   Parent Loop BB0_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_49
# BB#50:                                #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_55
# BB#51:                                #   in Loop: Header=BB0_46 Depth=1
	cmpl	$0, -144(%rbp)
	je	.LBB0_52
# BB#53:                                #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_54
	.align	16, 0x90
.LBB0_55:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_59
# BB#56:                                #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_63
	jmp	.LBB0_57
	.align	16, 0x90
.LBB0_59:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_60
# BB#61:                                #   in Loop: Header=BB0_46 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_62
.LBB0_52:                               #   in Loop: Header=BB0_46 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_54
.LBB0_60:                               #   in Loop: Header=BB0_46 Depth=1
	xorl	%eax, %eax
.LBB0_62:                               #   in Loop: Header=BB0_46 Depth=1
	testb	%al, %al
	jne	.LBB0_57
.LBB0_63:                               #   in Loop: Header=BB0_46 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_46
	.align	16, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-120(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	cmpq	-160(%rbp), %rax
	je	.LBB0_75
# BB#67:                                #   in Loop: Header=BB0_57 Depth=1
	movq	-152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_69
# BB#68:                                #   in Loop: Header=BB0_57 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_69:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-160(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_72
# BB#70:                                #   in Loop: Header=BB0_57 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_72
# BB#71:                                #   in Loop: Header=BB0_57 Depth=1
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
.LBB0_72:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-152(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_75
# BB#73:                                #   in Loop: Header=BB0_57 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_75
# BB#74:                                #   in Loop: Header=BB0_57 Depth=1
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
.LBB0_75:                               #   in Loop: Header=BB0_57 Depth=1
	movq	-56(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_77
# BB#76:                                #   in Loop: Header=BB0_57 Depth=1
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
.LBB0_77:                               #   in Loop: Header=BB0_57 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_79
# BB#78:                                #   in Loop: Header=BB0_57 Depth=1
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
.LBB0_79:                               #   in Loop: Header=BB0_57 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_81
# BB#80:                                #   in Loop: Header=BB0_57 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_82
.LBB0_81:                               #   in Loop: Header=BB0_57 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_83
	.align	16, 0x90
.LBB0_82:                               #   in Loop: Header=BB0_57 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_83:                               #   in Loop: Header=BB0_57 Depth=1
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
	jne	.LBB0_85
# BB#84:                                #   in Loop: Header=BB0_57 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_85:                               #   in Loop: Header=BB0_57 Depth=1
	movl	$1, -144(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_94:                               #   in Loop: Header=BB0_86 Depth=2
	movzbl	%al, %eax
	movl	%eax, -144(%rbp)
	movq	-56(%rbp), %rax
.LBB0_86:                               #   Parent Loop BB0_57 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_88 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_57
# BB#87:                                #   in Loop: Header=BB0_86 Depth=2
	movq	-56(%rbp), %rax
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_89:                               #   in Loop: Header=BB0_88 Depth=3
	movq	-120(%rbp), %rax
.LBB0_88:                               #   Parent Loop BB0_57 Depth=1
                                        #     Parent Loop BB0_86 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_89
# BB#90:                                #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_95
# BB#91:                                #   in Loop: Header=BB0_86 Depth=2
	cmpl	$0, -144(%rbp)
	je	.LBB0_92
# BB#93:                                #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_94
	.align	16, 0x90
.LBB0_95:                               #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_97
# BB#96:                                #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_101
	jmp	.LBB0_57
	.align	16, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_98
# BB#99:                                #   in Loop: Header=BB0_86 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_100
.LBB0_92:                               #   in Loop: Header=BB0_86 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_94
.LBB0_98:                               #   in Loop: Header=BB0_86 Depth=2
	xorl	%eax, %eax
.LBB0_100:                              #   in Loop: Header=BB0_86 Depth=2
	testb	%al, %al
	jne	.LBB0_57
.LBB0_101:                              #   in Loop: Header=BB0_86 Depth=2
	movq	-56(%rbp), %rax
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_86 Depth 2
                                        #       Child Loop BB0_88 Depth 3
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_58
# BB#64:                                #   in Loop: Header=BB0_57 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_58:                               #   in Loop: Header=BB0_57 Depth=1
	xorl	%eax, %eax
.LBB0_65:                               #   in Loop: Header=BB0_57 Depth=1
	testb	%al, %al
	jne	.LBB0_66
# BB#102:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_106
# BB#103:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_105
# BB#104:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jl	.LBB0_106
.LBB0_105:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_106:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_107
# BB#108:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_109
	.align	16, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_109 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_109:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_111 Depth 2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_126
# BB#110:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_111
	.align	16, 0x90
.LBB0_112:                              #   in Loop: Header=BB0_111 Depth=2
	movq	-128(%rbp), %rax
.LBB0_111:                              #   Parent Loop BB0_109 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_112
# BB#113:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_118
# BB#114:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_115
# BB#116:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_117
	.align	16, 0x90
.LBB0_118:                              #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_120
# BB#119:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_109
	jmp	.LBB0_124
	.align	16, 0x90
.LBB0_120:                              #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_121
# BB#122:                               #   in Loop: Header=BB0_109 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_123
.LBB0_115:                              #   in Loop: Header=BB0_109 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_117
.LBB0_121:                              #   in Loop: Header=BB0_109 Depth=1
	xorl	%eax, %eax
.LBB0_123:                              #   in Loop: Header=BB0_109 Depth=1
	testb	%al, %al
	je	.LBB0_109
	jmp	.LBB0_124
.LBB0_9:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_17:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_25:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_29:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_34:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_44:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_107:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_40:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_124:
	cmpq	$0, -64(%rbp)
	jne	.LBB0_126
# BB#125:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_126:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_131 Depth 2
                                        #       Child Loop BB0_133 Depth 3
                                        #     Child Loop BB0_145 Depth 2
                                        #     Child Loop BB0_185 Depth 2
                                        #       Child Loop BB0_187 Depth 3
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_127
# BB#128:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	jmp	.LBB0_129
	.align	16, 0x90
.LBB0_127:                              #   in Loop: Header=BB0_126 Depth=1
	xorl	%eax, %eax
.LBB0_129:                              #   in Loop: Header=BB0_126 Depth=1
	testb	%al, %al
	je	.LBB0_200
# BB#130:                               #   in Loop: Header=BB0_126 Depth=1
	movl	$1, -204(%rbp)
	movq	-128(%rbp), %rax
	jmp	.LBB0_131
	.align	16, 0x90
.LBB0_139:                              #   in Loop: Header=BB0_131 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-184(%rbp), %rax
.LBB0_131:                              #   Parent Loop BB0_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_133 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB0_142
# BB#132:                               #   in Loop: Header=BB0_131 Depth=2
	movq	-184(%rbp), %rax
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_133 Depth=3
	movq	-200(%rbp), %rax
.LBB0_133:                              #   Parent Loop BB0_126 Depth=1
                                        #     Parent Loop BB0_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_134
# BB#135:                               #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_140
# BB#136:                               #   in Loop: Header=BB0_131 Depth=2
	cmpl	$0, -204(%rbp)
	je	.LBB0_137
# BB#138:                               #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_139
	.align	16, 0x90
.LBB0_140:                              #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_147
# BB#141:                               #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_151
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_147:                              #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_148
# BB#149:                               #   in Loop: Header=BB0_131 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_150
.LBB0_137:                              #   in Loop: Header=BB0_131 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_139
.LBB0_148:                              #   in Loop: Header=BB0_131 Depth=2
	xorl	%eax, %eax
.LBB0_150:                              #   in Loop: Header=BB0_131 Depth=2
	testb	%al, %al
	jne	.LBB0_142
.LBB0_151:                              #   in Loop: Header=BB0_131 Depth=2
	movq	-184(%rbp), %rax
	jmp	.LBB0_131
	.align	16, 0x90
.LBB0_142:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-184(%rbp), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB0_165
# BB#143:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-128(%rbp), %rax
	je	.LBB0_165
# BB#144:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_145
	.align	16, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_145 Depth=2
	movq	-192(%rbp), %rax
.LBB0_145:                              #   Parent Loop BB0_126 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_146
# BB#152:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-192(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_154
# BB#153:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	jne	.LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_126 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_155:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-184(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_157
# BB#156:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_157:                              #   in Loop: Header=BB0_126 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_160
# BB#158:                               #   in Loop: Header=BB0_126 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_160
# BB#159:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_160:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_162
# BB#161:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_162:                              #   in Loop: Header=BB0_126 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-184(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_165
# BB#163:                               #   in Loop: Header=BB0_126 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_165
# BB#164:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_165:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-128(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -232(%rbp)
	movq	-216(%rbp), %rax
	cmpq	-224(%rbp), %rax
	je	.LBB0_174
# BB#166:                               #   in Loop: Header=BB0_126 Depth=1
	movq	-216(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_168
# BB#167:                               #   in Loop: Header=BB0_126 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_168:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-224(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_171
# BB#169:                               #   in Loop: Header=BB0_126 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_171
# BB#170:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_171:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-216(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-232(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_174
# BB#172:                               #   in Loop: Header=BB0_126 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_174
# BB#173:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_174:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-56(%rbp), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_176
# BB#175:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_176:                              #   in Loop: Header=BB0_126 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_178
# BB#177:                               #   in Loop: Header=BB0_126 Depth=1
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
.LBB0_178:                              #   in Loop: Header=BB0_126 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_180
# BB#179:                               #   in Loop: Header=BB0_126 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_181
.LBB0_180:                              #   in Loop: Header=BB0_126 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_182
	.align	16, 0x90
.LBB0_181:                              #   in Loop: Header=BB0_126 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_182:                              #   in Loop: Header=BB0_126 Depth=1
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
	jne	.LBB0_184
# BB#183:                               #   in Loop: Header=BB0_126 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_184:                              #   in Loop: Header=BB0_126 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_185
	.align	16, 0x90
.LBB0_193:                              #   in Loop: Header=BB0_185 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_185:                              #   Parent Loop BB0_126 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_187 Depth 3
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_126
# BB#186:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-56(%rbp), %rax
	jmp	.LBB0_187
	.align	16, 0x90
.LBB0_188:                              #   in Loop: Header=BB0_187 Depth=3
	movq	-128(%rbp), %rax
.LBB0_187:                              #   Parent Loop BB0_126 Depth=1
                                        #     Parent Loop BB0_185 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_188
# BB#189:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_194
# BB#190:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movq	%rax, -64(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_191
# BB#192:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_193
	.align	16, 0x90
.LBB0_194:                              #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_196
# BB#195:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_185
	jmp	.LBB0_124
	.align	16, 0x90
.LBB0_196:                              #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_197
# BB#198:                               #   in Loop: Header=BB0_185 Depth=2
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_199
.LBB0_191:                              #   in Loop: Header=BB0_185 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_193
.LBB0_197:                              #   in Loop: Header=BB0_185 Depth=2
	xorl	%eax, %eax
.LBB0_199:                              #   in Loop: Header=BB0_185 Depth=2
	testb	%al, %al
	je	.LBB0_185
	jmp	.LBB0_124
.LBB0_200:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_204
# BB#201:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_203
# BB#202:
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jl	.LBB0_204
.LBB0_203:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_204:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_207
# BB#205:
	movq	-64(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	jne	.LBB0_207
# BB#206:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_207:
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_208
# BB#209:
	movl	-140(%rbp), %eax
	movq	-120(%rbp), %rcx
	cmpl	60(%rcx), %eax
	jge	.LBB0_211
# BB#210:
	movq	-120(%rbp), %rax
	movl	60(%rax), %edi
	jmp	.LBB0_212
.LBB0_208:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_211:
	movl	-140(%rbp), %edi
.LBB0_212:
	movl	%edi, -140(%rbp)
	movq	-128(%rbp), %rax
	movl	52(%rax), %esi
	movl	60(%rax), %edx
	movq	-64(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	movl	%eax, %ebx
	movq	-120(%rbp), %rax
	movl	60(%rax), %edi
	movq	-128(%rbp), %rax
	movl	52(%rax), %esi
	movl	60(%rax), %edx
	movq	-64(%rbp), %rcx
	addq	$44, %rcx
	callq	MinGap
	cmpl	%eax, %ebx
	je	.LBB0_214
# BB#213:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_214:
	movq	-32(%rbp), %rax
	jmp	.LBB0_215
	.align	16, 0x90
.LBB0_223:                              #   in Loop: Header=BB0_215 Depth=1
	movq	-56(%rbp), %rax
.LBB0_215:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_217 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_224
# BB#216:                               #   in Loop: Header=BB0_215 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_217
	.align	16, 0x90
.LBB0_218:                              #   in Loop: Header=BB0_217 Depth=2
	movq	-48(%rbp), %rax
.LBB0_217:                              #   Parent Loop BB0_215 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_218
# BB#219:                               #   in Loop: Header=BB0_215 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_223
# BB#220:                               #   in Loop: Header=BB0_215 Depth=1
	movq	-48(%rbp), %rax
	movzwl	44(%rax), %eax
	testb	$-32, %ah
	je	.LBB0_223
# BB#221:                               #   in Loop: Header=BB0_215 Depth=1
	movq	-48(%rbp), %rax
	btl	$9, 44(%rax)
	jae	.LBB0_223
# BB#222:
	movl	$0, -12(%rbp)
	jmp	.LBB0_268
.LBB0_224:
	movq	-120(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_225
	.align	16, 0x90
.LBB0_233:                              #   in Loop: Header=BB0_225 Depth=1
	movq	-56(%rbp), %rax
.LBB0_225:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_227 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_234
# BB#226:                               #   in Loop: Header=BB0_225 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_227
	.align	16, 0x90
.LBB0_228:                              #   in Loop: Header=BB0_227 Depth=2
	movq	-128(%rbp), %rax
.LBB0_227:                              #   Parent Loop BB0_225 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_228
# BB#229:                               #   in Loop: Header=BB0_225 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_233
# BB#230:                               #   in Loop: Header=BB0_225 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_233
# BB#231:                               #   in Loop: Header=BB0_225 Depth=1
	movq	-128(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_233
# BB#232:                               #   in Loop: Header=BB0_225 Depth=1
	movq	-128(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	EncloseInHcat
	movq	%rax, -128(%rbp)
	jmp	.LBB0_233
.LBB0_234:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -240(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-248(%rbp), %rax
	je	.LBB0_243
# BB#235:
	movq	-240(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_237
# BB#236:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_237:
	movq	-240(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-248(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_240
# BB#238:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_240
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
.LBB0_240:
	movq	-240(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	-256(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_243
# BB#241:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_243
# BB#242:
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
.LBB0_243:
	movq	-120(%rbp), %rax
	movl	60(%rax), %eax
	movq	-136(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-32(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-72(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-24(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_244
	.align	16, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_244 Depth=1
	movq	-56(%rbp), %rax
.LBB0_244:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_246 Depth 2
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	jne	.LBB0_252
# BB#245:                               #   in Loop: Header=BB0_244 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB0_246
	.align	16, 0x90
.LBB0_247:                              #   in Loop: Header=BB0_246 Depth=2
	movq	-40(%rbp), %rax
.LBB0_246:                              #   Parent Loop BB0_244 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_247
# BB#248:                               #   in Loop: Header=BB0_244 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_252
# BB#249:                               #   in Loop: Header=BB0_244 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$138, %eax
	jle	.LBB0_250
	jmp	.LBB0_252
	.align	16, 0x90
.LBB0_251:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB0_252:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_254 Depth 2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	24(%rcx), %rax
	je	.LBB0_267
# BB#253:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_254
	.align	16, 0x90
.LBB0_255:                              #   in Loop: Header=BB0_254 Depth=2
	movq	-40(%rbp), %rax
.LBB0_254:                              #   Parent Loop BB0_252 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_255
# BB#256:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_258
# BB#257:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB0_259
.LBB0_258:                              #   in Loop: Header=BB0_252 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_259:                              #   in Loop: Header=BB0_252 Depth=1
	movq	-40(%rbp), %rdi
	callq	FindTarget
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB0_251
# BB#260:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-48(%rbp), %rdi
	callq	WhichComponent
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB0_251
# BB#261:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-48(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB0_251
# BB#262:                               #   in Loop: Header=BB0_252 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_264
# BB#263:                               #   in Loop: Header=BB0_252 Depth=1
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
.LBB0_264:                              #   in Loop: Header=BB0_252 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_252
# BB#265:                               #   in Loop: Header=BB0_252 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_252
# BB#266:                               #   in Loop: Header=BB0_252 Depth=1
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
	jmp	.LBB0_252
.LBB0_267:
	movl	$1, -12(%rbp)
.LBB0_268:
	movl	-12(%rbp), %eax
	addq	$248, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	VerticalHyphenate, .Lfunc_end0-VerticalHyphenate
	.cfi_endproc

	.align	16, 0x90
	.type	EncloseInHcat,@function
EncloseInHcat:                          # @EncloseInHcat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$112, %rsp
.Ltmp7:
	.cfi_offset %rbx, -48
.Ltmp8:
	.cfi_offset %r12, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-40(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movzbl	zz_lengths+18(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_7
.LBB1_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_7
.LBB1_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_7:
	movq	zz_hold(%rip), %rax
	movb	$18, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -64(%rbp)
	andb	$-9, 43(%rax)
	movq	-40(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_9
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
.LBB1_9:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_12
# BB#10:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_12
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
.LBB1_12:
	movq	-40(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB1_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_14:
	movq	-48(%rbp), %rax
	movw	34(%rax), %ax
	movq	-64(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-48(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-64(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-48(%rbp), %rax
	andl	36(%rax), %esi
	movq	-64(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-48(%rbp), %rax
	movl	48(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-48(%rbp), %rax
	movl	56(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-40(%rbp), %rax
	movl	52(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-40(%rbp), %rax
	movl	60(%rax), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movzbl	zz_lengths+15(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_19
.LBB1_16:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_17
# BB#18:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_19
.LBB1_17:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_19:
	movq	zz_hold(%rip), %rax
	movb	$15, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rcx
	movl	52(%rcx), %ecx
	movl	%ecx, 52(%rax)
	movq	-64(%rbp), %rax
	movl	60(%rax), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movq	-72(%rbp), %rax
	movb	$1, 41(%rax)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
	movb	$1, %bl
	movl	$1048575, %r14d         # imm = 0xFFFFF
	movl	$-1048576, %r15d        # imm = 0xFFFFFFFFFFF00000
	movl	$-1610612737, %r12d     # imm = 0xFFFFFFFF9FFFFFFF
	jmp	.LBB1_20
	.align	16, 0x90
.LBB1_142:                              #   in Loop: Header=BB1_20 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB1_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_22 Depth 2
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_48 Depth 2
	movq	-112(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB1_143
# BB#21:                                #   in Loop: Header=BB1_20 Depth=1
	movq	-112(%rbp), %rax
	jmp	.LBB1_22
	.align	16, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_22 Depth=2
	movq	-80(%rbp), %rax
.LBB1_22:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_23
# BB#24:                                #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_39
# BB#25:                                #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_27
# BB#26:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_30
	.align	16, 0x90
.LBB1_39:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	je	.LBB1_41
# BB#40:                                #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$24, %eax
	jne	.LBB1_44
.LBB1_41:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_42
	.align	16, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_42 Depth=2
	movq	-96(%rbp), %rax
.LBB1_42:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_43
	jmp	.LBB1_45
	.align	16, 0x90
.LBB1_27:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_28
# BB#29:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_30
.LBB1_44:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, -96(%rbp)
.LBB1_45:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	je	.LBB1_47
# BB#46:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_47:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_48
	.align	16, 0x90
.LBB1_49:                               #   in Loop: Header=BB1_48 Depth=2
	movq	-120(%rbp), %rax
.LBB1_48:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_49
# BB#50:                                #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths+9(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_52
# BB#51:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_55
	.align	16, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_53
# BB#54:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_55
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_20 Depth=1
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
	movq	-80(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$128, %eax
	andl	$65407, %edx            # imm = 0xFF7F
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movzbl	45(%rax), %eax
	andl	$1, %eax
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	shll	$8, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$512, %eax              # imm = 0x200
	andl	$65023, %edx            # imm = 0xFDFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$7168, %eax             # imm = 0x1C00
	andl	$58367, %edx            # imm = 0xE3FF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	andl	$57344, %eax            # imm = 0xE000
	movq	-88(%rbp), %rcx
	movzwl	44(%rcx), %edx
	andl	$8191, %edx             # imm = 0x1FFF
	orl	%eax, %edx
	movw	%dx, 44(%rcx)
	movq	-80(%rbp), %rax
	movw	46(%rax), %ax
	movq	-88(%rbp), %rcx
	movw	%ax, 46(%rcx)
	movq	-80(%rbp), %rax
	movb	41(%rax), %al
	movq	-88(%rbp), %rcx
	movb	%al, 41(%rcx)
	movq	-80(%rbp), %rax
	movb	42(%rax), %al
	movq	-88(%rbp), %rcx
	movb	%al, 42(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_32
# BB#31:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_35
	.align	16, 0x90
.LBB1_32:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_33
# BB#34:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_35
.LBB1_53:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_55:                               #   in Loop: Header=BB1_20 Depth=1
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
	movq	%rax, -104(%rbp)
	movq	-96(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-104(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-104(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-96(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB1_78
# BB#56:                                #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_58
# BB#57:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_61
.LBB1_78:                               #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_80
# BB#79:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_83
.LBB1_58:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_59
# BB#60:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_61
.LBB1_33:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_35:                               #   in Loop: Header=BB1_20 Depth=1
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
	je	.LBB1_38
# BB#36:                                #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_38
# BB#37:                                #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_38:                               #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	jmp	.LBB1_139
.LBB1_80:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_81
# BB#82:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_83
.LBB1_59:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_61:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-80(%rbp), %rax
	movb	32(%rax), %al
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
	movq	%rax, -88(%rbp)
	movq	-80(%rbp), %rcx
	movl	48(%rcx), %ecx
	movl	%ecx, 48(%rax)
	movq	-80(%rbp), %rax
	movl	56(%rax), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-72(%rbp), %rax
	movl	48(%rax), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-72(%rbp), %rax
	movl	56(%rax), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_63
# BB#62:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_66
.LBB1_63:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_64
# BB#65:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_66
.LBB1_64:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_66:                               #   in Loop: Header=BB1_20 Depth=1
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
	je	.LBB1_69
# BB#67:                                #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_69
# BB#68:                                #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_69:                               #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_72
# BB#70:                                #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_72
# BB#71:                                #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_72:                               #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_74
# BB#73:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_77
.LBB1_74:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_75
# BB#76:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_77
.LBB1_75:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_77:                               #   in Loop: Header=BB1_20 Depth=1
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
	jmp	.LBB1_84
.LBB1_81:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_83:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_84:                               #   in Loop: Header=BB1_20 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_87
# BB#85:                                #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_87
# BB#86:                                #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_87:                               #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_90
# BB#88:                                #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_90
# BB#89:                                #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_90:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.LBB1_91
# BB#92:                                #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths+26(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_94
# BB#93:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_97
.LBB1_91:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -128(%rbp)
	movq	-96(%rbp), %rcx
	movl	48(%rcx), %ecx
	movl	%ecx, 48(%rax)
	movq	-96(%rbp), %rax
	movl	56(%rax), %eax
	movq	-128(%rbp), %rcx
	movl	%eax, 56(%rcx)
	jmp	.LBB1_108
.LBB1_94:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_95
# BB#96:                                #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_97
.LBB1_95:                               #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_97:                               #   in Loop: Header=BB1_20 Depth=1
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
	movq	%rax, -128(%rbp)
	movq	-120(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-120(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-128(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-120(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r15d, %eax
	movq	-128(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-120(%rbp), %rax
	movl	48(%rax), %eax
	movq	-128(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movq	-120(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	movq	-128(%rbp), %rax
	movl	%ecx, 68(%rax)
	movq	-120(%rbp), %rax
	movl	56(%rax), %eax
	movq	-128(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movq	-120(%rbp), %rax
	movl	48(%rax), %eax
	movq	-128(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-120(%rbp), %rax
	movl	56(%rax), %eax
	movq	-128(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-128(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-128(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-120(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.21, %esi
	callq	MakeWord
	movq	%rax, -136(%rbp)
	movl	$0, 56(%rax)
	movq	-136(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-136(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-136(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-136(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r12d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_99
# BB#98:                                #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_102
.LBB1_99:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_100
# BB#101:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_102
.LBB1_100:                              #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_102:                              #   in Loop: Header=BB1_20 Depth=1
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
	je	.LBB1_105
# BB#103:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_105
# BB#104:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_105:                              #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_108
# BB#106:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_108
# BB#107:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_108:                              #   in Loop: Header=BB1_20 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_110
# BB#109:                               #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_113
	.align	16, 0x90
.LBB1_110:                              #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_111
# BB#112:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_113
.LBB1_111:                              #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_113:                              #   in Loop: Header=BB1_20 Depth=1
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
	je	.LBB1_116
# BB#114:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_116
# BB#115:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_116:                              #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-128(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_119
# BB#117:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_119
# BB#118:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_119:                              #   in Loop: Header=BB1_20 Depth=1
	movq	-128(%rbp), %rax
	movl	48(%rax), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-128(%rbp), %rax
	movl	56(%rax), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_121
# BB#120:                               #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_124
	.align	16, 0x90
.LBB1_121:                              #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_122
# BB#123:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_124
.LBB1_122:                              #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_124:                              #   in Loop: Header=BB1_20 Depth=1
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
	je	.LBB1_127
# BB#125:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_127
# BB#126:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_127:                              #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_130
# BB#128:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_130
# BB#129:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_130:                              #   in Loop: Header=BB1_20 Depth=1
	movq	-72(%rbp), %rax
	movl	52(%rax), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-72(%rbp), %rax
	movl	60(%rax), %eax
	movq	-104(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB1_132
# BB#131:                               #   in Loop: Header=BB1_20 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_135
	.align	16, 0x90
.LBB1_132:                              #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_133
# BB#134:                               #   in Loop: Header=BB1_20 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_135
.LBB1_133:                              #   in Loop: Header=BB1_20 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB1_135:                              #   in Loop: Header=BB1_20 Depth=1
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
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_138
# BB#136:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_138
# BB#137:                               #   in Loop: Header=BB1_20 Depth=1
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
.LBB1_138:                              #   in Loop: Header=BB1_20 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-128(%rbp), %rax
.LBB1_139:                              #   in Loop: Header=BB1_20 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_142
# BB#140:                               #   in Loop: Header=BB1_20 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB1_142
# BB#141:                               #   in Loop: Header=BB1_20 Depth=1
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
	jmp	.LBB1_142
.LBB1_143:
	movq	-64(%rbp), %rax
	addq	$112, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	EncloseInHcat, .Lfunc_end1-EncloseInHcat
	.cfi_endproc

	.align	16, 0x90
	.type	FindTarget,@function
FindTarget:                             # @FindTarget
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp14:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movzbl	32(%rdi), %eax
	addl	$-119, %eax
	cmpl	$19, %eax
	ja	.LBB2_6
# BB#1:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_5:
	movq	$0, -24(%rbp)
	jmp	.LBB2_7
.LBB2_6:
	movq	no_fpos(%rip), %rbx
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.22, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_7
.LBB2_4:
	movq	-16(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_3:
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB2_7
.LBB2_2:
	movq	$0, -24(%rbp)
.LBB2_7:
	movq	-24(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	FindTarget, .Lfunc_end2-FindTarget
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_3
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_5
	.quad	.LBB2_5
	.quad	.LBB2_6
	.quad	.LBB2_5
	.quad	.LBB2_5
	.quad	.LBB2_3
	.quad	.LBB2_3
	.quad	.LBB2_5
	.quad	.LBB2_5
	.quad	.LBB2_3
	.quad	.LBB2_5
	.quad	.LBB2_5
	.quad	.LBB2_4
	.quad	.LBB2_4
	.quad	.LBB2_4

	.text
	.align	16, 0x90
	.type	WhichComponent,@function
WhichComponent:                         # @WhichComponent
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
	movq	%rdi, -16(%rbp)
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_7:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_3 Depth 2
	movq	-16(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB3_8
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=2
	movq	-24(%rbp), %rax
.LBB3_3:                                #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_4
# BB#5:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	jne	.LBB3_7
# BB#6:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB3_9
.LBB3_8:
	movq	$0, -8(%rbp)
.LBB3_9:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	WhichComponent, .Lfunc_end3-WhichComponent
	.cfi_endproc

	.globl	ConvertGalleyList
	.align	16, 0x90
	.type	ConvertGalleyList,@function
ConvertGalleyList:                      # @ConvertGalleyList
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_2:                                #   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rax
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_2
# BB#3:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_5:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-24(%rbp), %rax
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_5
# BB#6:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_8
# BB#7:
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
.LBB4_8:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_11
# BB#9:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_11
# BB#10:
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
.LBB4_11:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_13
# BB#12:
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
.LBB4_13:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_15
# BB#14:
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
.LBB4_15:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_17
# BB#16:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_18
.LBB4_17:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_19
.LBB4_18:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_19:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB4_21
# BB#20:
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
.LBB4_21:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_24
# BB#22:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_24
# BB#23:
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
.LBB4_24:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -60(%rbp)
	jmp	.LBB4_25
	.align	16, 0x90
.LBB4_26:                               #   in Loop: Header=BB4_25 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	incl	-60(%rbp)
.LBB4_25:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB4_26
# BB#27:
	movl	-60(%rbp), %edi
	movq	-8(%rbp), %rsi
	leaq	-40(%rbp), %rdx
	leaq	-48(%rbp), %rcx
	callq	BuildMergeTree
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_29
# BB#28:
	movq	-8(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB4_30
.LBB4_29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_30:
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_32
# BB#31:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_33
.LBB4_32:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_34
.LBB4_33:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_34:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_35
	.align	16, 0x90
.LBB4_36:                               #   in Loop: Header=BB4_35 Depth=1
	movq	-56(%rbp), %rax
.LBB4_35:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_36
# BB#37:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_39
# BB#38:
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
.LBB4_39:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_42
# BB#40:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_42
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
.LBB4_42:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB4_44
# BB#43:
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
.LBB4_44:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB4_47
# BB#45:
	cmpq	$0, zz_res(%rip)
	je	.LBB4_47
# BB#46:
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
.LBB4_47:
	movq	-24(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB4_49
# BB#48:
	movq	-24(%rbp), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB4_50
.LBB4_49:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.9, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_50:
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_52
# BB#51:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_53
.LBB4_52:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_54
.LBB4_53:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_54:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-16(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ConvertGalleyList, .Lfunc_end4-ConvertGalleyList
	.cfi_endproc

	.align	16, 0x90
	.type	BuildMergeTree,@function
BuildMergeTree:                         # @BuildMergeTree
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
	subq	$112, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.LBB5_18
# BB#1:
	movzbl	zz_lengths+81(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_6
.LBB5_18:
	movl	-4(%rbp), %eax
	movl	%eax, %edi
	shrl	$31, %edi
	addl	%eax, %edi
	sarl	%edi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	BuildMergeTree
	movq	%rax, -72(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, %eax
	shrl	$31, %eax
	leal	(%rax,%rdi), %eax
	sarl	%eax
	subl	%eax, %edi
	movq	-16(%rbp), %rsi
	leaq	-88(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	BuildMergeTree
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	jmp	.LBB5_19
	.align	16, 0x90
.LBB5_24:                               #   in Loop: Header=BB5_19 Depth=1
	movq	-56(%rbp), %rax
.LBB5_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB5_25
# BB#20:                                #   in Loop: Header=BB5_19 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB5_21
	.align	16, 0x90
.LBB5_22:                               #   in Loop: Header=BB5_21 Depth=2
	movq	-64(%rbp), %rax
.LBB5_21:                               #   Parent Loop BB5_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_22
# BB#23:                                #   in Loop: Header=BB5_19 Depth=1
	movq	-64(%rbp), %rax
	movzbl	126(%rax), %eax
	btl	$2, %eax
	jae	.LBB5_24
.LBB5_25:
	movq	-64(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB5_27
# BB#26:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_27:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_29
# BB#28:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_32
.LBB5_3:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_4
# BB#5:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_6
.LBB5_29:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_30
# BB#31:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_32
.LBB5_4:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_6:
	movq	zz_hold(%rip), %rax
	movb	$81, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB5_7
	.align	16, 0x90
.LBB5_8:                                #   in Loop: Header=BB5_7 Depth=1
	movq	-64(%rbp), %rax
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_8
# BB#9:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB5_11
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
.LBB5_11:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_14
# BB#12:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_14
# BB#13:
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
.LBB5_14:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB5_16
# BB#15:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	126(%rax), %eax
	btl	$3, %eax
	jb	.LBB5_17
.LBB5_16:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_17:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
	callq	DetachEnv
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movq	(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	AttachEnv
	jmp	.LBB5_113
.LBB5_30:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_32:
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
	movq	-64(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_34
# BB#33:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_37
.LBB5_34:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_35
# BB#36:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_37
.LBB5_35:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_37:
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
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rdi
	movl	$144, %esi
	callq	ChildSym
	movq	-104(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_39
# BB#38:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_42
.LBB5_39:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_40
# BB#41:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_42
.LBB5_40:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_42:
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
	je	.LBB5_45
# BB#43:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_45
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
.LBB5_45:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_48
# BB#46:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_48
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
.LBB5_48:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_50
# BB#49:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_53
.LBB5_50:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_51
# BB#52:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_53
.LBB5_51:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_53:
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
	je	.LBB5_56
# BB#54:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_56
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
.LBB5_56:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_59
# BB#57:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_59
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
.LBB5_59:
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_61
# BB#60:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_64
.LBB5_61:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_62
# BB#63:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_64
.LBB5_62:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_64:
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
	movq	%rax, -112(%rbp)
	movq	-64(%rbp), %rdi
	movl	$146, %esi
	callq	ChildSym
	movq	-112(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_66
# BB#65:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_69
.LBB5_66:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_67
# BB#68:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_69
.LBB5_67:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_69:
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
	je	.LBB5_72
# BB#70:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_72
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
.LBB5_72:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_75
# BB#73:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_75
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
.LBB5_75:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_77
# BB#76:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_80
.LBB5_77:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_78
# BB#79:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_80
.LBB5_78:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_80:
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
	je	.LBB5_83
# BB#81:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_83
# BB#82:
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
.LBB5_83:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_86
# BB#84:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_86
# BB#85:
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
.LBB5_86:
	movzbl	zz_lengths+81(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_88
# BB#87:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_91
.LBB5_88:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_89
# BB#90:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_91
.LBB5_89:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_91:
	movq	zz_hold(%rip), %rax
	movb	$81, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -40(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_93
# BB#92:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_96
.LBB5_93:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_94
# BB#95:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_96
.LBB5_94:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_96:
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
	je	.LBB5_99
# BB#97:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_99
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
.LBB5_99:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_102
# BB#100:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_102
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
.LBB5_102:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB5_104
# BB#103:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB5_107
.LBB5_104:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB5_105
# BB#106:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB5_107
.LBB5_105:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB5_107:
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
	je	.LBB5_110
# BB#108:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_110
# BB#109:
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
.LBB5_110:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_113
# BB#111:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_113
# BB#112:
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
.LBB5_113:
	movq	-40(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	BuildMergeTree, .Lfunc_end5-BuildMergeTree
	.cfi_endproc

	.globl	BuildEnclose
	.align	16, 0x90
	.type	BuildEnclose,@function
BuildEnclose:                           # @BuildEnclose
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	80(%rdi), %rax
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_6:                                #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax
.LBB6_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_3 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB6_7
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_3 Depth=2
	movq	-16(%rbp), %rax
.LBB6_3:                                #   Parent Loop BB6_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_4
# BB#5:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	126(%rax), %eax
	btl	$4, %eax
	jae	.LBB6_6
.LBB6_7:
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB6_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_9:
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB6_10
	.align	16, 0x90
.LBB6_87:                               #   in Loop: Header=BB6_10 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$44, %edi
	movl	$1, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
	movq	-48(%rbp), %rax
.LBB6_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB6_20
# BB#11:                                #   in Loop: Header=BB6_10 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB6_12
	.align	16, 0x90
.LBB6_13:                               #   in Loop: Header=BB6_12 Depth=2
	movq	-40(%rbp), %rax
.LBB6_12:                               #   Parent Loop BB6_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_13
# BB#14:                                #   in Loop: Header=BB6_10 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	leal	-144(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB6_87
# BB#15:                                #   in Loop: Header=BB6_10 Depth=1
	cmpl	$146, %eax
	jne	.LBB6_19
# BB#16:                                #   in Loop: Header=BB6_10 Depth=1
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB6_18
# BB#17:                                #   in Loop: Header=BB6_10 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$44, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_18:                               #   in Loop: Header=BB6_10 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB6_19:                               #   in Loop: Header=BB6_10 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB6_10
.LBB6_20:
	cmpq	$0, -24(%rbp)
	jne	.LBB6_22
# BB#21:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$44, %edi
	movl	$3, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_22:
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_27
.LBB6_24:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_25
# BB#26:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_27
.LBB6_25:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_27:
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
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-32(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths+10(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_29
# BB#28:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_32
.LBB6_29:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_30
# BB#31:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_32
.LBB6_30:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_32:
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
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-56(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-56(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_34
# BB#33:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_37
.LBB6_34:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_35
# BB#36:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_37
.LBB6_35:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_37:
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
	je	.LBB6_40
# BB#38:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_40
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
.LBB6_40:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_43
# BB#41:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_43
# BB#42:
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
.LBB6_43:
	movq	-8(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.16, %esi
	callq	MakeWord
	movq	%rax, -64(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_45
# BB#44:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_48
.LBB6_45:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_46
# BB#47:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_48
.LBB6_46:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_48:
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
	je	.LBB6_51
# BB#49:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_51
# BB#50:
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
.LBB6_51:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_54
# BB#52:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_54
# BB#53:
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
.LBB6_54:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_55
	.align	16, 0x90
.LBB6_56:                               #   in Loop: Header=BB6_55 Depth=1
	movq	-40(%rbp), %rax
.LBB6_55:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_56
# BB#57:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB6_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_59:
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	addq	$32, %rsi
	callq	CopyObject
	movq	%rax, -40(%rbp)
	xorl	%esi, %esi
	movq	%rax, %rdi
	callq	SetEnv
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths+81(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_61
# BB#60:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_64
.LBB6_61:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_62
# BB#63:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_64
.LBB6_62:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_64:
	movq	zz_hold(%rip), %rax
	movb	$81, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_66
# BB#65:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_69
.LBB6_66:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_67
# BB#68:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_69
.LBB6_67:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_69:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_72
# BB#70:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_72
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
.LBB6_72:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_75
# BB#73:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_75
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
.LBB6_75:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB6_77
# BB#76:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.15, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_80
.LBB6_77:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_78
# BB#79:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_80
.LBB6_78:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_80:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_83
# BB#81:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_83
# BB#82:
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
.LBB6_83:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_86
# BB#84:
	cmpq	$0, zz_res(%rip)
	je	.LBB6_86
# BB#85:
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
.LBB6_86:
	movq	-80(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	BuildEnclose, .Lfunc_end6-BuildEnclose
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"VerticalHyphenate: type(y) != HCAT!"
	.size	.L.str.1, 36

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"TransferLinks: start_link!"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FirstDefiniteCompressed!"
	.size	.L.str.3, 25

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"NDWGC!"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FirstDefiniteWithGapCompressed: mode(gap(g))!"
	.size	.L.str.6, 46

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"MoveIndexes: is_index!"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ConvertGalleyList: x!"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ConvertGalleyList: y!"
	.size	.L.str.9, 22

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"BuildEnclose: no enclose!"
	.size	.L.str.10, 26

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s may not have a left or named parameter"
	.size	.L.str.11, 42

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@Enclose"
	.size	.L.str.12, 9

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s may not have a body parameter"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s must have a right parameter"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"word is too long"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"??"
	.size	.L.str.16, 3

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"BuildEnclose:  hd child!"
	.size	.L.str.17, 25

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"EncloseInHCat: Up(nxt) == nxt!"
	.size	.L.str.18, 31

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"EncloseInHCat: Up(nxt) != nxt!"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"EncloseInHcat: type(s2) != SPLIT!"
	.size	.L.str.20, 34

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.zero	1
	.size	.L.str.21, 1

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"assert failed in %s %s"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FindTarget: unknown index"
	.size	.L.str.23, 26

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"BuildMergeTree: has_m!"
	.size	.L.str.24, 23

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"BuildMergeTree: y!"
	.size	.L.str.25, 19


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
