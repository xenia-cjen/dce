	.text
	.file	"z23.dce"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1124073472              # float 128
.LCPI0_1:
	.long	1065353216              # float 1
	.text
	.globl	FixAndPrintObject
	.align	16, 0x90
	.type	FixAndPrintObject,@function
FixAndPrintObject:                      # @FixAndPrintObject
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
	pushq	%rbx
	subq	$600, %rsp              # imm = 0x258
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movq	40(%rbp), %r10
	movq	32(%rbp), %r11
	movl	24(%rbp), %eax
	movl	16(%rbp), %ebx
	movq	%rdi, -112(%rbp)
	movl	%esi, -116(%rbp)
	movl	%edx, -120(%rbp)
	movl	%ecx, -124(%rbp)
	movl	%r8d, -128(%rbp)
	movl	%r9d, -132(%rbp)
	movl	%ebx, -136(%rbp)
	movl	%eax, -140(%rbp)
	movq	%r11, -152(%rbp)
	movq	%r10, -160(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -224(%rbp)
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB0_848
# BB#1:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_88:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_89
	.align	16, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_89 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_89:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_90
# BB#91:
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %edx
	movb	$1, %cl
	cmpl	$24, %edx
	je	.LBB0_93
# BB#92:
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$40, %ecx
	sete	%cl
.LBB0_93:
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_149
	jmp	.LBB0_94
.LBB0_848:
	movq	no_fpos(%rip), %rbx
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.21, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
.LBB0_849:
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_850
.LBB0_846:
	cmpl	$0, -128(%rbp)
	jne	.LBB0_850
# BB#847:
	movq	-112(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$23, %edi
	movl	$8, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	jmp	.LBB0_849
.LBB0_2:
	cmpl	$0, -128(%rbp)
	je	.LBB0_3
# BB#4:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_5
.LBB0_48:
	cmpl	$0, -128(%rbp)
	je	.LBB0_49
# BB#53:
	movq	-112(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
# BB#54:
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rdi
	movl	36(%rdi), %esi
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	callq	*112(%rax)
	jmp	.LBB0_87
.LBB0_812:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -128(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_814
# BB#813:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_814:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)
	movl	$1, -276(%rbp)
	jmp	.LBB0_815
	.align	16, 0x90
.LBB0_821:                              #   in Loop: Header=BB0_815 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-232(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -232(%rbp)
	incl	-276(%rbp)
.LBB0_815:                              # =>This Inner Loop Header: Depth=1
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_816
# BB#817:                               #   in Loop: Header=BB0_815 Depth=1
	movq	-232(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_818
# BB#819:                               #   in Loop: Header=BB0_815 Depth=1
	movl	-276(%rbp), %eax
	cmpl	-140(%rbp), %eax
	setl	%al
	jmp	.LBB0_820
	.align	16, 0x90
.LBB0_816:                              #   in Loop: Header=BB0_815 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_820
.LBB0_818:                              #   in Loop: Header=BB0_815 Depth=1
	xorl	%eax, %eax
.LBB0_820:                              #   in Loop: Header=BB0_815 Depth=1
	testb	%al, %al
	jne	.LBB0_821
# BB#822:
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_824
# BB#823:
	movq	-232(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_825
.LBB0_824:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_825:
	movq	-176(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_826
	.align	16, 0x90
.LBB0_827:                              #   in Loop: Header=BB0_826 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_826:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_827
# BB#828:
	movq	-232(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_830
# BB#829:
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
.LBB0_830:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-176(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_833
# BB#831:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_833
# BB#832:
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
.LBB0_833:
	movq	-176(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_835
# BB#834:
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
.LBB0_835:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_837
# BB#836:
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
.LBB0_837:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_839
# BB#838:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_840
.LBB0_839:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_841
.LBB0_241:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	cmpl	$1, -128(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_419
# BB#242:
	movl	$1, -284(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB0_243
.LBB0_251:                              #   in Loop: Header=BB0_243 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-176(%rbp), %rax
.LBB0_243:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_245 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_254
# BB#244:                               #   in Loop: Header=BB0_243 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_245
	.align	16, 0x90
.LBB0_246:                              #   in Loop: Header=BB0_245 Depth=2
	movq	-184(%rbp), %rax
.LBB0_245:                              #   Parent Loop BB0_243 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_246
# BB#247:                               #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_252
# BB#248:                               #   in Loop: Header=BB0_243 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_249
# BB#250:                               #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_251
.LBB0_252:                              #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_260
# BB#253:                               #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_264
	jmp	.LBB0_254
.LBB0_260:                              #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_261
# BB#262:                               #   in Loop: Header=BB0_243 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_263
.LBB0_249:                              #   in Loop: Header=BB0_243 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_251
.LBB0_261:                              #   in Loop: Header=BB0_243 Depth=1
	xorl	%eax, %eax
.LBB0_263:                              #   in Loop: Header=BB0_243 Depth=1
	testb	%al, %al
	jne	.LBB0_254
.LBB0_264:                              #   in Loop: Header=BB0_243 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_243
.LBB0_55:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_57:                               #   in Loop: Header=BB0_56 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_57
# BB#58:
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$26, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_149
# BB#59:
	movq	-112(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	movl	%ecx, -256(%rbp)
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	jmp	.LBB0_84
.LBB0_60:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_61 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_62
# BB#63:
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$28, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_149
# BB#64:
	movq	-112(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movl	-128(%rbp), %edx
	callq	FindShift
	movl	%eax, -264(%rbp)
	movl	-116(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -240(%rbp)
	movl	-120(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-264(%rbp), %eax
	movl	$0, %eax
	jle	.LBB0_66
# BB#65:
	movl	-120(%rbp), %eax
	subl	-264(%rbp), %eax
.LBB0_66:
	movl	%eax, -252(%rbp)
	movl	-124(%rbp), %eax
	addl	-264(%rbp), %eax
	jle	.LBB0_68
# BB#67:
	movl	-124(%rbp), %ecx
	addl	-264(%rbp), %ecx
.LBB0_68:
	movl	%ecx, -256(%rbp)
	movq	-168(%rbp), %rdi
	movl	-240(%rbp), %esi
	movl	-252(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rdi
	movl	-128(%rbp), %edx
	movq	%rax, %rsi
	callq	FindShift
	movl	%eax, -264(%rbp)
	xorl	%ecx, %ecx
	addl	-268(%rbp), %eax
	jle	.LBB0_70
# BB#69:
	movl	-268(%rbp), %ecx
	addl	-264(%rbp), %ecx
.LBB0_70:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_73
# BB#71:
	movl	-268(%rbp), %ecx
	xorl	%eax, %eax
	addl	-264(%rbp), %ecx
	jle	.LBB0_73
# BB#72:
	movl	-268(%rbp), %eax
	addl	-264(%rbp), %eax
.LBB0_73:
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-272(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-264(%rbp), %eax
	jle	.LBB0_75
# BB#74:
	movl	-272(%rbp), %ecx
	subl	-264(%rbp), %ecx
.LBB0_75:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_78
# BB#76:
	movl	-272(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-264(%rbp), %ecx
	jle	.LBB0_78
# BB#77:
	movl	-272(%rbp), %eax
	subl	-264(%rbp), %eax
	jmp	.LBB0_78
.LBB0_79:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_80 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_81
# BB#82:
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_149
# BB#83:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	jmp	.LBB0_84
.LBB0_27:
	cmpl	$0, -128(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-112(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_850
# BB#28:
	cmpl	$0, -128(%rbp)
	je	.LBB0_29
# BB#30:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_31
.LBB0_219:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_220
	.align	16, 0x90
.LBB0_221:                              #   in Loop: Header=BB0_220 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_220:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_221
# BB#222:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 28(%rax)
	je	.LBB0_87
# BB#223:
	cmpl	$0, -128(%rbp)
	je	.LBB0_224
# BB#226:
	movq	-112(%rbp), %rax
	cmpb	$0, 41(%rax)
	je	.LBB0_87
# BB#227:
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rdi
	movl	88(%rdi), %esi
	movl	-136(%rbp), %edx
	subl	-116(%rbp), %edx
	callq	*200(%rax)
	jmp	.LBB0_87
.LBB0_208:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_209
	.align	16, 0x90
.LBB0_210:                              #   in Loop: Header=BB0_209 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_209:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_210
# BB#211:
	cmpl	$0, -128(%rbp)
	je	.LBB0_212
# BB#213:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_214
	.align	16, 0x90
.LBB0_215:                              #   in Loop: Header=BB0_214 Depth=1
	movq	-200(%rbp), %rax
.LBB0_214:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_215
# BB#216:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$98, %eax
	jne	.LBB0_218
# BB#217:
	movq	BackEnd(%rip), %rax
	movq	-200(%rbp), %rdi
	movq	-112(%rbp), %rbx
	movl	88(%rbx), %ecx
	movl	%ecx, %esi
	subl	48(%rbx), %esi
	movl	-136(%rbp), %r8d
	subl	-116(%rbp), %r8d
	movl	%r8d, %edx
	subl	-124(%rbp), %edx
	addl	56(%rbx), %ecx
	addl	-120(%rbp), %r8d
	callq	*208(%rax)
	jmp	.LBB0_94
.LBB0_3:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_5:
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#8:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_10
# BB#9:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB0_149
.LBB0_10:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-200(%rbp), %rax
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_12
# BB#13:
	cmpl	$0, -128(%rbp)
	je	.LBB0_14
# BB#15:
	movq	-112(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_16
.LBB0_228:
	cmpl	$0, -128(%rbp)
	je	.LBB0_229
# BB#230:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_231
.LBB0_542:
	cmpl	$0, -128(%rbp)
	je	.LBB0_543
# BB#792:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	leaq	-272(%rbp), %r14
	leaq	-268(%rbp), %r15
	jmp	.LBB0_793
	.align	16, 0x90
.LBB0_811:                              #   in Loop: Header=BB0_793 Depth=1
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
.LBB0_793:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_795 Depth 2
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_87
# BB#794:                               #   in Loop: Header=BB0_793 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_795
	.align	16, 0x90
.LBB0_796:                              #   in Loop: Header=BB0_795 Depth=2
	movq	-168(%rbp), %rax
.LBB0_795:                              #   Parent Loop BB0_793 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_796
# BB#797:                               #   in Loop: Header=BB0_793 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_799
# BB#798:                               #   in Loop: Header=BB0_793 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jge	.LBB0_799
# BB#810:                               #   in Loop: Header=BB0_793 Depth=1
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	jmp	.LBB0_811
.LBB0_799:                              #   in Loop: Header=BB0_793 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB0_811
# BB#800:                               #   in Loop: Header=BB0_793 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	52(%rcx), %edi
	movl	60(%rcx), %esi
	movl	56(%rcx), %ecx
	movl	-136(%rbp), %r8d
	subl	-116(%rbp), %r8d
	callq	*128(%rax)
	movq	-176(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_802
# BB#801:                               #   in Loop: Header=BB0_793 Depth=1
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
.LBB0_802:                              #   in Loop: Header=BB0_793 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_804
# BB#803:                               #   in Loop: Header=BB0_793 Depth=1
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
.LBB0_804:                              #   in Loop: Header=BB0_793 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_806
# BB#805:                               #   in Loop: Header=BB0_793 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_807
.LBB0_806:                              #   in Loop: Header=BB0_793 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_808
.LBB0_807:                              #   in Loop: Header=BB0_793 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_808:                              #   in Loop: Header=BB0_793 Depth=1
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
	jne	.LBB0_811
# BB#809:                               #   in Loop: Header=BB0_793 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB0_811
.LBB0_111:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_112
	.align	16, 0x90
.LBB0_113:                              #   in Loop: Header=BB0_112 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_112:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_113
# BB#114:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_87
# BB#115:
	cmpl	$0, -128(%rbp)
	je	.LBB0_116
# BB#125:
	movq	-112(%rbp), %rax
	movl	64(%rax), %ecx
	addl	72(%rax), %ecx
	movq	-168(%rbp), %rax
	movl	48(%rax), %edx
	addl	56(%rax), %edx
	movl	%ecx, -40(%rbp)
	movl	%edx, -56(%rbp)
	xorps	%xmm0, %xmm0
	cmpl	$0, -40(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_128
# BB#126:
	cmpl	$0, -56(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_128
# BB#127:
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-40(%rbp), %xmm1
	cvtsi2ssl	-56(%rbp), %xmm2
	divss	%xmm2, %xmm1
.LBB0_128:                              # %ScaleFactor.exit4
	movss	%xmm1, -64(%rbp)
	movss	%xmm1, -280(%rbp)
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_87
# BB#129:
	movq	BackEnd(%rip), %rax
	movq	-168(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	88(%rcx), %edx
	subl	64(%rcx), %edx
	movq	-168(%rbp), %rcx
	cvtsi2ssl	48(%rcx), %xmm0
	mulss	-280(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	addl	%edx, %edi
	xorl	%esi, %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movss	-280(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	callq	*152(%rax)
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	jmp	.LBB0_105
.LBB0_95:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_96
	.align	16, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_96 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_96:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_97
# BB#98:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_87
# BB#99:
	cmpl	$0, -128(%rbp)
	je	.LBB0_94
# BB#100:
	movl	-120(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	movl	52(%rcx), %edx
	addl	60(%rcx), %edx
	movl	%eax, -40(%rbp)
	movl	%edx, -56(%rbp)
	xorps	%xmm0, %xmm0
	cmpl	$0, -40(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_103
# BB#101:
	cmpl	$0, -56(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_103
# BB#102:
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-40(%rbp), %xmm1
	cvtsi2ssl	-56(%rbp), %xmm2
	divss	%xmm2, %xmm1
.LBB0_103:                              # %ScaleFactor.exit
	movss	%xmm1, -64(%rbp)
	movss	%xmm1, -280(%rbp)
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_106
# BB#104:
	movq	BackEnd(%rip), %rax
	movq	-168(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movl	-136(%rbp), %esi
	movl	-116(%rbp), %ecx
	subl	-120(%rbp), %ecx
	movq	-168(%rbp), %rdx
	cvtsi2ssl	52(%rdx), %xmm0
	mulss	-280(%rbp), %xmm0
	cvttss2si	%xmm0, %edx
	addl	%ecx, %edx
	subl	%edx, %esi
	xorl	%edi, %edi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movss	-280(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	*152(%rax)
	movq	-168(%rbp), %rdi
	movl	52(%rdi), %edx
	movl	60(%rdi), %ecx
	movl	-128(%rbp), %r8d
	movl	-140(%rbp), %eax
	leaq	-272(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-268(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %esi
	jmp	.LBB0_105
.LBB0_130:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_131
	.align	16, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_131 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_131:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_132
# BB#133:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_141
# BB#134:
	cmpl	$0, -128(%rbp)
	je	.LBB0_135
# BB#138:
	movq	-112(%rbp), %rax
	cmpl	$0, 72(%rax)
	jg	.LBB0_140
# BB#139:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_140:
	movl	-120(%rbp), %eax
	shll	$7, %eax
	movq	-112(%rbp), %rcx
	cltd
	idivl	72(%rcx)
	movl	%eax, -252(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movq	-112(%rbp), %rcx
	cltd
	idivl	72(%rcx)
	movl	%eax, -256(%rbp)
	movq	BackEnd(%rip), %rax
	movq	-168(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	-136(%rbp), %esi
	subl	-116(%rbp), %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rcx
	cvtsi2ssl	64(%rcx), %xmm0
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	cvtsi2ssl	72(%rcx), %xmm1
	divss	%xmm2, %xmm1
	callq	*152(%rax)
	movq	-168(%rbp), %rdi
	movl	-252(%rbp), %edx
	movl	-256(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-140(%rbp), %eax
	leaq	-272(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-268(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%esi, %esi
	jmp	.LBB0_105
.LBB0_144:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_145
	.align	16, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_145 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_145:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_146
# BB#147:
	cmpl	$0, -128(%rbp)
	je	.LBB0_148
.LBB0_149:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
.LBB0_240:
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-140(%rbp), %r11d
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	jmp	.LBB0_850
.LBB0_158:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_159
	.align	16, 0x90
.LBB0_160:                              #   in Loop: Header=BB0_159 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_159:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_160
# BB#161:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 20(%rax)
	je	.LBB0_165
# BB#162:
	cmpl	$0, -128(%rbp)
	je	.LBB0_163
# BB#164:
	movq	BackEnd(%rip), %rax
	movq	-168(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	-136(%rbp), %esi
	subl	-116(%rbp), %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rcx
	movl	76(%rcx), %edi
	callq	*144(%rax)
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -352(%rbp)
	movl	$8388607, -348(%rbp)    # imm = 0x7FFFFF
	movq	-112(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -344(%rbp)
	movq	-112(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -368(%rbp)
	movl	$8388607, -364(%rbp)    # imm = 0x7FFFFF
	movq	-112(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -360(%rbp)
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	76(%rax), %edx
	leaq	-384(%rbp), %rdi
	leaq	-352(%rbp), %rcx
	leaq	-368(%rbp), %r8
	movl	$1, %r9d
	callq	RotateConstraint
	movq	-168(%rbp), %rdi
	movl	-384(%rbp), %edx
	movl	-376(%rbp), %ecx
	movl	-140(%rbp), %eax
	leaq	-272(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-268(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%esi, %esi
	movl	$1, %r8d
.LBB0_105:
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	jmp	.LBB0_207
.LBB0_150:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_151
	.align	16, 0x90
.LBB0_152:                              #   in Loop: Header=BB0_151 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_151:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_152
# BB#153:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-268(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_154
	.align	16, 0x90
.LBB0_155:                              #   in Loop: Header=BB0_154 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_154:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_155
# BB#156:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	jmp	.LBB0_157
.LBB0_166:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_167
	.align	16, 0x90
.LBB0_168:                              #   in Loop: Header=BB0_167 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_167:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_168
# BB#169:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_143
# BB#170:
	cmpl	$0, -128(%rbp)
	je	.LBB0_171
# BB#172:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_173
.LBB0_174:                              #   in Loop: Header=BB0_173 Depth=1
	movq	-392(%rbp), %rax
.LBB0_173:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_174
# BB#175:
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_182
# BB#176:
	movq	-392(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_177
.LBB0_178:                              #   in Loop: Header=BB0_177 Depth=1
	movq	-400(%rbp), %rax
.LBB0_177:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_178
# BB#179:
	movq	-392(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_180
.LBB0_181:                              #   in Loop: Header=BB0_180 Depth=1
	movq	-408(%rbp), %rax
.LBB0_180:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_181
	jmp	.LBB0_183
.LBB0_185:
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_186
	.align	16, 0x90
.LBB0_187:                              #   in Loop: Header=BB0_186 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_186:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_187
# BB#188:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 24(%rax)
	je	.LBB0_143
# BB#189:
	cmpl	$0, -128(%rbp)
	je	.LBB0_190
# BB#194:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_195
.LBB0_196:                              #   in Loop: Header=BB0_195 Depth=1
	movq	-416(%rbp), %rax
.LBB0_195:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_196
# BB#197:
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_204
# BB#198:
	movq	-416(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_199
.LBB0_200:                              #   in Loop: Header=BB0_199 Depth=1
	movq	-424(%rbp), %rax
.LBB0_199:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_200
# BB#201:
	movq	-416(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_202
.LBB0_203:                              #   in Loop: Header=BB0_202 Depth=1
	movq	-432(%rbp), %rax
.LBB0_202:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -432(%rbp)
	movq	-432(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_203
	jmp	.LBB0_205
.LBB0_419:
	movq	$0, -440(%rbp)
	movl	$0, -460(%rbp)
	movl	$0, -472(%rbp)
	movl	$1, -284(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB0_420
.LBB0_428:                              #   in Loop: Header=BB0_420 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-176(%rbp), %rax
.LBB0_420:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_422 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_431
# BB#421:                               #   in Loop: Header=BB0_420 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_422
	.align	16, 0x90
.LBB0_423:                              #   in Loop: Header=BB0_422 Depth=2
	movq	-168(%rbp), %rax
.LBB0_422:                              #   Parent Loop BB0_420 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_423
# BB#424:                               #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_429
# BB#425:                               #   in Loop: Header=BB0_420 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_426
# BB#427:                               #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_428
.LBB0_429:                              #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_437
# BB#430:                               #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_441
	jmp	.LBB0_431
.LBB0_437:                              #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_438
# BB#439:                               #   in Loop: Header=BB0_420 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_440
.LBB0_426:                              #   in Loop: Header=BB0_420 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_428
.LBB0_438:                              #   in Loop: Header=BB0_420 Depth=1
	xorl	%eax, %eax
.LBB0_440:                              #   in Loop: Header=BB0_420 Depth=1
	testb	%al, %al
	jne	.LBB0_431
.LBB0_441:                              #   in Loop: Header=BB0_420 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_420
.LBB0_254:
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_87
# BB#255:
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_256
.LBB0_269:                              #   in Loop: Header=BB0_256 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_256:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_258 Depth 2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_278
# BB#257:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_258
	.align	16, 0x90
.LBB0_259:                              #   in Loop: Header=BB0_258 Depth=2
	movq	-168(%rbp), %rax
.LBB0_258:                              #   Parent Loop BB0_256 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_259
# BB#265:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_270
# BB#266:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_267
# BB#268:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_269
.LBB0_270:                              #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_272
# BB#271:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_256
	jmp	.LBB0_276
.LBB0_272:                              #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_273
# BB#274:                               #   in Loop: Header=BB0_256 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_275
.LBB0_267:                              #   in Loop: Header=BB0_256 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_269
.LBB0_273:                              #   in Loop: Header=BB0_256 Depth=1
	xorl	%eax, %eax
.LBB0_275:                              #   in Loop: Header=BB0_256 Depth=1
	testb	%al, %al
	je	.LBB0_256
.LBB0_276:
	cmpq	$0, -192(%rbp)
	jne	.LBB0_278
# BB#277:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_278:
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_283
# BB#279:
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_283
# BB#280:
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_283
# BB#281:
	movq	-192(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB0_283
# BB#282:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-184(%rbp), %rdx
	addl	%eax, 56(%rdx,%rcx,4)
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
.LBB0_283:
	movl	$1, -284(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB0_284
.LBB0_292:                              #   in Loop: Header=BB0_284 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-176(%rbp), %rax
.LBB0_284:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_286 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_295
# BB#285:                               #   in Loop: Header=BB0_284 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_286
	.align	16, 0x90
.LBB0_287:                              #   in Loop: Header=BB0_286 Depth=2
	movq	-184(%rbp), %rax
.LBB0_286:                              #   Parent Loop BB0_284 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-184(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_287
# BB#288:                               #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_293
# BB#289:                               #   in Loop: Header=BB0_284 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_290
# BB#291:                               #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_292
.LBB0_293:                              #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_302
# BB#294:                               #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_306
	jmp	.LBB0_295
.LBB0_302:                              #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_303
# BB#304:                               #   in Loop: Header=BB0_284 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_305
.LBB0_290:                              #   in Loop: Header=BB0_284 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_292
.LBB0_303:                              #   in Loop: Header=BB0_284 Depth=1
	xorl	%eax, %eax
.LBB0_305:                              #   in Loop: Header=BB0_284 Depth=1
	testb	%al, %al
	jne	.LBB0_295
.LBB0_306:                              #   in Loop: Header=BB0_284 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_284
.LBB0_431:
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_850
# BB#432:
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -464(%rbp)
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -468(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -440(%rbp)
	cmpl	$0, -284(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -460(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_433
.LBB0_446:                              #   in Loop: Header=BB0_433 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_433:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_435 Depth 2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_455
# BB#434:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_435
	.align	16, 0x90
.LBB0_436:                              #   in Loop: Header=BB0_435 Depth=2
	movq	-168(%rbp), %rax
.LBB0_435:                              #   Parent Loop BB0_433 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_436
# BB#442:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_447
# BB#443:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_444
# BB#445:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_446
.LBB0_447:                              #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_449
# BB#448:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_433
	jmp	.LBB0_453
.LBB0_449:                              #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_450
# BB#451:                               #   in Loop: Header=BB0_433 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_452
.LBB0_444:                              #   in Loop: Header=BB0_433 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_446
.LBB0_450:                              #   in Loop: Header=BB0_433 Depth=1
	xorl	%eax, %eax
.LBB0_452:                              #   in Loop: Header=BB0_433 Depth=1
	testb	%al, %al
	je	.LBB0_433
	jmp	.LBB0_453
.LBB0_14:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-216(%rbp), %rax
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_17
# BB#18:
	movl	-116(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-216(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-200(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movq	-168(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-168(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %edx
	shrl	$23, %edx
	incl	%edx
	andl	$63, %edx
	movl	%edx, %esi
	shll	$23, %esi
	andl	$-528482305, %ecx       # imm = 0xFFFFFFFFE07FFFFF
	orl	%esi, %ecx
	movl	%ecx, 40(%rax)
	movq	-168(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB0_26
# BB#19:
	movl	-116(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	subl	88(%rcx), %eax
	movslq	-128(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_21
# BB#20:
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_22
.LBB0_49:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-112(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
# BB#50:
	movq	-112(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_51
.LBB0_212:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 88(%rcx)
	jmp	.LBB0_94
.LBB0_218:
	movq	BackEnd(%rip), %rax
	movq	-200(%rbp), %rdi
	movq	-112(%rbp), %rbx
	movl	88(%rbx), %ecx
	movl	%ecx, %esi
	subl	48(%rbx), %esi
	movl	-136(%rbp), %r8d
	subl	-116(%rbp), %r8d
	movl	%r8d, %edx
	subl	-124(%rbp), %edx
	addl	56(%rbx), %ecx
	addl	-120(%rbp), %r8d
	callq	*216(%rax)
.LBB0_94:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	jmp	.LBB0_84
.LBB0_295:
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -244(%rbp)
	movl	-116(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -248(%rbp)
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$11, %eax
	jae	.LBB0_365
# BB#296:
	cmpl	$0, -132(%rbp)
	je	.LBB0_297
.LBB0_365:
	movl	$0, -260(%rbp)
	jmp	.LBB0_366
.LBB0_21:
	movl	-116(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	subl	88(%rcx), %eax
.LBB0_22:
	movl	%eax, -256(%rbp)
	movq	-168(%rbp), %rcx
	movl	68(%rcx), %ecx
	movslq	-128(%rbp), %rdx
	movq	-200(%rbp), %rsi
	subl	48(%rsi,%rdx,4), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_24
# BB#23:
	movq	-168(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	jmp	.LBB0_25
.LBB0_24:
	movl	-256(%rbp), %ecx
.LBB0_25:
	movl	%ecx, -256(%rbp)
	movq	-200(%rbp), %rdi
	movq	-168(%rbp), %rax
	movl	88(%rax), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-136(%rbp), %eax
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -200(%rbp)
	movq	-168(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	jmp	.LBB0_26
.LBB0_840:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_841:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_843
# BB#842:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_843:
	movq	-112(%rbp), %rax
	movzbl	41(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_845
# BB#844:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-124(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-112(%rbp), %rax
	movb	$2, 41(%rax)
.LBB0_845:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %r8
	movq	-112(%rbp), %rax
	movl	48(%rax,%r8,4), %edx
	movl	56(%rax,%r8,4), %ecx
.LBB0_84:
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
.LBB0_85:
	xorl	%r9d, %r9d
.LBB0_86:
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
.LBB0_87:
	movl	-120(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-124(%rbp), %eax
.LBB0_78:
	movq	-160(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_850:
	movq	-224(%rbp), %rax
	addq	$600, %rsp              # imm = 0x258
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_224:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-112(%rbp), %rax
	cmpb	$0, 41(%rax)
	je	.LBB0_87
# BB#225:
	movq	-112(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_51:
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	48(%rcx,%rax), %rax
	movq	%rax, -208(%rbp)
	movzwl	42(%rax), %eax
	cmpl	font_curr_page(%rip), %eax
	jge	.LBB0_87
# BB#52:
	movq	-208(%rbp), %rdi
	callq	FontPageUsed
	jmp	.LBB0_87
.LBB0_29:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_31:
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_33
# BB#34:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_37
# BB#35:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	je	.LBB0_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_37:
	movq	-168(%rbp), %rax
	movl	40(%rax), %ecx
	movl	%ecx, %edx
	shrl	$23, %edx
	incl	%edx
	andl	$63, %edx
	movl	%edx, %esi
	shll	$23, %esi
	andl	$-528482305, %ecx       # imm = 0xFFFFFFFFE07FFFFF
	orl	%esi, %ecx
	movl	%ecx, 40(%rax)
	movq	-168(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB0_850
# BB#38:
	movq	-168(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_39
.LBB0_40:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-200(%rbp), %rax
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_40
# BB#41:
	movl	-116(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	subl	88(%rcx), %eax
	movslq	-128(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_43
# BB#42:
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_44
.LBB0_229:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_231:
	movq	%rax, -176(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_232
	.align	16, 0x90
.LBB0_233:                              #   in Loop: Header=BB0_232 Depth=1
	movq	-168(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	incl	-140(%rbp)
.LBB0_232:                              # =>This Inner Loop Header: Depth=1
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_233
# BB#234:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %rax
	movl	48(%rdi,%rax,4), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB0_236
# BB#235:
	movl	-120(%rbp), %edx
	jmp	.LBB0_237
.LBB0_236:
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
.LBB0_237:
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-124(%rbp), %eax
	jge	.LBB0_239
# BB#238:
	movl	-124(%rbp), %ecx
	jmp	.LBB0_240
.LBB0_239:
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	jmp	.LBB0_240
.LBB0_543:
	movl	$1, -284(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB0_544
.LBB0_552:                              #   in Loop: Header=BB0_544 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-176(%rbp), %rax
.LBB0_544:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_546 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_555
# BB#545:                               #   in Loop: Header=BB0_544 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_546
	.align	16, 0x90
.LBB0_547:                              #   in Loop: Header=BB0_546 Depth=2
	movq	-168(%rbp), %rax
.LBB0_546:                              #   Parent Loop BB0_544 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_547
# BB#548:                               #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_553
# BB#549:                               #   in Loop: Header=BB0_544 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_550
# BB#551:                               #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_552
.LBB0_553:                              #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_561
# BB#554:                               #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_565
	jmp	.LBB0_555
.LBB0_561:                              #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_562
# BB#563:                               #   in Loop: Header=BB0_544 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_564
.LBB0_550:                              #   in Loop: Header=BB0_544 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_552
.LBB0_562:                              #   in Loop: Header=BB0_544 Depth=1
	xorl	%eax, %eax
.LBB0_564:                              #   in Loop: Header=BB0_544 Depth=1
	testb	%al, %al
	jne	.LBB0_555
.LBB0_565:                              #   in Loop: Header=BB0_544 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_544
.LBB0_141:
	movq	-112(%rbp), %rax
	cmpl	$128, 64(%rax)
	jne	.LBB0_87
# BB#142:
	movq	-112(%rbp), %rax
	cmpl	$128, 72(%rax)
	jne	.LBB0_87
	jmp	.LBB0_143
.LBB0_148:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
.LBB0_157:
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
.LBB0_26:
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_78
.LBB0_165:
	movq	-112(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB0_87
	jmp	.LBB0_143
.LBB0_555:
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_26
# BB#556:
	movq	$0, -552(%rbp)
	movl	$0, -512(%rbp)
	movl	-116(%rbp), %eax
	subl	-120(%rbp), %eax
	movl	%eax, -496(%rbp)
	movslq	-128(%rbp), %rcx
	movq	-168(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -236(%rbp)
	movl	-120(%rbp), %eax
	addl	-124(%rbp), %eax
	movl	%eax, -492(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_557
.LBB0_570:                              #   in Loop: Header=BB0_557 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_557:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_559 Depth 2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_579
# BB#558:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_559
	.align	16, 0x90
.LBB0_560:                              #   in Loop: Header=BB0_559 Depth=2
	movq	-168(%rbp), %rax
.LBB0_559:                              #   Parent Loop BB0_557 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_560
# BB#566:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_571
# BB#567:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_568
# BB#569:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_570
.LBB0_571:                              #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_573
# BB#572:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_557
	jmp	.LBB0_577
.LBB0_573:                              #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_574
# BB#575:                               #   in Loop: Header=BB0_557 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_576
.LBB0_568:                              #   in Loop: Header=BB0_557 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_570
.LBB0_574:                              #   in Loop: Header=BB0_557 Depth=1
	xorl	%eax, %eax
.LBB0_576:                              #   in Loop: Header=BB0_557 Depth=1
	testb	%al, %al
	je	.LBB0_557
	jmp	.LBB0_577
.LBB0_43:
	movl	-116(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	subl	88(%rcx), %eax
.LBB0_44:
	movl	%eax, -256(%rbp)
	movq	-168(%rbp), %rcx
	movl	68(%rcx), %ecx
	movslq	-128(%rbp), %rdx
	movq	-200(%rbp), %rsi
	subl	48(%rsi,%rdx,4), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_46
# BB#45:
	movq	-168(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	jmp	.LBB0_47
.LBB0_46:
	movl	-256(%rbp), %ecx
.LBB0_47:
	movl	%ecx, -256(%rbp)
	movq	-200(%rbp), %rdi
	movq	-168(%rbp), %rax
	movl	88(%rax), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-136(%rbp), %eax
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -200(%rbp)
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-160(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-168(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	jmp	.LBB0_850
.LBB0_116:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movl	-120(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-124(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	-120(%rbp), %eax
	addl	-124(%rbp), %eax
	movq	-168(%rbp), %rcx
	movl	48(%rcx), %edx
	addl	56(%rcx), %edx
	movl	%eax, -40(%rbp)
	movl	%edx, -56(%rbp)
	xorps	%xmm0, %xmm0
	cmpl	$0, -40(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_119
# BB#117:
	cmpl	$0, -56(%rbp)
	xorps	%xmm1, %xmm1
	jle	.LBB0_119
# BB#118:
	xorps	%xmm1, %xmm1
	cvtsi2ssl	-40(%rbp), %xmm1
	cvtsi2ssl	-56(%rbp), %xmm2
	divss	%xmm2, %xmm1
.LBB0_119:                              # %ScaleFactor.exit2
	movss	%xmm1, -64(%rbp)
	movss	%xmm1, -280(%rbp)
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_121
# BB#120:
	movq	-168(%rbp), %rdi
	movl	48(%rdi), %edx
	movl	56(%rdi), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	jmp	.LBB0_85
.LBB0_135:
	movq	-112(%rbp), %rax
	cmpl	$0, 64(%rax)
	jg	.LBB0_137
# BB#136:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_137:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movl	-120(%rbp), %eax
	shll	$7, %eax
	movq	-112(%rbp), %rcx
	cltd
	idivl	64(%rcx)
	movl	%eax, -252(%rbp)
	movl	-124(%rbp), %eax
	shll	$7, %eax
	movq	-112(%rbp), %rcx
	cltd
	idivl	64(%rcx)
	movl	%eax, -256(%rbp)
	movq	-168(%rbp), %rdi
	movl	-252(%rbp), %edx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %ecx
	movl	-140(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	jmp	.LBB0_86
.LBB0_163:
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-112(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -304(%rbp)
	movl	$8388607, -300(%rbp)    # imm = 0x7FFFFF
	movq	-112(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -296(%rbp)
	movq	-112(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -320(%rbp)
	movl	$8388607, -316(%rbp)    # imm = 0x7FFFFF
	movq	-112(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -312(%rbp)
	movq	-168(%rbp), %rsi
	movq	-112(%rbp), %rax
	movl	76(%rax), %edx
	leaq	-336(%rbp), %rdi
	leaq	-304(%rbp), %rcx
	leaq	-320(%rbp), %r8
	xorl	%r9d, %r9d
	callq	RotateConstraint
	movq	-168(%rbp), %rdi
	movl	-336(%rbp), %edx
	movl	-328(%rbp), %ecx
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %esi
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, %esi
	xorl	%r8d, %r8d
	jmp	.LBB0_85
.LBB0_171:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-124(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-116(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, 88(%rdx)
.LBB0_143:
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	jmp	.LBB0_86
.LBB0_190:
	movq	-112(%rbp), %rax
	movl	76(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	jle	.LBB0_193
# BB#191:
	movq	-112(%rbp), %rax
	movl	76(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	48(%rcx,%rax), %rax
	movq	%rax, -208(%rbp)
	movzwl	42(%rax), %eax
	cmpl	font_curr_page(%rip), %eax
	jge	.LBB0_193
# BB#192:
	movq	-208(%rbp), %rdi
	callq	FontPageUsed
.LBB0_193:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-124(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-116(%rbp), %eax
	movq	-112(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, 88(%rcx)
	movq	-168(%rbp), %rdi
	movl	-120(%rbp), %esi
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %edx
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	jmp	.LBB0_86
.LBB0_106:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_108
# BB#107:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_109
.LBB0_108:
	movq	-168(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
.LBB0_109:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	jmp	.LBB0_110
.LBB0_182:
	movq	-392(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	$0, -408(%rbp)
.LBB0_183:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-124(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %r8
	movq	-400(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %ebx
	movslq	-128(%rbp), %rax
	subl	48(%rcx,%rax,4), %ebx
	subl	%ebx, %edx
	callq	*120(%r8)
	movq	-168(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-132(%rbp), %r9d
	movl	-136(%rbp), %r10d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	cmpq	$0, -408(%rbp)
	je	.LBB0_87
# BB#184:
	movq	BackEnd(%rip), %r8
	movq	-408(%rbp), %rdi
	movq	-112(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %ebx
	movslq	-128(%rbp), %rax
	subl	48(%rcx,%rax,4), %ebx
	subl	%ebx, %edx
	callq	*120(%r8)
	jmp	.LBB0_87
.LBB0_204:
	movq	-416(%rbp), %rax
	movq	%rax, -424(%rbp)
	movq	$0, -432(%rbp)
.LBB0_205:
	movl	-120(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-124(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %rax
	movq	-112(%rbp), %rdi
	movl	88(%rdi), %esi
	movl	-136(%rbp), %edx
	movl	-116(%rbp), %ecx
	addl	60(%rdi), %ecx
	subl	%ecx, %edx
	callq	*192(%rax)
	movq	BackEnd(%rip), %rax
	movq	-424(%rbp), %rdi
	callq	*176(%rax)
	movq	BackEnd(%rip), %rax
	callq	*168(%rax)
	movq	-168(%rbp), %rdi
	movl	-120(%rbp), %esi
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	leal	(%rsi,%rcx), %eax
	movl	-140(%rbp), %edx
	leaq	-272(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-268(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	callq	FixAndPrintObject
	movq	%rax, -168(%rbp)
	cmpq	$0, -432(%rbp)
	je	.LBB0_207
# BB#206:
	movq	BackEnd(%rip), %rax
	movq	-432(%rbp), %rdi
	callq	*176(%rax)
.LBB0_207:
	movq	BackEnd(%rip), %rax
	callq	*168(%rax)
	jmp	.LBB0_87
.LBB0_297:
	movq	-112(%rbp), %rax
	movl	-244(%rbp), %ecx
	movl	-128(%rbp), %edx
	movq	%rax, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%edx, -48(%rbp)
	movl	$1, -88(%rbp)
	movq	-40(%rbp), %rax
	jmp	.LBB0_298
.LBB0_311:                              #   in Loop: Header=BB0_298 Depth=1
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)
	movq	-64(%rbp), %rax
.LBB0_298:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_300 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_314
# BB#299:                               #   in Loop: Header=BB0_298 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB0_300
	.align	16, 0x90
.LBB0_301:                              #   in Loop: Header=BB0_300 Depth=2
	movq	-72(%rbp), %rax
.LBB0_300:                              #   Parent Loop BB0_298 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_301
# BB#307:                               #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_312
# BB#308:                               #   in Loop: Header=BB0_298 Depth=1
	cmpl	$0, -88(%rbp)
	je	.LBB0_309
# BB#310:                               #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_311
.LBB0_312:                              #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_320
# BB#313:                               #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_324
	jmp	.LBB0_314
.LBB0_320:                              #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_321
# BB#322:                               #   in Loop: Header=BB0_298 Depth=1
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_323
.LBB0_309:                              #   in Loop: Header=BB0_298 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_311
.LBB0_321:                              #   in Loop: Header=BB0_298 Depth=1
	xorl	%eax, %eax
.LBB0_323:                              #   in Loop: Header=BB0_298 Depth=1
	testb	%al, %al
	jne	.LBB0_314
.LBB0_324:                              #   in Loop: Header=BB0_298 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB0_298
.LBB0_314:
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_362
# BB#315:
	movl	$0, -84(%rbp)
	movslq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -96(%rbp)
	movq	$0, -80(%rbp)
	movl	$1, -88(%rbp)
	jmp	.LBB0_316
.LBB0_329:                              #   in Loop: Header=BB0_316 Depth=1
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)
.LBB0_316:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_318 Depth 2
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_338
# BB#317:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB0_318
	.align	16, 0x90
.LBB0_319:                              #   in Loop: Header=BB0_318 Depth=2
	movq	-56(%rbp), %rax
.LBB0_318:                              #   Parent Loop BB0_316 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_319
# BB#325:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_330
# BB#326:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_327
# BB#328:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_329
.LBB0_330:                              #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_332
# BB#331:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_316
	jmp	.LBB0_336
.LBB0_332:                              #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_333
# BB#334:                               #   in Loop: Header=BB0_316 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_335
.LBB0_327:                              #   in Loop: Header=BB0_316 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_329
.LBB0_333:                              #   in Loop: Header=BB0_316 Depth=1
	xorl	%eax, %eax
.LBB0_335:                              #   in Loop: Header=BB0_316 Depth=1
	testb	%al, %al
	je	.LBB0_316
	jmp	.LBB0_336
.LBB0_121:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_123
# BB#122:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_124
.LBB0_123:
	movq	-168(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
.LBB0_124:
	movq	-168(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$2, %esi
	movl	$.L.str.3, %edx
.LBB0_110:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_87
.LBB0_362:
	movl	$0, -92(%rbp)
	jmp	.LBB0_363
.LBB0_336:
	cmpq	$0, -80(%rbp)
	jne	.LBB0_338
# BB#337:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_338:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_344 Depth 2
                                        #       Child Loop BB0_346 Depth 3
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_359
# BB#339:                               #   in Loop: Header=BB0_338 Depth=1
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	je	.LBB0_342
# BB#340:                               #   in Loop: Header=BB0_338 Depth=1
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	.LBB0_342
# BB#341:                               #   in Loop: Header=BB0_338 Depth=1
	movq	-80(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	je	.LBB0_342
# BB#343:                               #   in Loop: Header=BB0_338 Depth=1
	movslq	-48(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-56(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-80(%rbp), %rcx
	addq	$44, %rcx
	movl	-44(%rbp), %r8d
	movl	-96(%rbp), %r9d
	callq	ActualGap
	addl	%eax, -96(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	incl	-84(%rbp)
	movq	$0, -80(%rbp)
	movl	$1, -88(%rbp)
	jmp	.LBB0_344
.LBB0_352:                              #   in Loop: Header=BB0_344 Depth=2
	movzbl	%al, %eax
	movl	%eax, -88(%rbp)
.LBB0_344:                              #   Parent Loop BB0_338 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_346 Depth 3
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB0_338
# BB#345:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-64(%rbp), %rax
	jmp	.LBB0_346
	.align	16, 0x90
.LBB0_347:                              #   in Loop: Header=BB0_346 Depth=3
	movq	-56(%rbp), %rax
.LBB0_346:                              #   Parent Loop BB0_338 Depth=1
                                        #     Parent Loop BB0_344 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_347
# BB#348:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_353
# BB#349:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB0_350
# BB#351:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_352
.LBB0_353:                              #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_355
# BB#354:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_344
	jmp	.LBB0_336
.LBB0_355:                              #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_356
# BB#357:                               #   in Loop: Header=BB0_344 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_358
.LBB0_350:                              #   in Loop: Header=BB0_344 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_352
.LBB0_356:                              #   in Loop: Header=BB0_344 Depth=2
	xorl	%eax, %eax
.LBB0_358:                              #   in Loop: Header=BB0_344 Depth=2
	testb	%al, %al
	je	.LBB0_344
	jmp	.LBB0_336
.LBB0_342:
	movl	$0, -28(%rbp)
	jmp	.LBB0_364
.LBB0_359:
	movl	-96(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-72(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movl	%eax, -100(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -84(%rbp)
	je	.LBB0_361
# BB#360:
	movl	-44(%rbp), %eax
	subl	-100(%rbp), %eax
	cltd
	idivl	-84(%rbp)
.LBB0_361:
	movl	%eax, -92(%rbp)
.LBB0_363:
	movl	-92(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB0_364:                              # %FindAdjustIncrement.exit
	movl	-28(%rbp), %eax
	movl	%eax, -260(%rbp)
.LBB0_366:
	movl	-248(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -236(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_367
.LBB0_375:                              #   in Loop: Header=BB0_367 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_367:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_369 Depth 2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_384
# BB#368:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_369
	.align	16, 0x90
.LBB0_370:                              #   in Loop: Header=BB0_369 Depth=2
	movq	-168(%rbp), %rax
.LBB0_369:                              #   Parent Loop BB0_367 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_370
# BB#371:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_376
# BB#372:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_373
# BB#374:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_375
.LBB0_376:                              #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_378
# BB#377:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_367
	jmp	.LBB0_382
.LBB0_378:                              #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_379
# BB#380:                               #   in Loop: Header=BB0_367 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_381
.LBB0_373:                              #   in Loop: Header=BB0_367 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_375
.LBB0_379:                              #   in Loop: Header=BB0_367 Depth=1
	xorl	%eax, %eax
.LBB0_381:                              #   in Loop: Header=BB0_367 Depth=1
	testb	%al, %al
	je	.LBB0_367
.LBB0_382:
	cmpq	$0, -192(%rbp)
	jne	.LBB0_384
# BB#383:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_384
	.align	16, 0x90
.LBB0_385:                              #   in Loop: Header=BB0_384 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_392
# BB#386:                               #   in Loop: Header=BB0_384 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_392
# BB#387:                               #   in Loop: Header=BB0_384 Depth=1
	movq	-192(%rbp), %rax
	movzwl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_392
# BB#388:                               #   in Loop: Header=BB0_384 Depth=1
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %rax
	movl	48(%rdi,%rax,4), %edx
	movl	-116(%rbp), %ecx
	addl	-124(%rbp), %ecx
	subl	%esi, %ecx
	movq	-168(%rbp), %r8
	movl	48(%r8,%rax,4), %ebx
	addl	56(%r8,%rax,4), %ebx
	subl	%ebx, %ecx
	cmpl	%ecx, 56(%rdi,%rax,4)
	jge	.LBB0_390
# BB#389:                               #   in Loop: Header=BB0_384 Depth=1
	movl	-116(%rbp), %ecx
	addl	-124(%rbp), %ecx
	subl	-236(%rbp), %ecx
	movslq	-128(%rbp), %r8
	movq	-168(%rbp), %rbx
	movl	48(%rbx,%r8,4), %eax
	addl	56(%rbx,%r8,4), %eax
	subl	%eax, %ecx
	movl	-128(%rbp), %r8d
	jmp	.LBB0_393
.LBB0_392:                              #   in Loop: Header=BB0_384 Depth=1
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	addl	-260(%rbp), %ecx
.LBB0_393:                              #   in Loop: Header=BB0_384 Depth=1
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -184(%rbp)
	movl	-272(%rbp), %edi
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-192(%rbp), %rcx
	addq	$44, %rcx
	movl	-244(%rbp), %r8d
	movl	-236(%rbp), %r9d
	subl	-248(%rbp), %r9d
	callq	ActualGap
	addl	%eax, -236(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_394
	.align	16, 0x90
.LBB0_402:                              #   in Loop: Header=BB0_394 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_394:                              #   Parent Loop BB0_384 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_396 Depth 3
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_384
# BB#395:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-176(%rbp), %rax
	jmp	.LBB0_396
	.align	16, 0x90
.LBB0_397:                              #   in Loop: Header=BB0_396 Depth=3
	movq	-168(%rbp), %rax
.LBB0_396:                              #   Parent Loop BB0_384 Depth=1
                                        #     Parent Loop BB0_394 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_397
# BB#398:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_403
# BB#399:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_400
# BB#401:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_402
	.align	16, 0x90
.LBB0_403:                              #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_405
# BB#404:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_394
	jmp	.LBB0_382
	.align	16, 0x90
.LBB0_405:                              #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_406
# BB#407:                               #   in Loop: Header=BB0_394 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_408
.LBB0_400:                              #   in Loop: Header=BB0_394 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_402
.LBB0_406:                              #   in Loop: Header=BB0_394 Depth=2
	xorl	%eax, %eax
.LBB0_408:                              #   in Loop: Header=BB0_394 Depth=2
	testb	%al, %al
	je	.LBB0_394
	jmp	.LBB0_382
.LBB0_390:                              #   in Loop: Header=BB0_384 Depth=1
	movslq	-128(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movl	-128(%rbp), %r8d
	jmp	.LBB0_393
	.align	16, 0x90
.LBB0_384:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_394 Depth 2
                                        #       Child Loop BB0_396 Depth 3
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_385
# BB#409:
	cmpl	$0, -132(%rbp)
	je	.LBB0_411
# BB#410:
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	jmp	.LBB0_415
.LBB0_411:
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %rax
	movl	48(%rdi,%rax,4), %edx
	movl	-116(%rbp), %ecx
	addl	-124(%rbp), %ecx
	subl	%esi, %ecx
	cmpl	%ecx, 56(%rdi,%rax,4)
	jge	.LBB0_413
# BB#412:
	movl	-116(%rbp), %ecx
	addl	-124(%rbp), %ecx
	subl	-236(%rbp), %ecx
	jmp	.LBB0_414
.LBB0_413:
	movslq	-128(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
.LBB0_414:
	movl	-128(%rbp), %r8d
.LBB0_415:
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -184(%rbp)
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-120(%rbp), %eax
	jge	.LBB0_417
# BB#416:
	movl	-120(%rbp), %eax
	jmp	.LBB0_418
.LBB0_417:
	movslq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
.LBB0_418:
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	subl	-248(%rbp), %eax
	movq	-152(%rbp), %rcx
	subl	(%rcx), %eax
	jmp	.LBB0_78
.LBB0_453:
	cmpq	$0, -192(%rbp)
	jne	.LBB0_455
# BB#454:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB0_455:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_458 Depth 2
                                        #       Child Loop BB0_460 Depth 3
                                        #     Child Loop BB0_486 Depth 2
                                        #       Child Loop BB0_488 Depth 3
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_501
# BB#456:                               #   in Loop: Header=BB0_455 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_457
# BB#477:                               #   in Loop: Header=BB0_455 Depth=1
	movl	-464(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-168(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB0_479
# BB#478:                               #   in Loop: Header=BB0_455 Depth=1
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_480
.LBB0_457:                              #   in Loop: Header=BB0_455 Depth=1
	movq	-456(%rbp), %rdi
	movl	-464(%rbp), %edx
	movl	-116(%rbp), %esi
	addl	%edx, %esi
	movl	-124(%rbp), %ecx
	subl	%edx, %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-268(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -456(%rbp)
	movslq	-128(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -464(%rbp)
	movslq	-128(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -468(%rbp)
	movq	-440(%rbp), %rax
	jmp	.LBB0_458
	.align	16, 0x90
.LBB0_472:                              #   in Loop: Header=BB0_458 Depth=2
	movq	-448(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_458:                              #   Parent Loop BB0_455 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_460 Depth 3
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	cmpq	-176(%rbp), %rax
	je	.LBB0_473
# BB#459:                               #   in Loop: Header=BB0_458 Depth=2
	movq	-448(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_460
	.align	16, 0x90
.LBB0_461:                              #   in Loop: Header=BB0_460 Depth=3
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	incl	-140(%rbp)
.LBB0_460:                              #   Parent Loop BB0_455 Depth=1
                                        #     Parent Loop BB0_458 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_461
# BB#462:                               #   in Loop: Header=BB0_458 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_472
# BB#463:                               #   in Loop: Header=BB0_458 Depth=2
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_472
# BB#464:                               #   in Loop: Header=BB0_458 Depth=2
	movq	-200(%rbp), %rax
	cmpq	-456(%rbp), %rax
	je	.LBB0_472
# BB#465:                               #   in Loop: Header=BB0_458 Depth=2
	movq	-200(%rbp), %rdi
	movl	-464(%rbp), %edx
	movl	-116(%rbp), %esi
	addl	%edx, %esi
	movl	-124(%rbp), %ecx
	subl	%edx, %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -200(%rbp)
	movl	-464(%rbp), %ecx
	movslq	-128(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB0_467
# BB#466:                               #   in Loop: Header=BB0_458 Depth=2
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_468
.LBB0_467:                              #   in Loop: Header=BB0_458 Depth=2
	movl	-464(%rbp), %eax
.LBB0_468:                              #   in Loop: Header=BB0_458 Depth=2
	movl	%eax, -464(%rbp)
	movl	-468(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_470
# BB#469:                               #   in Loop: Header=BB0_458 Depth=2
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_471
.LBB0_470:                              #   in Loop: Header=BB0_458 Depth=2
	movl	-468(%rbp), %eax
.LBB0_471:                              #   in Loop: Header=BB0_458 Depth=2
	movl	%eax, -468(%rbp)
	jmp	.LBB0_472
.LBB0_473:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-464(%rbp), %eax
	addl	-468(%rbp), %eax
	cmpl	%eax, -472(%rbp)
	jge	.LBB0_475
# BB#474:                               #   in Loop: Header=BB0_455 Depth=1
	movl	-464(%rbp), %eax
	addl	-468(%rbp), %eax
	jmp	.LBB0_476
.LBB0_479:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-464(%rbp), %eax
.LBB0_480:                              #   in Loop: Header=BB0_455 Depth=1
	movl	%eax, -464(%rbp)
	movl	-468(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-168(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_482
# BB#481:                               #   in Loop: Header=BB0_455 Depth=1
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_483
.LBB0_482:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-468(%rbp), %eax
.LBB0_483:                              #   in Loop: Header=BB0_455 Depth=1
	movl	%eax, -468(%rbp)
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-456(%rbp), %rdx
	cmpl	56(%rdx,%rax,4), %ecx
	jle	.LBB0_485
# BB#484:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -456(%rbp)
	jmp	.LBB0_485
.LBB0_475:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-472(%rbp), %eax
.LBB0_476:                              #   in Loop: Header=BB0_455 Depth=1
	movl	%eax, -472(%rbp)
	movl	$1, -460(%rbp)
	movq	$0, -440(%rbp)
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -464(%rbp)
	movslq	-128(%rbp), %rax
	movq	-168(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -468(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -456(%rbp)
	movq	-176(%rbp), %rax
	movq	%rax, -440(%rbp)
.LBB0_485:                              #   in Loop: Header=BB0_455 Depth=1
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_486
	.align	16, 0x90
.LBB0_494:                              #   in Loop: Header=BB0_486 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_486:                              #   Parent Loop BB0_455 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_488 Depth 3
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_455
# BB#487:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-176(%rbp), %rax
	jmp	.LBB0_488
	.align	16, 0x90
.LBB0_489:                              #   in Loop: Header=BB0_488 Depth=3
	movq	-168(%rbp), %rax
.LBB0_488:                              #   Parent Loop BB0_455 Depth=1
                                        #     Parent Loop BB0_486 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_489
# BB#490:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_495
# BB#491:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_492
# BB#493:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_494
	.align	16, 0x90
.LBB0_495:                              #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_497
# BB#496:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_486
	jmp	.LBB0_453
	.align	16, 0x90
.LBB0_497:                              #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_498
# BB#499:                               #   in Loop: Header=BB0_486 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_500
.LBB0_492:                              #   in Loop: Header=BB0_486 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_494
.LBB0_498:                              #   in Loop: Header=BB0_486 Depth=2
	xorl	%eax, %eax
.LBB0_500:                              #   in Loop: Header=BB0_486 Depth=2
	testb	%al, %al
	je	.LBB0_486
	jmp	.LBB0_453
.LBB0_501:
	cmpq	$0, -440(%rbp)
	jne	.LBB0_503
# BB#502:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_503:
	cmpl	$0, -460(%rbp)
	jne	.LBB0_505
# BB#504:
	cmpl	$0, -284(%rbp)
	je	.LBB0_505
# BB#525:
	movq	-456(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-468(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-464(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -456(%rbp)
	movq	-440(%rbp), %rax
	movq	%rax, -448(%rbp)
	leaq	-272(%rbp), %r14
	leaq	-268(%rbp), %r15
	jmp	.LBB0_526
.LBB0_540:                              #   in Loop: Header=BB0_526 Depth=1
	movq	-448(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -448(%rbp)
.LBB0_526:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_528 Depth 2
	movq	-448(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_541
# BB#527:                               #   in Loop: Header=BB0_526 Depth=1
	movq	-448(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_528
	.align	16, 0x90
.LBB0_529:                              #   in Loop: Header=BB0_528 Depth=2
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	incl	-140(%rbp)
.LBB0_528:                              #   Parent Loop BB0_526 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_529
# BB#530:                               #   in Loop: Header=BB0_526 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_540
# BB#531:                               #   in Loop: Header=BB0_526 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_540
# BB#532:                               #   in Loop: Header=BB0_526 Depth=1
	movq	-200(%rbp), %rax
	cmpq	-456(%rbp), %rax
	je	.LBB0_540
# BB#533:                               #   in Loop: Header=BB0_526 Depth=1
	movq	-200(%rbp), %rdi
	movl	-116(%rbp), %esi
	movl	-120(%rbp), %edx
	movl	-124(%rbp), %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -200(%rbp)
	movl	-464(%rbp), %eax
	cmpl	-268(%rbp), %eax
	jge	.LBB0_535
# BB#534:                               #   in Loop: Header=BB0_526 Depth=1
	movl	-268(%rbp), %eax
	jmp	.LBB0_536
.LBB0_535:                              #   in Loop: Header=BB0_526 Depth=1
	movl	-464(%rbp), %eax
.LBB0_536:                              #   in Loop: Header=BB0_526 Depth=1
	movl	%eax, -464(%rbp)
	movl	-468(%rbp), %eax
	cmpl	-272(%rbp), %eax
	jge	.LBB0_538
# BB#537:                               #   in Loop: Header=BB0_526 Depth=1
	movl	-272(%rbp), %eax
	jmp	.LBB0_539
.LBB0_538:                              #   in Loop: Header=BB0_526 Depth=1
	movl	-468(%rbp), %eax
.LBB0_539:                              #   in Loop: Header=BB0_526 Depth=1
	movl	%eax, -468(%rbp)
	jmp	.LBB0_540
.LBB0_505:
	movq	-456(%rbp), %rdi
	movl	-464(%rbp), %edx
	movl	-116(%rbp), %esi
	addl	%edx, %esi
	movl	-124(%rbp), %ecx
	subl	%edx, %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-268(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -456(%rbp)
	movslq	-128(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -464(%rbp)
	movslq	-128(%rbp), %rax
	movq	-456(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -468(%rbp)
	movq	-440(%rbp), %rax
	jmp	.LBB0_506
.LBB0_520:                              #   in Loop: Header=BB0_506 Depth=1
	movq	-448(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_506:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_508 Depth 2
	movq	%rax, -448(%rbp)
	movq	-448(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_521
# BB#507:                               #   in Loop: Header=BB0_506 Depth=1
	movq	-448(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	movl	$1, -140(%rbp)
	jmp	.LBB0_508
	.align	16, 0x90
.LBB0_509:                              #   in Loop: Header=BB0_508 Depth=2
	movq	-200(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -200(%rbp)
	incl	-140(%rbp)
.LBB0_508:                              #   Parent Loop BB0_506 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_509
# BB#510:                               #   in Loop: Header=BB0_506 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_520
# BB#511:                               #   in Loop: Header=BB0_506 Depth=1
	movq	-200(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_520
# BB#512:                               #   in Loop: Header=BB0_506 Depth=1
	movq	-200(%rbp), %rax
	cmpq	-456(%rbp), %rax
	je	.LBB0_520
# BB#513:                               #   in Loop: Header=BB0_506 Depth=1
	movq	-200(%rbp), %rdi
	movl	-464(%rbp), %edx
	movl	-116(%rbp), %esi
	addl	%edx, %esi
	movl	-124(%rbp), %ecx
	subl	%edx, %ecx
	movl	-128(%rbp), %r8d
	movl	-136(%rbp), %eax
	movl	-140(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -200(%rbp)
	movl	-464(%rbp), %ecx
	movslq	-128(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB0_515
# BB#514:                               #   in Loop: Header=BB0_506 Depth=1
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_516
.LBB0_515:                              #   in Loop: Header=BB0_506 Depth=1
	movl	-464(%rbp), %eax
.LBB0_516:                              #   in Loop: Header=BB0_506 Depth=1
	movl	%eax, -464(%rbp)
	movl	-468(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-200(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_518
# BB#517:                               #   in Loop: Header=BB0_506 Depth=1
	movslq	-128(%rbp), %rax
	movq	-200(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_519
.LBB0_518:                              #   in Loop: Header=BB0_506 Depth=1
	movl	-468(%rbp), %eax
.LBB0_519:                              #   in Loop: Header=BB0_506 Depth=1
	movl	%eax, -468(%rbp)
	jmp	.LBB0_520
.LBB0_521:
	movl	-464(%rbp), %eax
	addl	-468(%rbp), %eax
	cmpl	%eax, -472(%rbp)
	jge	.LBB0_523
# BB#522:
	movl	-464(%rbp), %eax
	addl	-468(%rbp), %eax
	jmp	.LBB0_524
.LBB0_523:
	movl	-472(%rbp), %eax
.LBB0_524:
	movl	%eax, -472(%rbp)
	movq	-152(%rbp), %rax
	movl	$0, (%rax)
	movl	-472(%rbp), %eax
	jmp	.LBB0_78
.LBB0_541:
	movl	-464(%rbp), %eax
	movq	-152(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-468(%rbp), %eax
	jmp	.LBB0_78
.LBB0_577:
	cmpq	$0, -192(%rbp)
	jne	.LBB0_579
# BB#578:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_579
.LBB0_580:                              #   in Loop: Header=BB0_579 Depth=1
	movslq	-128(%rbp), %rax
	movq	-184(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-168(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-192(%rbp), %rcx
	addq	$44, %rcx
	movl	-492(%rbp), %r8d
	movl	-236(%rbp), %r9d
	subl	-496(%rbp), %r9d
	callq	ActualGap
	movq	-192(%rbp), %rcx
	movw	%ax, 54(%rcx)
	movq	-192(%rbp), %rax
	movswl	54(%rax), %eax
	addl	%eax, -236(%rbp)
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	je	.LBB0_583
# BB#581:                               #   in Loop: Header=BB0_579 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	.LBB0_583
# BB#582:                               #   in Loop: Header=BB0_579 Depth=1
	movq	-192(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB0_584
.LBB0_583:                              #   in Loop: Header=BB0_579 Depth=1
	movq	-192(%rbp), %rax
	movq	%rax, -552(%rbp)
	movl	$0, -512(%rbp)
.LBB0_586:                              #   in Loop: Header=BB0_579 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_587
	.align	16, 0x90
.LBB0_595:                              #   in Loop: Header=BB0_587 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_587:                              #   Parent Loop BB0_579 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_589 Depth 3
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_579
# BB#588:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-176(%rbp), %rax
	jmp	.LBB0_589
	.align	16, 0x90
.LBB0_590:                              #   in Loop: Header=BB0_589 Depth=3
	movq	-168(%rbp), %rax
.LBB0_589:                              #   Parent Loop BB0_579 Depth=1
                                        #     Parent Loop BB0_587 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_590
# BB#591:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_596
# BB#592:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_593
# BB#594:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_595
	.align	16, 0x90
.LBB0_596:                              #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_598
# BB#597:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_587
	jmp	.LBB0_577
	.align	16, 0x90
.LBB0_598:                              #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_599
# BB#600:                               #   in Loop: Header=BB0_587 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_601
.LBB0_593:                              #   in Loop: Header=BB0_587 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_595
.LBB0_599:                              #   in Loop: Header=BB0_587 Depth=2
	xorl	%eax, %eax
.LBB0_601:                              #   in Loop: Header=BB0_587 Depth=2
	testb	%al, %al
	je	.LBB0_587
	jmp	.LBB0_577
.LBB0_584:                              #   in Loop: Header=BB0_579 Depth=1
	movq	-192(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_586
# BB#585:                               #   in Loop: Header=BB0_579 Depth=1
	incl	-512(%rbp)
	jmp	.LBB0_586
.LBB0_579:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_587 Depth 2
                                        #       Child Loop BB0_589 Depth 3
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB0_580
# BB#602:
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	subl	-496(%rbp), %eax
	movl	%eax, -484(%rbp)
	cmpl	-492(%rbp), %eax
	jle	.LBB0_654
# BB#603:
	cmpl	$0, -512(%rbp)
	je	.LBB0_604
.LBB0_654:
	movl	-484(%rbp), %eax
	cmpl	-492(%rbp), %eax
	jle	.LBB0_658
# BB#655:
	cmpl	$0, -512(%rbp)
	jg	.LBB0_657
# BB#656:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_657
.LBB0_658:
	movq	-112(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$5, %eax
	je	.LBB0_662
# BB#659:
	cmpl	$6, %eax
	jne	.LBB0_660
# BB#663:
	movq	-112(%rbp), %rax
	andw	$-2049, 42(%rax)        # imm = 0xFFFFFFFFFFFFF7FF
	movl	-492(%rbp), %eax
	subl	-484(%rbp), %eax
	movl	%eax, -488(%rbp)
	jmp	.LBB0_664
.LBB0_604:
	movl	$0, -568(%rbp)
	movl	-492(%rbp), %eax
	movl	%eax, -564(%rbp)
	movl	-492(%rbp), %eax
	movl	%eax, -560(%rbp)
	movl	-484(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_620
# BB#605:
	movq	-112(%rbp), %rdi
	leaq	-568(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_620
# BB#606:
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_607
.LBB0_608:                              #   in Loop: Header=BB0_607 Depth=1
	movq	-576(%rbp), %rax
.LBB0_607:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	-576(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_608
# BB#609:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_610
.LBB0_611:                              #   in Loop: Header=BB0_610 Depth=1
	movq	-168(%rbp), %rax
.LBB0_610:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_611
# BB#612:
	movl	-484(%rbp), %eax
	subl	-492(%rbp), %eax
	cmpl	$20, %eax
	jl	.LBB0_619
# BB#613:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_617
# BB#614:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_616
# BB#615:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_617
.LBB0_616:
	movq	-168(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-576(%rbp), %rax
	cvtsi2ssl	64(%rax), %xmm0
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movl	-492(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$3, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB0_618
.LBB0_662:
	movq	-112(%rbp), %rax
	andw	$-2049, 42(%rax)        # imm = 0xFFFFFFFFFFFFF7FF
	movl	-492(%rbp), %eax
	subl	-484(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -488(%rbp)
	jmp	.LBB0_664
.LBB0_660:
	cmpl	$7, %eax
	jne	.LBB0_661
.LBB0_657:
	movq	-112(%rbp), %rax
	orw	$2048, 42(%rax)         # imm = 0x800
	movl	$0, -488(%rbp)
.LBB0_664:
	movq	-112(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$11, %eax
	jae	.LBB0_669
# BB#665:
	cmpl	$0, -512(%rbp)
	jle	.LBB0_669
# BB#666:
	movl	$1, -476(%rbp)
	movl	-492(%rbp), %eax
	subl	-484(%rbp), %eax
	cltd
	idivl	-512(%rbp)
	movl	%eax, -500(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB0_668
# BB#667:
	movl	-500(%rbp), %ecx
.LBB0_668:
	movl	%ecx, -504(%rbp)
	movl	$0, -516(%rbp)
	movl	$0, -508(%rbp)
	jmp	.LBB0_670
.LBB0_669:
	movl	$0, -476(%rbp)
.LBB0_670:
	movl	$0, -520(%rbp)
	cmpl	$0, -476(%rbp)
	je	.LBB0_671
# BB#672:
	cmpq	$0, -552(%rbp)
	sete	%al
	jmp	.LBB0_673
.LBB0_671:
	xorl	%eax, %eax
.LBB0_673:
	movzbl	%al, %eax
	movl	%eax, -480(%rbp)
	movl	$1, -284(%rbp)
	movq	-112(%rbp), %rax
	jmp	.LBB0_674
.LBB0_682:                              #   in Loop: Header=BB0_674 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
	movq	-176(%rbp), %rax
.LBB0_674:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_676 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_685
# BB#675:                               #   in Loop: Header=BB0_674 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_676
	.align	16, 0x90
.LBB0_677:                              #   in Loop: Header=BB0_676 Depth=2
	movq	-168(%rbp), %rax
.LBB0_676:                              #   Parent Loop BB0_674 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_677
# BB#678:                               #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_683
# BB#679:                               #   in Loop: Header=BB0_674 Depth=1
	cmpl	$0, -284(%rbp)
	je	.LBB0_680
# BB#681:                               #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_682
.LBB0_683:                              #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_690
# BB#684:                               #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_694
	jmp	.LBB0_685
.LBB0_690:                              #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_691
# BB#692:                               #   in Loop: Header=BB0_674 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_693
.LBB0_680:                              #   in Loop: Header=BB0_674 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_682
.LBB0_691:                              #   in Loop: Header=BB0_674 Depth=1
	xorl	%eax, %eax
.LBB0_693:                              #   in Loop: Header=BB0_674 Depth=1
	testb	%al, %al
	jne	.LBB0_685
.LBB0_694:                              #   in Loop: Header=BB0_674 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_674
.LBB0_685:
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	movl	-116(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-112(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-168(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	addl	-488(%rbp), %eax
	movl	%eax, -236(%rbp)
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_686
.LBB0_699:                              #   in Loop: Header=BB0_686 Depth=1
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_686:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_688 Depth 2
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_708
# BB#687:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-176(%rbp), %rax
	jmp	.LBB0_688
	.align	16, 0x90
.LBB0_689:                              #   in Loop: Header=BB0_688 Depth=2
	movq	-168(%rbp), %rax
.LBB0_688:                              #   Parent Loop BB0_686 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_689
# BB#695:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_700
# BB#696:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_697
# BB#698:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_699
.LBB0_700:                              #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_702
# BB#701:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_686
	jmp	.LBB0_706
.LBB0_702:                              #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_703
# BB#704:                               #   in Loop: Header=BB0_686 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_705
.LBB0_697:                              #   in Loop: Header=BB0_686 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_699
.LBB0_703:                              #   in Loop: Header=BB0_686 Depth=1
	xorl	%eax, %eax
.LBB0_705:                              #   in Loop: Header=BB0_686 Depth=1
	testb	%al, %al
	je	.LBB0_686
	jmp	.LBB0_706
.LBB0_620:
	movq	-112(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	jg	.LBB0_622
# BB#621:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$5, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_622:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_623
.LBB0_624:                              #   in Loop: Header=BB0_623 Depth=1
	movq	-168(%rbp), %rax
.LBB0_623:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_624
# BB#625:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_629
# BB#626:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_628
# BB#627:
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_629
.LBB0_628:
	movq	-168(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movl	-492(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$6, %esi
	movl	$.L.str.11, %edx
	jmp	.LBB0_630
.LBB0_629:
	movq	-112(%rbp), %rax
	movl	48(%rax), %edi
	addl	56(%rax), %edi
	leaq	32(%rax), %r14
	callq	EchoLength
	movq	%rax, %rbx
	movl	-492(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$7, %esi
	movl	$.L.str.12, %edx
.LBB0_630:
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB0_631
.LBB0_641:                              #   in Loop: Header=BB0_631 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_631:                              # =>This Inner Loop Header: Depth=1
	movq	-112(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_642
# BB#632:                               #   in Loop: Header=BB0_631 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_634
# BB#633:                               #   in Loop: Header=BB0_631 Depth=1
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
.LBB0_634:                              #   in Loop: Header=BB0_631 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_636
# BB#635:                               #   in Loop: Header=BB0_631 Depth=1
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
.LBB0_636:                              #   in Loop: Header=BB0_631 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_638
# BB#637:                               #   in Loop: Header=BB0_631 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_639
.LBB0_638:                              #   in Loop: Header=BB0_631 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_640
.LBB0_639:                              #   in Loop: Header=BB0_631 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_640:                              #   in Loop: Header=BB0_631 Depth=1
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
	jne	.LBB0_631
	jmp	.LBB0_641
.LBB0_642:
	movq	-112(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.13, %esi
	callq	MakeWord
	movq	%rax, -168(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_644
# BB#643:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_647
.LBB0_661:
	movl	$0, -488(%rbp)
	jmp	.LBB0_664
.LBB0_644:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_645
# BB#646:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_647
.LBB0_617:
	movq	-112(%rbp), %rax
	movl	48(%rax), %edi
	addl	56(%rax), %edi
	leaq	32(%rax), %r14
	callq	EchoLength
	movq	%rax, %rbx
	movq	-576(%rbp), %rax
	cvtsi2ssl	64(%rax), %xmm0
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -592(%rbp)       # 8-byte Spill
	movl	-492(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$4, %esi
	movl	$.L.str.9, %edx
.LBB0_618:
	movl	$2, %ecx
	movb	$1, %al
	movq	%r14, %r8
	movq	%rbx, %r9
	movsd	-592(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	Error
.LBB0_619:
	movq	-576(%rbp), %rdi
	movl	-116(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -576(%rbp)
	jmp	.LBB0_87
.LBB0_645:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_647:
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
	je	.LBB0_650
# BB#648:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_650
# BB#649:
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
.LBB0_650:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-168(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_653
# BB#651:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_653
# BB#652:
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
.LBB0_653:
	movq	-168(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-168(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.LBB0_87
.LBB0_706:
	cmpq	$0, -192(%rbp)
	jne	.LBB0_708
# BB#707:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_708:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_746 Depth 2
                                        #       Child Loop BB0_748 Depth 3
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_761
# BB#709:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.LBB0_737
# BB#710:                               #   in Loop: Header=BB0_708 Depth=1
	cmpl	$0, -520(%rbp)
	jne	.LBB0_720
# BB#711:                               #   in Loop: Header=BB0_708 Depth=1
	movl	$1, -520(%rbp)
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_713
# BB#712:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_714
.LBB0_713:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
	jmp	.LBB0_715
.LBB0_714:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-112(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	76(%rcx), %eax
.LBB0_715:                              #   in Loop: Header=BB0_708 Depth=1
	movl	%eax, -528(%rbp)
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_717
# BB#716:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_718
.LBB0_717:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_719
.LBB0_718:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-112(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_719:                              #   in Loop: Header=BB0_708 Depth=1
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -532(%rbp)
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -524(%rbp)
.LBB0_720:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-192(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	jne	.LBB0_737
# BB#721:                               #   in Loop: Header=BB0_708 Depth=1
	movzbl	zz_lengths+3(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_723
# BB#722:                               #   in Loop: Header=BB0_708 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_726
.LBB0_723:                              #   in Loop: Header=BB0_708 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_724
# BB#725:                               #   in Loop: Header=BB0_708 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_726
.LBB0_724:                              #   in Loop: Header=BB0_708 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_726:                              #   in Loop: Header=BB0_708 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$3, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -544(%rbp)
	movl	-524(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-528(%rbp), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-532(%rbp), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	$0, -520(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_728
# BB#727:                               #   in Loop: Header=BB0_708 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_731
.LBB0_728:                              #   in Loop: Header=BB0_708 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_729
# BB#730:                               #   in Loop: Header=BB0_708 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_731
.LBB0_729:                              #   in Loop: Header=BB0_708 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_731:                              #   in Loop: Header=BB0_708 Depth=1
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_734
# BB#732:                               #   in Loop: Header=BB0_708 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_734
# BB#733:                               #   in Loop: Header=BB0_708 Depth=1
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
.LBB0_734:                              #   in Loop: Header=BB0_708 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_737
# BB#735:                               #   in Loop: Header=BB0_708 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_737
# BB#736:                               #   in Loop: Header=BB0_708 Depth=1
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
.LBB0_737:                              #   in Loop: Header=BB0_708 Depth=1
	cmpl	$0, -480(%rbp)
	je	.LBB0_740
# BB#738:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-192(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_740
# BB#739:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	addl	-504(%rbp), %ecx
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -184(%rbp)
	movl	-516(%rbp), %ecx
	incl	%ecx
	movl	%ecx, -516(%rbp)
	movl	-492(%rbp), %eax
	subl	-484(%rbp), %eax
	imull	%ecx, %eax
	cltd
	idivl	-512(%rbp)
	movl	%eax, -580(%rbp)
	movq	-192(%rbp), %rcx
	movswl	54(%rcx), %ecx
	subl	-508(%rbp), %eax
	addl	%ecx, %eax
	addl	%eax, -236(%rbp)
	movl	-580(%rbp), %eax
	movl	%eax, -508(%rbp)
	jmp	.LBB0_741
.LBB0_740:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -184(%rbp)
	movq	-192(%rbp), %rax
	movswl	54(%rax), %eax
	addl	%eax, -236(%rbp)
.LBB0_741:                              #   in Loop: Header=BB0_708 Depth=1
	movq	-168(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -480(%rbp)
	jne	.LBB0_745
# BB#742:                               #   in Loop: Header=BB0_708 Depth=1
	cmpl	$0, -476(%rbp)
	je	.LBB0_745
# BB#743:                               #   in Loop: Header=BB0_708 Depth=1
	movq	-192(%rbp), %rax
	cmpq	-552(%rbp), %rax
	jne	.LBB0_745
# BB#744:                               #   in Loop: Header=BB0_708 Depth=1
	movl	$1, -480(%rbp)
.LBB0_745:                              #   in Loop: Header=BB0_708 Depth=1
	movq	$0, -192(%rbp)
	movl	$1, -284(%rbp)
	jmp	.LBB0_746
	.align	16, 0x90
.LBB0_754:                              #   in Loop: Header=BB0_746 Depth=2
	movzbl	%al, %eax
	movl	%eax, -284(%rbp)
.LBB0_746:                              #   Parent Loop BB0_708 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_748 Depth 3
	movq	-176(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	-112(%rbp), %rax
	je	.LBB0_708
# BB#747:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-176(%rbp), %rax
	jmp	.LBB0_748
	.align	16, 0x90
.LBB0_749:                              #   in Loop: Header=BB0_748 Depth=3
	movq	-168(%rbp), %rax
.LBB0_748:                              #   Parent Loop BB0_708 Depth=1
                                        #     Parent Loop BB0_746 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_749
# BB#750:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_755
# BB#751:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movq	%rax, -192(%rbp)
	cmpl	$0, -284(%rbp)
	je	.LBB0_752
# BB#753:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_754
	.align	16, 0x90
.LBB0_755:                              #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_757
# BB#756:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_746
	jmp	.LBB0_706
	.align	16, 0x90
.LBB0_757:                              #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_758
# BB#759:                               #   in Loop: Header=BB0_746 Depth=2
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_760
.LBB0_752:                              #   in Loop: Header=BB0_746 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_754
.LBB0_758:                              #   in Loop: Header=BB0_746 Depth=2
	xorl	%eax, %eax
.LBB0_760:                              #   in Loop: Header=BB0_746 Depth=2
	testb	%al, %al
	je	.LBB0_746
	jmp	.LBB0_706
.LBB0_761:
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB0_764
# BB#762:
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.LBB0_764
# BB#763:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_764:
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.LBB0_791
# BB#765:
	cmpl	$0, -520(%rbp)
	jne	.LBB0_775
# BB#766:
	movl	$1, -520(%rbp)
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_768
# BB#767:
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_769
.LBB0_768:
	movq	-184(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
	jmp	.LBB0_770
.LBB0_769:
	movq	-112(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	76(%rcx), %eax
.LBB0_770:
	movl	%eax, -528(%rbp)
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_772
# BB#771:
	movq	-184(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_773
.LBB0_772:
	movq	-184(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_774
.LBB0_773:
	movq	-112(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_774:
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -532(%rbp)
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -524(%rbp)
.LBB0_775:
	movzbl	zz_lengths+3(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_777
# BB#776:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_780
.LBB0_777:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_778
# BB#779:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_780
.LBB0_778:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_780:
	movq	zz_hold(%rip), %rax
	movb	$3, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -544(%rbp)
	movl	-524(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movl	-236(%rbp), %eax
	movslq	-128(%rbp), %rcx
	movq	-184(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-528(%rbp), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-532(%rbp), %eax
	movq	-544(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	$0, -520(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_782
# BB#781:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_785
.LBB0_782:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_783
# BB#784:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_785
.LBB0_783:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_785:
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_788
# BB#786:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_788
# BB#787:
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
.LBB0_788:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-544(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_791
# BB#789:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_791
# BB#790:
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
.LBB0_791:
	movq	-184(%rbp), %rdi
	movl	-236(%rbp), %esi
	movslq	-128(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-492(%rbp), %ecx
	movl	%esi, %eax
	subl	-116(%rbp), %eax
	subl	%eax, %ecx
	movq	-112(%rbp), %rax
	subl	48(%rax,%r8,4), %ecx
	movl	-136(%rbp), %r9d
	movl	-140(%rbp), %ebx
	leaq	-272(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-268(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -184(%rbp)
	jmp	.LBB0_87
.Lfunc_end0:
	.size	FixAndPrintObject, .Lfunc_end0-FixAndPrintObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_87
	.quad	.LBB0_848
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_848
	.quad	.LBB0_228
	.quad	.LBB0_848
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_812
	.quad	.LBB0_812
	.quad	.LBB0_542
	.quad	.LBB0_241
	.quad	.LBB0_241
	.quad	.LBB0_846
	.quad	.LBB0_846
	.quad	.LBB0_846
	.quad	.LBB0_846
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_60
	.quad	.LBB0_60
	.quad	.LBB0_111
	.quad	.LBB0_95
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_130
	.quad	.LBB0_144
	.quad	.LBB0_79
	.quad	.LBB0_79
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_2
	.quad	.LBB0_2
	.quad	.LBB0_2
	.quad	.LBB0_27
	.quad	.LBB0_27
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_158
	.quad	.LBB0_150
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_848
	.quad	.LBB0_219
	.quad	.LBB0_219
	.quad	.LBB0_166
	.quad	.LBB0_185
	.quad	.LBB0_208
	.quad	.LBB0_208

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FAPO HSPAN/VSPAN!"
	.size	.L.str.1, 18

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"object deleted (it cannot be scaled vertically)"
	.size	.L.str.2, 48

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"object deleted (it cannot be scaled horizontally)"
	.size	.L.str.3, 50

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FAPO: horizontal scale factor!"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FAPO: vertical scale factor!"
	.size	.L.str.5, 29

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"NextDefiniteWithGap: g == nilobj!"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"FAPO: final start_group!"
	.size	.L.str.7, 25

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"word %s horizontally scaled by factor %.2f (too wide for %s paragraph)"
	.size	.L.str.8, 71

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%s object horizontally scaled by factor %.2f (too wide for %s paragraph)"
	.size	.L.str.9, 73

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"oversize object has size 0 or less"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"word %s deleted (too wide for %s paragraph)"
	.size	.L.str.11, 44

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s object deleted (too wide for %s paragraph)"
	.size	.L.str.12, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.zero	1
	.size	.L.str.13, 1

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"word is too long"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"FAPO: adjustable_gaps!"
	.size	.L.str.15, 23

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"FixAndPrint: underline(prev)!"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"FixAndPrintObject: thr!"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"FixAndPrintObject: link or uplink!"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FAPO: THR!"
	.size	.L.str.19, 11

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s symbol ignored (out of place)"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"assert failed in %s %s"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FixAndPrintObject:"
	.size	.L.str.22, 19


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
