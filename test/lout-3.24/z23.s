	.text
	.file	"z23.opt"
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
	subq	$520, %rsp              # imm = 0x208
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
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%ecx, -44(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%ebx, -56(%rbp)
	movl	%eax, -60(%rbp)
	movq	%r11, -72(%rbp)
	movq	%r10, -80(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB0_777
# BB#1:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_88:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_89
	.align	16, 0x90
.LBB0_90:                               #   in Loop: Header=BB0_89 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_89:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_90
# BB#91:
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %edx
	movb	$1, %cl
	cmpl	$24, %edx
	je	.LBB0_93
# BB#92:
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$40, %ecx
	sete	%cl
.LBB0_93:
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_140
	jmp	.LBB0_94
.LBB0_777:
	movq	no_fpos(%rip), %rbx
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.21, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
.LBB0_778:
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_779
.LBB0_775:
	cmpl	$0, -48(%rbp)
	jne	.LBB0_779
# BB#776:
	movq	-32(%rbp), %rbx
	movzbl	32(%rbx), %edi
	addq	$32, %rbx
	callq	Image
	movq	%rax, %r9
	movl	$23, %edi
	movl	$8, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	jmp	.LBB0_778
.LBB0_2:
	cmpl	$0, -48(%rbp)
	je	.LBB0_3
# BB#4:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_5
.LBB0_48:
	cmpl	$0, -48(%rbp)
	je	.LBB0_49
# BB#53:
	movq	-32(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
# BB#54:
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rdi
	movl	36(%rdi), %esi
	movl	-56(%rbp), %edx
	subl	-36(%rbp), %edx
	callq	*112(%rax)
	jmp	.LBB0_87
.LBB0_741:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	sete	%al
	cmpl	$0, -48(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_743
# BB#742:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_743:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -152(%rbp)
	movl	$1, -196(%rbp)
	jmp	.LBB0_744
	.align	16, 0x90
.LBB0_750:                              #   in Loop: Header=BB0_744 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-152(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -152(%rbp)
	incl	-196(%rbp)
.LBB0_744:                              # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_745
# BB#746:                               #   in Loop: Header=BB0_744 Depth=1
	movq	-152(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_747
# BB#748:                               #   in Loop: Header=BB0_744 Depth=1
	movl	-196(%rbp), %eax
	cmpl	-60(%rbp), %eax
	setl	%al
	jmp	.LBB0_749
	.align	16, 0x90
.LBB0_745:                              #   in Loop: Header=BB0_744 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_749
.LBB0_747:                              #   in Loop: Header=BB0_744 Depth=1
	xorl	%eax, %eax
.LBB0_749:                              #   in Loop: Header=BB0_744 Depth=1
	testb	%al, %al
	jne	.LBB0_750
# BB#751:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_753
# BB#752:
	movq	-152(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_754
.LBB0_753:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_754:
	movq	-96(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_755
	.align	16, 0x90
.LBB0_756:                              #   in Loop: Header=BB0_755 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_755:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_756
# BB#757:
	movq	-152(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_759
# BB#758:
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
.LBB0_759:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_762
# BB#760:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_762
# BB#761:
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
.LBB0_762:
	movq	-96(%rbp), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_764
# BB#763:
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
.LBB0_764:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_766
# BB#765:
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
.LBB0_766:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_768
# BB#767:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_769
.LBB0_768:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_770
.LBB0_232:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	sete	%al
	cmpl	$1, -48(%rbp)
	movzbl	%al, %eax
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_348
# BB#233:
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_234
.LBB0_242:                              #   in Loop: Header=BB0_234 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
.LBB0_234:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_236 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_245
# BB#235:                               #   in Loop: Header=BB0_234 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_236
	.align	16, 0x90
.LBB0_237:                              #   in Loop: Header=BB0_236 Depth=2
	movq	-104(%rbp), %rax
.LBB0_236:                              #   Parent Loop BB0_234 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_237
# BB#238:                               #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_243
# BB#239:                               #   in Loop: Header=BB0_234 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_240
# BB#241:                               #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_242
.LBB0_243:                              #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_251
# BB#244:                               #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_255
	jmp	.LBB0_245
.LBB0_251:                              #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_252
# BB#253:                               #   in Loop: Header=BB0_234 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_254
.LBB0_240:                              #   in Loop: Header=BB0_234 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_242
.LBB0_252:                              #   in Loop: Header=BB0_234 Depth=1
	xorl	%eax, %eax
.LBB0_254:                              #   in Loop: Header=BB0_234 Depth=1
	testb	%al, %al
	jne	.LBB0_245
.LBB0_255:                              #   in Loop: Header=BB0_234 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_234
.LBB0_55:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_56
	.align	16, 0x90
.LBB0_57:                               #   in Loop: Header=BB0_56 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_57
# BB#58:
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$26, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_140
# BB#59:
	movq	-32(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	movl	%ecx, -176(%rbp)
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	jmp	.LBB0_84
.LBB0_60:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_61
	.align	16, 0x90
.LBB0_62:                               #   in Loop: Header=BB0_61 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_61:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_62
# BB#63:
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$28, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_140
# BB#64:
	movq	-32(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movl	-48(%rbp), %edx
	callq	FindShift
	movl	%eax, -184(%rbp)
	movl	-36(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -160(%rbp)
	movl	-40(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-184(%rbp), %eax
	movl	$0, %eax
	jle	.LBB0_66
# BB#65:
	movl	-40(%rbp), %eax
	subl	-184(%rbp), %eax
.LBB0_66:
	movl	%eax, -172(%rbp)
	movl	-44(%rbp), %eax
	addl	-184(%rbp), %eax
	jle	.LBB0_68
# BB#67:
	movl	-44(%rbp), %ecx
	addl	-184(%rbp), %ecx
.LBB0_68:
	movl	%ecx, -176(%rbp)
	movq	-88(%rbp), %rdi
	movl	-160(%rbp), %esi
	movl	-172(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rdi
	movl	-48(%rbp), %edx
	movq	%rax, %rsi
	callq	FindShift
	movl	%eax, -184(%rbp)
	xorl	%ecx, %ecx
	addl	-188(%rbp), %eax
	jle	.LBB0_70
# BB#69:
	movl	-188(%rbp), %ecx
	addl	-184(%rbp), %ecx
.LBB0_70:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_73
# BB#71:
	movl	-188(%rbp), %ecx
	xorl	%eax, %eax
	addl	-184(%rbp), %ecx
	jle	.LBB0_73
# BB#72:
	movl	-188(%rbp), %eax
	addl	-184(%rbp), %eax
.LBB0_73:
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-192(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	-184(%rbp), %eax
	jle	.LBB0_75
# BB#74:
	movl	-192(%rbp), %ecx
	subl	-184(%rbp), %ecx
.LBB0_75:
	movl	$8388607, %eax          # imm = 0x7FFFFF
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jg	.LBB0_78
# BB#76:
	movl	-192(%rbp), %ecx
	xorl	%eax, %eax
	cmpl	-184(%rbp), %ecx
	jle	.LBB0_78
# BB#77:
	movl	-192(%rbp), %eax
	subl	-184(%rbp), %eax
	jmp	.LBB0_78
.LBB0_79:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_81:                               #   in Loop: Header=BB0_80 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_80:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_81
# BB#82:
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$36, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_140
# BB#83:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	jmp	.LBB0_84
.LBB0_27:
	cmpl	$0, -48(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	-32(%rbp), %rcx
	movzbl	32(%rcx), %ecx
	cmpl	$45, %ecx
	sete	%cl
	movzbl	%cl, %ecx
	cmpl	%ecx, %eax
	jne	.LBB0_779
# BB#28:
	cmpl	$0, -48(%rbp)
	je	.LBB0_29
# BB#30:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_31
.LBB0_210:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_211
	.align	16, 0x90
.LBB0_212:                              #   in Loop: Header=BB0_211 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_211:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_212
# BB#213:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 28(%rax)
	je	.LBB0_87
# BB#214:
	cmpl	$0, -48(%rbp)
	je	.LBB0_215
# BB#217:
	movq	-32(%rbp), %rax
	cmpb	$0, 41(%rax)
	je	.LBB0_87
# BB#218:
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %esi
	movl	-56(%rbp), %edx
	subl	-36(%rbp), %edx
	callq	*200(%rax)
	jmp	.LBB0_87
.LBB0_199:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_200
	.align	16, 0x90
.LBB0_201:                              #   in Loop: Header=BB0_200 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_200:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_201
# BB#202:
	cmpl	$0, -48(%rbp)
	je	.LBB0_203
# BB#204:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_205
	.align	16, 0x90
.LBB0_206:                              #   in Loop: Header=BB0_205 Depth=1
	movq	-120(%rbp), %rax
.LBB0_205:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_206
# BB#207:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$98, %eax
	jne	.LBB0_209
# BB#208:
	movq	BackEnd(%rip), %rax
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rbx
	movl	88(%rbx), %ecx
	movl	%ecx, %esi
	subl	48(%rbx), %esi
	movl	-56(%rbp), %r8d
	subl	-36(%rbp), %r8d
	movl	%r8d, %edx
	subl	-44(%rbp), %edx
	addl	56(%rbx), %ecx
	addl	-40(%rbp), %r8d
	callq	*208(%rax)
	jmp	.LBB0_94
.LBB0_3:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_5:
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#8:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_10
# BB#9:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$14, %eax
	jne	.LBB0_140
.LBB0_10:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	-120(%rbp), %rax
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_12
# BB#13:
	cmpl	$0, -48(%rbp)
	je	.LBB0_14
# BB#15:
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_16
.LBB0_219:
	cmpl	$0, -48(%rbp)
	je	.LBB0_220
# BB#221:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_222
.LBB0_471:
	cmpl	$0, -48(%rbp)
	je	.LBB0_472
# BB#721:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	leaq	-192(%rbp), %r14
	leaq	-188(%rbp), %r15
	jmp	.LBB0_722
	.align	16, 0x90
.LBB0_740:                              #   in Loop: Header=BB0_722 Depth=1
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
.LBB0_722:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_724 Depth 2
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_87
# BB#723:                               #   in Loop: Header=BB0_722 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_724
	.align	16, 0x90
.LBB0_725:                              #   in Loop: Header=BB0_724 Depth=2
	movq	-88(%rbp), %rax
.LBB0_724:                              #   Parent Loop BB0_722 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_725
# BB#726:                               #   in Loop: Header=BB0_722 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_728
# BB#727:                               #   in Loop: Header=BB0_722 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	jge	.LBB0_728
# BB#739:                               #   in Loop: Header=BB0_722 Depth=1
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	jmp	.LBB0_740
.LBB0_728:                              #   in Loop: Header=BB0_722 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$3, %eax
	jne	.LBB0_740
# BB#729:                               #   in Loop: Header=BB0_722 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx), %edx
	movl	52(%rcx), %edi
	movl	60(%rcx), %esi
	movl	56(%rcx), %ecx
	movl	-56(%rbp), %r8d
	subl	-36(%rbp), %r8d
	callq	*128(%rax)
	movq	-96(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_731
# BB#730:                               #   in Loop: Header=BB0_722 Depth=1
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
.LBB0_731:                              #   in Loop: Header=BB0_722 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_733
# BB#732:                               #   in Loop: Header=BB0_722 Depth=1
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
.LBB0_733:                              #   in Loop: Header=BB0_722 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_735
# BB#734:                               #   in Loop: Header=BB0_722 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_736
.LBB0_735:                              #   in Loop: Header=BB0_722 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_737
.LBB0_736:                              #   in Loop: Header=BB0_722 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_737:                              #   in Loop: Header=BB0_722 Depth=1
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
	jne	.LBB0_740
# BB#738:                               #   in Loop: Header=BB0_722 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	jmp	.LBB0_740
.LBB0_108:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_109
	.align	16, 0x90
.LBB0_110:                              #   in Loop: Header=BB0_109 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_109:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_110
# BB#111:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_87
# BB#112:
	cmpl	$0, -48(%rbp)
	je	.LBB0_113
# BB#119:
	movq	-32(%rbp), %rax
	movl	64(%rax), %edi
	addl	72(%rax), %edi
	movq	-88(%rbp), %rax
	movl	48(%rax), %esi
	addl	56(%rax), %esi
	callq	ScaleFactor
	movss	%xmm0, -200(%rbp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_87
# BB#120:
	movq	BackEnd(%rip), %rax
	movq	-88(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edx
	subl	64(%rcx), %edx
	movq	-88(%rbp), %rcx
	cvtsi2ssl	48(%rcx), %xmm0
	mulss	-200(%rbp), %xmm0
	cvttss2si	%xmm0, %edi
	addl	%edx, %edi
	xorl	%esi, %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movss	-200(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	callq	*152(%rax)
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	jmp	.LBB0_102
.LBB0_95:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_96
	.align	16, 0x90
.LBB0_97:                               #   in Loop: Header=BB0_96 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_96:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_97
# BB#98:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_87
# BB#99:
	cmpl	$0, -48(%rbp)
	je	.LBB0_94
# BB#100:
	movl	-40(%rbp), %edi
	addl	-44(%rbp), %edi
	movq	-88(%rbp), %rax
	movl	52(%rax), %esi
	addl	60(%rax), %esi
	callq	ScaleFactor
	movss	%xmm0, -200(%rbp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_103
# BB#101:
	movq	BackEnd(%rip), %rax
	movq	-88(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movl	-56(%rbp), %esi
	movl	-36(%rbp), %ecx
	subl	-40(%rbp), %ecx
	movq	-88(%rbp), %rdx
	cvtsi2ssl	52(%rdx), %xmm0
	mulss	-200(%rbp), %xmm0
	cvttss2si	%xmm0, %edx
	addl	%ecx, %edx
	subl	%edx, %esi
	xorl	%edi, %edi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movss	-200(%rbp), %xmm1       # xmm1 = mem[0],zero,zero,zero
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	callq	*152(%rax)
	movq	-88(%rbp), %rdi
	movl	52(%rdi), %edx
	movl	60(%rdi), %ecx
	movl	-48(%rbp), %r8d
	movl	-60(%rbp), %eax
	leaq	-192(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-188(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	movl	$0, %esi
	jmp	.LBB0_102
.LBB0_121:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_122
	.align	16, 0x90
.LBB0_123:                              #   in Loop: Header=BB0_122 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_122:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_123
# BB#124:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_132
# BB#125:
	cmpl	$0, -48(%rbp)
	je	.LBB0_126
# BB#129:
	movq	-32(%rbp), %rax
	cmpl	$0, 72(%rax)
	jg	.LBB0_131
# BB#130:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_131:
	movl	-40(%rbp), %eax
	shll	$7, %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	72(%rcx)
	movl	%eax, -172(%rbp)
	movl	-44(%rbp), %eax
	shll	$7, %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	72(%rcx)
	movl	%eax, -176(%rbp)
	movq	BackEnd(%rip), %rax
	movq	-88(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	-56(%rbp), %esi
	subl	-36(%rbp), %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rcx
	cvtsi2ssl	64(%rcx), %xmm0
	movss	.LCPI0_0(%rip), %xmm2   # xmm2 = mem[0],zero,zero,zero
	divss	%xmm2, %xmm0
	cvtsi2ssl	72(%rcx), %xmm1
	divss	%xmm2, %xmm1
	callq	*152(%rax)
	movq	-88(%rbp), %rdi
	movl	-172(%rbp), %edx
	movl	-176(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-60(%rbp), %eax
	leaq	-192(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-188(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%esi, %esi
	jmp	.LBB0_102
.LBB0_135:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_136
	.align	16, 0x90
.LBB0_137:                              #   in Loop: Header=BB0_136 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_136:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_137
# BB#138:
	cmpl	$0, -48(%rbp)
	je	.LBB0_139
.LBB0_140:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
.LBB0_231:
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %r11d
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	movq	%rax, 16(%rsp)
	movl	%r11d, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	jmp	.LBB0_779
.LBB0_149:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_150
	.align	16, 0x90
.LBB0_151:                              #   in Loop: Header=BB0_150 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_150:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_151
# BB#152:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 20(%rax)
	je	.LBB0_156
# BB#153:
	cmpl	$0, -48(%rbp)
	je	.LBB0_154
# BB#155:
	movq	BackEnd(%rip), %rax
	movq	-88(%rbp), %rdi
	callq	*160(%rax)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %edi
	movl	-56(%rbp), %esi
	subl	-36(%rbp), %esi
	callq	*136(%rax)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	76(%rcx), %edi
	callq	*144(%rax)
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -272(%rbp)
	movl	$8388607, -268(%rbp)    # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -264(%rbp)
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -288(%rbp)
	movl	$8388607, -284(%rbp)    # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -280(%rbp)
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	leaq	-304(%rbp), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-288(%rbp), %r8
	movl	$1, %r9d
	callq	RotateConstraint
	movq	-88(%rbp), %rdi
	movl	-304(%rbp), %edx
	movl	-296(%rbp), %ecx
	movl	-60(%rbp), %eax
	leaq	-192(%rbp), %rsi
	movq	%rsi, 24(%rsp)
	leaq	-188(%rbp), %rsi
	movq	%rsi, 16(%rsp)
	movl	%eax, 8(%rsp)
	movl	$0, (%rsp)
	xorl	%esi, %esi
	movl	$1, %r8d
.LBB0_102:
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	jmp	.LBB0_198
.LBB0_141:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_142
	.align	16, 0x90
.LBB0_143:                              #   in Loop: Header=BB0_142 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_142:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_143
# BB#144:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-188(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_145
	.align	16, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_145 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_145:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_146
# BB#147:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	jmp	.LBB0_148
.LBB0_157:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_158
	.align	16, 0x90
.LBB0_159:                              #   in Loop: Header=BB0_158 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_158:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_159
# BB#160:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 32(%rax)
	je	.LBB0_134
# BB#161:
	cmpl	$0, -48(%rbp)
	je	.LBB0_162
# BB#163:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_164
.LBB0_165:                              #   in Loop: Header=BB0_164 Depth=1
	movq	-312(%rbp), %rax
.LBB0_164:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_165
# BB#166:
	movq	-312(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_173
# BB#167:
	movq	-312(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_168
.LBB0_169:                              #   in Loop: Header=BB0_168 Depth=1
	movq	-320(%rbp), %rax
.LBB0_168:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	-320(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_169
# BB#170:
	movq	-312(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_171
.LBB0_172:                              #   in Loop: Header=BB0_171 Depth=1
	movq	-328(%rbp), %rax
.LBB0_171:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_172
	jmp	.LBB0_174
.LBB0_176:
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_177
	.align	16, 0x90
.LBB0_178:                              #   in Loop: Header=BB0_177 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_177:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_178
# BB#179:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 24(%rax)
	je	.LBB0_134
# BB#180:
	cmpl	$0, -48(%rbp)
	je	.LBB0_181
# BB#185:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_186
.LBB0_187:                              #   in Loop: Header=BB0_186 Depth=1
	movq	-336(%rbp), %rax
.LBB0_186:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -336(%rbp)
	movq	-336(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_187
# BB#188:
	movq	-336(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	jne	.LBB0_195
# BB#189:
	movq	-336(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_190
.LBB0_191:                              #   in Loop: Header=BB0_190 Depth=1
	movq	-344(%rbp), %rax
.LBB0_190:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_191
# BB#192:
	movq	-336(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_193
.LBB0_194:                              #   in Loop: Header=BB0_193 Depth=1
	movq	-352(%rbp), %rax
.LBB0_193:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_194
	jmp	.LBB0_196
.LBB0_348:
	movq	$0, -360(%rbp)
	movl	$0, -380(%rbp)
	movl	$0, -392(%rbp)
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_349
.LBB0_357:                              #   in Loop: Header=BB0_349 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
.LBB0_349:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_351 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_360
# BB#350:                               #   in Loop: Header=BB0_349 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_351
	.align	16, 0x90
.LBB0_352:                              #   in Loop: Header=BB0_351 Depth=2
	movq	-88(%rbp), %rax
.LBB0_351:                              #   Parent Loop BB0_349 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_352
# BB#353:                               #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_358
# BB#354:                               #   in Loop: Header=BB0_349 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_355
# BB#356:                               #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_357
.LBB0_358:                              #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_366
# BB#359:                               #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_370
	jmp	.LBB0_360
.LBB0_366:                              #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_367
# BB#368:                               #   in Loop: Header=BB0_349 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_369
.LBB0_355:                              #   in Loop: Header=BB0_349 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_357
.LBB0_367:                              #   in Loop: Header=BB0_349 Depth=1
	xorl	%eax, %eax
.LBB0_369:                              #   in Loop: Header=BB0_349 Depth=1
	testb	%al, %al
	jne	.LBB0_360
.LBB0_370:                              #   in Loop: Header=BB0_349 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_349
.LBB0_245:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_87
# BB#246:
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_247
.LBB0_260:                              #   in Loop: Header=BB0_247 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_247:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_249 Depth 2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_269
# BB#248:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_249
	.align	16, 0x90
.LBB0_250:                              #   in Loop: Header=BB0_249 Depth=2
	movq	-88(%rbp), %rax
.LBB0_249:                              #   Parent Loop BB0_247 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_250
# BB#256:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_261
# BB#257:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_258
# BB#259:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_260
.LBB0_261:                              #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_263
# BB#262:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_247
	jmp	.LBB0_267
.LBB0_263:                              #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_264
# BB#265:                               #   in Loop: Header=BB0_247 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_266
.LBB0_258:                              #   in Loop: Header=BB0_247 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_260
.LBB0_264:                              #   in Loop: Header=BB0_247 Depth=1
	xorl	%eax, %eax
.LBB0_266:                              #   in Loop: Header=BB0_247 Depth=1
	testb	%al, %al
	je	.LBB0_247
.LBB0_267:
	cmpq	$0, -112(%rbp)
	jne	.LBB0_269
# BB#268:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_269:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_274
# BB#270:
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_274
# BB#271:
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_274
# BB#272:
	movq	-112(%rbp), %rax
	cmpw	$0, 46(%rax)
	jne	.LBB0_274
# BB#273:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-104(%rbp), %rdx
	addl	%eax, 56(%rdx,%rcx,4)
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
.LBB0_274:
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_275
.LBB0_283:                              #   in Loop: Header=BB0_275 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
.LBB0_275:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_277 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_286
# BB#276:                               #   in Loop: Header=BB0_275 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_277
	.align	16, 0x90
.LBB0_278:                              #   in Loop: Header=BB0_277 Depth=2
	movq	-104(%rbp), %rax
.LBB0_277:                              #   Parent Loop BB0_275 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_278
# BB#279:                               #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_284
# BB#280:                               #   in Loop: Header=BB0_275 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_281
# BB#282:                               #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_283
.LBB0_284:                              #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_289
# BB#285:                               #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_293
	jmp	.LBB0_286
.LBB0_289:                              #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_290
# BB#291:                               #   in Loop: Header=BB0_275 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_292
.LBB0_281:                              #   in Loop: Header=BB0_275 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_283
.LBB0_290:                              #   in Loop: Header=BB0_275 Depth=1
	xorl	%eax, %eax
.LBB0_292:                              #   in Loop: Header=BB0_275 Depth=1
	testb	%al, %al
	jne	.LBB0_286
.LBB0_293:                              #   in Loop: Header=BB0_275 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_275
.LBB0_360:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_779
# BB#361:
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -384(%rbp)
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -388(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -360(%rbp)
	cmpl	$0, -204(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -380(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_362
.LBB0_375:                              #   in Loop: Header=BB0_362 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_362:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_364 Depth 2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_384
# BB#363:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_364
	.align	16, 0x90
.LBB0_365:                              #   in Loop: Header=BB0_364 Depth=2
	movq	-88(%rbp), %rax
.LBB0_364:                              #   Parent Loop BB0_362 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_365
# BB#371:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_376
# BB#372:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_373
# BB#374:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_375
.LBB0_376:                              #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_378
# BB#377:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_362
	jmp	.LBB0_382
.LBB0_378:                              #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_379
# BB#380:                               #   in Loop: Header=BB0_362 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_381
.LBB0_373:                              #   in Loop: Header=BB0_362 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_375
.LBB0_379:                              #   in Loop: Header=BB0_362 Depth=1
	xorl	%eax, %eax
.LBB0_381:                              #   in Loop: Header=BB0_362 Depth=1
	testb	%al, %al
	je	.LBB0_362
	jmp	.LBB0_382
.LBB0_14:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_16
	.align	16, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_16 Depth=1
	movq	-136(%rbp), %rax
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_17
# BB#18:
	movl	-36(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-136(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-120(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-88(%rbp), %rax
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
	movq	-88(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB0_26
# BB#19:
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	subl	88(%rcx), %eax
	movslq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_21
# BB#20:
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_22
.LBB0_49:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-32(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
# BB#50:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_51
.LBB0_203:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	jmp	.LBB0_94
.LBB0_209:
	movq	BackEnd(%rip), %rax
	movq	-120(%rbp), %rdi
	movq	-32(%rbp), %rbx
	movl	88(%rbx), %ecx
	movl	%ecx, %esi
	subl	48(%rbx), %esi
	movl	-56(%rbp), %r8d
	subl	-36(%rbp), %r8d
	movl	%r8d, %edx
	subl	-44(%rbp), %edx
	addl	56(%rbx), %ecx
	addl	-40(%rbp), %r8d
	callq	*216(%rax)
.LBB0_94:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	jmp	.LBB0_84
.LBB0_286:
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -164(%rbp)
	movl	-36(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -168(%rbp)
	movq	-32(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$11, %eax
	jae	.LBB0_294
# BB#287:
	cmpl	$0, -52(%rbp)
	je	.LBB0_288
.LBB0_294:
	movl	$0, -180(%rbp)
	jmp	.LBB0_295
.LBB0_21:
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	subl	88(%rcx), %eax
.LBB0_22:
	movl	%eax, -176(%rbp)
	movq	-88(%rbp), %rcx
	movl	68(%rcx), %ecx
	movslq	-48(%rbp), %rdx
	movq	-120(%rbp), %rsi
	subl	48(%rsi,%rdx,4), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_24
# BB#23:
	movq	-88(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	jmp	.LBB0_25
.LBB0_24:
	movl	-176(%rbp), %ecx
.LBB0_25:
	movl	%ecx, -176(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	88(%rax), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-56(%rbp), %eax
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -120(%rbp)
	movq	-88(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	jmp	.LBB0_26
.LBB0_769:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_770:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_772
# BB#771:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_772:
	movq	-32(%rbp), %rax
	movzbl	41(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_774
# BB#773:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	-32(%rbp), %rax
	movb	$2, 41(%rax)
.LBB0_774:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %r8
	movq	-32(%rbp), %rax
	movl	48(%rax,%r8,4), %edx
	movl	56(%rax,%r8,4), %ecx
.LBB0_84:
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
.LBB0_85:
	xorl	%r9d, %r9d
.LBB0_86:
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
.LBB0_87:
	movl	-40(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-44(%rbp), %eax
.LBB0_78:
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB0_779:
	movq	-144(%rbp), %rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_215:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-32(%rbp), %rax
	cmpb	$0, 41(%rax)
	je	.LBB0_87
# BB#216:
	movq	-32(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_51:
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	48(%rcx,%rax), %rax
	movq	%rax, -128(%rbp)
	movzwl	42(%rax), %eax
	cmpl	font_curr_page(%rip), %eax
	jge	.LBB0_87
# BB#52:
	movq	-128(%rbp), %rdi
	callq	FontPageUsed
	jmp	.LBB0_87
.LBB0_29:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_31:
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_32
	.align	16, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_32 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_32:                               # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_33
# BB#34:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$13, %eax
	je	.LBB0_37
# BB#35:
	movq	-88(%rbp), %rax
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
	movq	-88(%rbp), %rax
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
	movq	-88(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	%ecx, %edx
	jne	.LBB0_779
# BB#38:
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_39
.LBB0_40:                               #   in Loop: Header=BB0_39 Depth=1
	movq	-120(%rbp), %rax
.LBB0_39:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_40
# BB#41:
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	subl	88(%rcx), %eax
	movslq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_43
# BB#42:
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_44
.LBB0_220:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_222:
	movq	%rax, -96(%rbp)
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_223
	.align	16, 0x90
.LBB0_224:                              #   in Loop: Header=BB0_223 Depth=1
	movq	-88(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	incl	-60(%rbp)
.LBB0_223:                              # =>This Inner Loop Header: Depth=1
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_224
# BB#225:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %rax
	movl	48(%rdi,%rax,4), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_227
# BB#226:
	movl	-40(%rbp), %edx
	jmp	.LBB0_228
.LBB0_227:
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %edx
.LBB0_228:
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB0_230
# BB#229:
	movl	-44(%rbp), %ecx
	jmp	.LBB0_231
.LBB0_230:
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	jmp	.LBB0_231
.LBB0_472:
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_473
.LBB0_481:                              #   in Loop: Header=BB0_473 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
.LBB0_473:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_475 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_484
# BB#474:                               #   in Loop: Header=BB0_473 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_475
	.align	16, 0x90
.LBB0_476:                              #   in Loop: Header=BB0_475 Depth=2
	movq	-88(%rbp), %rax
.LBB0_475:                              #   Parent Loop BB0_473 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_476
# BB#477:                               #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_482
# BB#478:                               #   in Loop: Header=BB0_473 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_479
# BB#480:                               #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_481
.LBB0_482:                              #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_490
# BB#483:                               #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_494
	jmp	.LBB0_484
.LBB0_490:                              #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_491
# BB#492:                               #   in Loop: Header=BB0_473 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_493
.LBB0_479:                              #   in Loop: Header=BB0_473 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_481
.LBB0_491:                              #   in Loop: Header=BB0_473 Depth=1
	xorl	%eax, %eax
.LBB0_493:                              #   in Loop: Header=BB0_473 Depth=1
	testb	%al, %al
	jne	.LBB0_484
.LBB0_494:                              #   in Loop: Header=BB0_473 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_473
.LBB0_132:
	movq	-32(%rbp), %rax
	cmpl	$128, 64(%rax)
	jne	.LBB0_87
# BB#133:
	movq	-32(%rbp), %rax
	cmpl	$128, 72(%rax)
	jne	.LBB0_87
	jmp	.LBB0_134
.LBB0_139:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
.LBB0_148:
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
.LBB0_26:
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_78
.LBB0_156:
	movq	-32(%rbp), %rax
	cmpl	$0, 76(%rax)
	jne	.LBB0_87
	jmp	.LBB0_134
.LBB0_484:
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_26
# BB#485:
	movq	$0, -472(%rbp)
	movl	$0, -432(%rbp)
	movl	-36(%rbp), %eax
	subl	-40(%rbp), %eax
	movl	%eax, -416(%rbp)
	movslq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -156(%rbp)
	movl	-40(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -412(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_486
.LBB0_499:                              #   in Loop: Header=BB0_486 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_486:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_488 Depth 2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_508
# BB#487:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_488
	.align	16, 0x90
.LBB0_489:                              #   in Loop: Header=BB0_488 Depth=2
	movq	-88(%rbp), %rax
.LBB0_488:                              #   Parent Loop BB0_486 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_489
# BB#495:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_500
# BB#496:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_497
# BB#498:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_499
.LBB0_500:                              #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_502
# BB#501:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_486
	jmp	.LBB0_506
.LBB0_502:                              #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_503
# BB#504:                               #   in Loop: Header=BB0_486 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_505
.LBB0_497:                              #   in Loop: Header=BB0_486 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_499
.LBB0_503:                              #   in Loop: Header=BB0_486 Depth=1
	xorl	%eax, %eax
.LBB0_505:                              #   in Loop: Header=BB0_486 Depth=1
	testb	%al, %al
	je	.LBB0_486
	jmp	.LBB0_506
.LBB0_43:
	movl	-36(%rbp), %eax
	addl	-44(%rbp), %eax
	movq	-88(%rbp), %rcx
	subl	88(%rcx), %eax
.LBB0_44:
	movl	%eax, -176(%rbp)
	movq	-88(%rbp), %rcx
	movl	68(%rcx), %ecx
	movslq	-48(%rbp), %rdx
	movq	-120(%rbp), %rsi
	subl	48(%rsi,%rdx,4), %ecx
	cmpl	%ecx, %eax
	jge	.LBB0_46
# BB#45:
	movq	-88(%rbp), %rax
	movl	68(%rax), %ecx
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rdx
	subl	48(%rdx,%rax,4), %ecx
	jmp	.LBB0_47
.LBB0_46:
	movl	-176(%rbp), %ecx
.LBB0_47:
	movl	%ecx, -176(%rbp)
	movq	-120(%rbp), %rdi
	movq	-88(%rbp), %rax
	movl	88(%rax), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-56(%rbp), %eax
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%eax, (%rsp)
	movl	$1, 8(%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -120(%rbp)
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rax
	andl	$-528482305, 40(%rax)   # imm = 0xFFFFFFFFE07FFFFF
	jmp	.LBB0_779
.LBB0_113:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movl	-40(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-44(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movl	-40(%rbp), %edi
	addl	-44(%rbp), %edi
	movq	-88(%rbp), %rax
	movl	48(%rax), %esi
	addl	56(%rax), %esi
	callq	ScaleFactor
	movss	%xmm0, -200(%rbp)
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.LBB0_115
# BB#114:
	movq	-88(%rbp), %rdi
	movl	48(%rdi), %edx
	movl	56(%rdi), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %esi
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%esi, %esi
	jmp	.LBB0_85
.LBB0_126:
	movq	-32(%rbp), %rax
	cmpl	$0, 64(%rax)
	jg	.LBB0_128
# BB#127:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_128:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movl	-40(%rbp), %eax
	shll	$7, %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	64(%rcx)
	movl	%eax, -172(%rbp)
	movl	-44(%rbp), %eax
	shll	$7, %eax
	movq	-32(%rbp), %rcx
	cltd
	idivl	64(%rcx)
	movl	%eax, -176(%rbp)
	movq	-88(%rbp), %rdi
	movl	-172(%rbp), %edx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %ecx
	movl	-60(%rbp), %esi
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%ecx, (%rsp)
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	movl	%eax, %ecx
	jmp	.LBB0_86
.LBB0_154:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 88(%rcx)
	movq	-32(%rbp), %rax
	movl	48(%rax), %eax
	movl	%eax, -224(%rbp)
	movl	$8388607, -220(%rbp)    # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	movl	%eax, -216(%rbp)
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	movl	%eax, -240(%rbp)
	movl	$8388607, -236(%rbp)    # imm = 0x7FFFFF
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	movl	%eax, -232(%rbp)
	movq	-88(%rbp), %rsi
	movq	-32(%rbp), %rax
	movl	76(%rax), %edx
	leaq	-256(%rbp), %rdi
	leaq	-224(%rbp), %rcx
	leaq	-240(%rbp), %r8
	xorl	%r9d, %r9d
	callq	RotateConstraint
	movq	-88(%rbp), %rdi
	movl	-256(%rbp), %edx
	movl	-248(%rbp), %ecx
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %esi
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$0, %esi
	xorl	%r8d, %r8d
	jmp	.LBB0_85
.LBB0_162:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-36(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, 88(%rdx)
.LBB0_134:
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	jmp	.LBB0_86
.LBB0_181:
	movq	-32(%rbp), %rax
	movl	76(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	jle	.LBB0_184
# BB#182:
	movq	-32(%rbp), %rax
	movl	76(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	48(%rcx,%rax), %rax
	movq	%rax, -128(%rbp)
	movzwl	42(%rax), %eax
	cmpl	font_curr_page(%rip), %eax
	jge	.LBB0_184
# BB#183:
	movq	-128(%rbp), %rdi
	callq	FontPageUsed
.LBB0_184:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	subl	48(%rcx), %eax
	movl	%eax, 88(%rcx)
	movq	-88(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %edx
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	jmp	.LBB0_86
.LBB0_103:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_105
# BB#104:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_106
.LBB0_105:
	movq	-88(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
.LBB0_106:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	jmp	.LBB0_107
.LBB0_173:
	movq	-312(%rbp), %rax
	movq	%rax, -320(%rbp)
	movq	$0, -328(%rbp)
.LBB0_174:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %r8
	movq	-320(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	-56(%rbp), %edx
	movl	-36(%rbp), %ebx
	movslq	-48(%rbp), %rax
	subl	48(%rcx,%rax,4), %ebx
	subl	%ebx, %edx
	callq	*120(%r8)
	movq	-88(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %r10d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r10d, (%rsp)
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	cmpq	$0, -328(%rbp)
	je	.LBB0_87
# BB#175:
	movq	BackEnd(%rip), %r8
	movq	-328(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movl	88(%rcx), %esi
	movl	-56(%rbp), %edx
	movl	-36(%rbp), %ebx
	movslq	-48(%rbp), %rax
	subl	48(%rcx,%rax,4), %ebx
	subl	%ebx, %edx
	callq	*120(%r8)
	jmp	.LBB0_87
.LBB0_195:
	movq	-336(%rbp), %rax
	movq	%rax, -344(%rbp)
	movq	$0, -352(%rbp)
.LBB0_196:
	movl	-40(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 48(%rdx,%rcx,4)
	movl	-44(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %rax
	movq	-32(%rbp), %rdi
	movl	88(%rdi), %esi
	movl	-56(%rbp), %edx
	movl	-36(%rbp), %ecx
	addl	60(%rdi), %ecx
	subl	%ecx, %edx
	callq	*192(%rax)
	movq	BackEnd(%rip), %rax
	movq	-344(%rbp), %rdi
	callq	*176(%rax)
	movq	BackEnd(%rip), %rax
	callq	*168(%rax)
	movq	-88(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	leal	(%rsi,%rcx), %eax
	movl	-60(%rbp), %edx
	leaq	-192(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	leaq	-188(%rbp), %rbx
	movq	%rbx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	movl	%esi, %edx
	callq	FixAndPrintObject
	movq	%rax, -88(%rbp)
	cmpq	$0, -352(%rbp)
	je	.LBB0_198
# BB#197:
	movq	BackEnd(%rip), %rax
	movq	-352(%rbp), %rdi
	callq	*176(%rax)
.LBB0_198:
	movq	BackEnd(%rip), %rax
	callq	*168(%rax)
	jmp	.LBB0_87
.LBB0_288:
	movq	-32(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-48(%rbp), %edx
	callq	FindAdjustIncrement
	movl	%eax, -180(%rbp)
.LBB0_295:
	movl	-168(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	movl	%eax, -156(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_296
.LBB0_304:                              #   in Loop: Header=BB0_296 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_296:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_298 Depth 2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_313
# BB#297:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_298
	.align	16, 0x90
.LBB0_299:                              #   in Loop: Header=BB0_298 Depth=2
	movq	-88(%rbp), %rax
.LBB0_298:                              #   Parent Loop BB0_296 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_299
# BB#300:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_305
# BB#301:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_302
# BB#303:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_304
.LBB0_305:                              #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_307
# BB#306:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_296
	jmp	.LBB0_311
.LBB0_307:                              #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_308
# BB#309:                               #   in Loop: Header=BB0_296 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_310
.LBB0_302:                              #   in Loop: Header=BB0_296 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_304
.LBB0_308:                              #   in Loop: Header=BB0_296 Depth=1
	xorl	%eax, %eax
.LBB0_310:                              #   in Loop: Header=BB0_296 Depth=1
	testb	%al, %al
	je	.LBB0_296
	jmp	.LBB0_311
.LBB0_115:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_117
# BB#116:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_118
.LBB0_117:
	movq	-88(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB0_87
.LBB0_118:
	movq	-88(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$2, %esi
	movl	$.L.str.3, %edx
.LBB0_107:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_87
.LBB0_311:
	cmpq	$0, -112(%rbp)
	jne	.LBB0_313
# BB#312:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_313
	.align	16, 0x90
.LBB0_314:                              #   in Loop: Header=BB0_313 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	jne	.LBB0_321
# BB#315:                               #   in Loop: Header=BB0_313 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	jne	.LBB0_321
# BB#316:                               #   in Loop: Header=BB0_313 Depth=1
	movq	-112(%rbp), %rax
	movzwl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jne	.LBB0_321
# BB#317:                               #   in Loop: Header=BB0_313 Depth=1
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %rax
	movl	48(%rdi,%rax,4), %edx
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	%esi, %ecx
	movq	-88(%rbp), %r8
	movl	48(%r8,%rax,4), %ebx
	addl	56(%r8,%rax,4), %ebx
	subl	%ebx, %ecx
	cmpl	%ecx, 56(%rdi,%rax,4)
	jge	.LBB0_319
# BB#318:                               #   in Loop: Header=BB0_313 Depth=1
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	-156(%rbp), %ecx
	movslq	-48(%rbp), %r8
	movq	-88(%rbp), %rbx
	movl	48(%rbx,%r8,4), %eax
	addl	56(%rbx,%r8,4), %eax
	subl	%eax, %ecx
	movl	-48(%rbp), %r8d
	jmp	.LBB0_322
.LBB0_321:                              #   in Loop: Header=BB0_313 Depth=1
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	addl	-180(%rbp), %ecx
.LBB0_322:                              #   in Loop: Header=BB0_313 Depth=1
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -104(%rbp)
	movl	-192(%rbp), %edi
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-112(%rbp), %rcx
	addq	$44, %rcx
	movl	-164(%rbp), %r8d
	movl	-156(%rbp), %r9d
	subl	-168(%rbp), %r9d
	callq	ActualGap
	addl	%eax, -156(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_323
	.align	16, 0x90
.LBB0_331:                              #   in Loop: Header=BB0_323 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_323:                              #   Parent Loop BB0_313 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_325 Depth 3
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_313
# BB#324:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB0_325
	.align	16, 0x90
.LBB0_326:                              #   in Loop: Header=BB0_325 Depth=3
	movq	-88(%rbp), %rax
.LBB0_325:                              #   Parent Loop BB0_313 Depth=1
                                        #     Parent Loop BB0_323 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_326
# BB#327:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_332
# BB#328:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_329
# BB#330:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_331
	.align	16, 0x90
.LBB0_332:                              #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_334
# BB#333:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_323
	jmp	.LBB0_311
	.align	16, 0x90
.LBB0_334:                              #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_335
# BB#336:                               #   in Loop: Header=BB0_323 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_337
.LBB0_329:                              #   in Loop: Header=BB0_323 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_331
.LBB0_335:                              #   in Loop: Header=BB0_323 Depth=2
	xorl	%eax, %eax
.LBB0_337:                              #   in Loop: Header=BB0_323 Depth=2
	testb	%al, %al
	je	.LBB0_323
	jmp	.LBB0_311
.LBB0_319:                              #   in Loop: Header=BB0_313 Depth=1
	movslq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movl	-48(%rbp), %r8d
	jmp	.LBB0_322
	.align	16, 0x90
.LBB0_313:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_323 Depth 2
                                        #       Child Loop BB0_325 Depth 3
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_314
# BB#338:
	cmpl	$0, -52(%rbp)
	je	.LBB0_340
# BB#339:
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	jmp	.LBB0_344
.LBB0_340:
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %rax
	movl	48(%rdi,%rax,4), %edx
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	%esi, %ecx
	cmpl	%ecx, 56(%rdi,%rax,4)
	jge	.LBB0_342
# BB#341:
	movl	-36(%rbp), %ecx
	addl	-44(%rbp), %ecx
	subl	-156(%rbp), %ecx
	jmp	.LBB0_343
.LBB0_342:
	movslq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
.LBB0_343:
	movl	-48(%rbp), %r8d
.LBB0_344:
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -104(%rbp)
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	cmpl	-40(%rbp), %eax
	jge	.LBB0_346
# BB#345:
	movl	-40(%rbp), %eax
	jmp	.LBB0_347
.LBB0_346:
	movslq	-48(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
.LBB0_347:
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	subl	-168(%rbp), %eax
	movq	-72(%rbp), %rcx
	subl	(%rcx), %eax
	jmp	.LBB0_78
.LBB0_382:
	cmpq	$0, -112(%rbp)
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
	.align	16, 0x90
.LBB0_384:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_387 Depth 2
                                        #       Child Loop BB0_389 Depth 3
                                        #     Child Loop BB0_415 Depth 2
                                        #       Child Loop BB0_417 Depth 3
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_430
# BB#385:                               #   in Loop: Header=BB0_384 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_386
# BB#406:                               #   in Loop: Header=BB0_384 Depth=1
	movl	-384(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	cmpl	48(%rdx,%rcx,4), %eax
	jge	.LBB0_408
# BB#407:                               #   in Loop: Header=BB0_384 Depth=1
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_409
.LBB0_386:                              #   in Loop: Header=BB0_384 Depth=1
	movq	-376(%rbp), %rdi
	movl	-384(%rbp), %edx
	movl	-36(%rbp), %esi
	addl	%edx, %esi
	movl	-44(%rbp), %ecx
	subl	%edx, %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-188(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -376(%rbp)
	movslq	-48(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -384(%rbp)
	movslq	-48(%rbp), %rax
	movq	-376(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -388(%rbp)
	movq	-360(%rbp), %rax
	jmp	.LBB0_387
	.align	16, 0x90
.LBB0_401:                              #   in Loop: Header=BB0_387 Depth=2
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_387:                              #   Parent Loop BB0_384 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_389 Depth 3
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB0_402
# BB#388:                               #   in Loop: Header=BB0_387 Depth=2
	movq	-368(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_389
	.align	16, 0x90
.LBB0_390:                              #   in Loop: Header=BB0_389 Depth=3
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	incl	-60(%rbp)
.LBB0_389:                              #   Parent Loop BB0_384 Depth=1
                                        #     Parent Loop BB0_387 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_390
# BB#391:                               #   in Loop: Header=BB0_387 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_401
# BB#392:                               #   in Loop: Header=BB0_387 Depth=2
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_401
# BB#393:                               #   in Loop: Header=BB0_387 Depth=2
	movq	-120(%rbp), %rax
	cmpq	-376(%rbp), %rax
	je	.LBB0_401
# BB#394:                               #   in Loop: Header=BB0_387 Depth=2
	movq	-120(%rbp), %rdi
	movl	-384(%rbp), %edx
	movl	-36(%rbp), %esi
	addl	%edx, %esi
	movl	-44(%rbp), %ecx
	subl	%edx, %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -120(%rbp)
	movl	-384(%rbp), %ecx
	movslq	-48(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB0_396
# BB#395:                               #   in Loop: Header=BB0_387 Depth=2
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_397
.LBB0_396:                              #   in Loop: Header=BB0_387 Depth=2
	movl	-384(%rbp), %eax
.LBB0_397:                              #   in Loop: Header=BB0_387 Depth=2
	movl	%eax, -384(%rbp)
	movl	-388(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_399
# BB#398:                               #   in Loop: Header=BB0_387 Depth=2
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_400
.LBB0_399:                              #   in Loop: Header=BB0_387 Depth=2
	movl	-388(%rbp), %eax
.LBB0_400:                              #   in Loop: Header=BB0_387 Depth=2
	movl	%eax, -388(%rbp)
	jmp	.LBB0_401
.LBB0_402:                              #   in Loop: Header=BB0_384 Depth=1
	movl	-384(%rbp), %eax
	addl	-388(%rbp), %eax
	cmpl	%eax, -392(%rbp)
	jge	.LBB0_404
# BB#403:                               #   in Loop: Header=BB0_384 Depth=1
	movl	-384(%rbp), %eax
	addl	-388(%rbp), %eax
	jmp	.LBB0_405
.LBB0_408:                              #   in Loop: Header=BB0_384 Depth=1
	movl	-384(%rbp), %eax
.LBB0_409:                              #   in Loop: Header=BB0_384 Depth=1
	movl	%eax, -384(%rbp)
	movl	-388(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-88(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_411
# BB#410:                               #   in Loop: Header=BB0_384 Depth=1
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_412
.LBB0_411:                              #   in Loop: Header=BB0_384 Depth=1
	movl	-388(%rbp), %eax
.LBB0_412:                              #   in Loop: Header=BB0_384 Depth=1
	movl	%eax, -388(%rbp)
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %ecx
	movq	-376(%rbp), %rdx
	cmpl	56(%rdx,%rax,4), %ecx
	jle	.LBB0_414
# BB#413:                               #   in Loop: Header=BB0_384 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)
	jmp	.LBB0_414
.LBB0_404:                              #   in Loop: Header=BB0_384 Depth=1
	movl	-392(%rbp), %eax
.LBB0_405:                              #   in Loop: Header=BB0_384 Depth=1
	movl	%eax, -392(%rbp)
	movl	$1, -380(%rbp)
	movq	$0, -360(%rbp)
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -384(%rbp)
	movslq	-48(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -388(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -376(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -360(%rbp)
.LBB0_414:                              #   in Loop: Header=BB0_384 Depth=1
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_415
	.align	16, 0x90
.LBB0_423:                              #   in Loop: Header=BB0_415 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_415:                              #   Parent Loop BB0_384 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_417 Depth 3
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_384
# BB#416:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB0_417
	.align	16, 0x90
.LBB0_418:                              #   in Loop: Header=BB0_417 Depth=3
	movq	-88(%rbp), %rax
.LBB0_417:                              #   Parent Loop BB0_384 Depth=1
                                        #     Parent Loop BB0_415 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_418
# BB#419:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_424
# BB#420:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_421
# BB#422:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_423
	.align	16, 0x90
.LBB0_424:                              #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_426
# BB#425:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_415
	jmp	.LBB0_382
	.align	16, 0x90
.LBB0_426:                              #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_427
# BB#428:                               #   in Loop: Header=BB0_415 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_429
.LBB0_421:                              #   in Loop: Header=BB0_415 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_423
.LBB0_427:                              #   in Loop: Header=BB0_415 Depth=2
	xorl	%eax, %eax
.LBB0_429:                              #   in Loop: Header=BB0_415 Depth=2
	testb	%al, %al
	je	.LBB0_415
	jmp	.LBB0_382
.LBB0_430:
	cmpq	$0, -360(%rbp)
	jne	.LBB0_432
# BB#431:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_432:
	cmpl	$0, -380(%rbp)
	jne	.LBB0_434
# BB#433:
	cmpl	$0, -204(%rbp)
	je	.LBB0_434
# BB#454:
	movq	-376(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-388(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-384(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -376(%rbp)
	movq	-360(%rbp), %rax
	movq	%rax, -368(%rbp)
	leaq	-192(%rbp), %r14
	leaq	-188(%rbp), %r15
	jmp	.LBB0_455
.LBB0_469:                              #   in Loop: Header=BB0_455 Depth=1
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -368(%rbp)
.LBB0_455:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_457 Depth 2
	movq	-368(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_470
# BB#456:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-368(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_457
	.align	16, 0x90
.LBB0_458:                              #   in Loop: Header=BB0_457 Depth=2
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	incl	-60(%rbp)
.LBB0_457:                              #   Parent Loop BB0_455 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_458
# BB#459:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_469
# BB#460:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_469
# BB#461:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-376(%rbp), %rax
	je	.LBB0_469
# BB#462:                               #   in Loop: Header=BB0_455 Depth=1
	movq	-120(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -120(%rbp)
	movl	-384(%rbp), %eax
	cmpl	-188(%rbp), %eax
	jge	.LBB0_464
# BB#463:                               #   in Loop: Header=BB0_455 Depth=1
	movl	-188(%rbp), %eax
	jmp	.LBB0_465
.LBB0_464:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-384(%rbp), %eax
.LBB0_465:                              #   in Loop: Header=BB0_455 Depth=1
	movl	%eax, -384(%rbp)
	movl	-388(%rbp), %eax
	cmpl	-192(%rbp), %eax
	jge	.LBB0_467
# BB#466:                               #   in Loop: Header=BB0_455 Depth=1
	movl	-192(%rbp), %eax
	jmp	.LBB0_468
.LBB0_467:                              #   in Loop: Header=BB0_455 Depth=1
	movl	-388(%rbp), %eax
.LBB0_468:                              #   in Loop: Header=BB0_455 Depth=1
	movl	%eax, -388(%rbp)
	jmp	.LBB0_469
.LBB0_434:
	movq	-376(%rbp), %rdi
	movl	-384(%rbp), %edx
	movl	-36(%rbp), %esi
	addl	%edx, %esi
	movl	-44(%rbp), %ecx
	subl	%edx, %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %r14
	movq	%r14, 24(%rsp)
	leaq	-188(%rbp), %r15
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -376(%rbp)
	movslq	-48(%rbp), %rcx
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -384(%rbp)
	movslq	-48(%rbp), %rax
	movq	-376(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -388(%rbp)
	movq	-360(%rbp), %rax
	jmp	.LBB0_435
.LBB0_449:                              #   in Loop: Header=BB0_435 Depth=1
	movq	-368(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_435:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_437 Depth 2
	movq	%rax, -368(%rbp)
	movq	-368(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_450
# BB#436:                               #   in Loop: Header=BB0_435 Depth=1
	movq	-368(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB0_437
	.align	16, 0x90
.LBB0_438:                              #   in Loop: Header=BB0_437 Depth=2
	movq	-120(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	incl	-60(%rbp)
.LBB0_437:                              #   Parent Loop BB0_435 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_438
# BB#439:                               #   in Loop: Header=BB0_435 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_449
# BB#440:                               #   in Loop: Header=BB0_435 Depth=1
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$99, %eax
	jg	.LBB0_449
# BB#441:                               #   in Loop: Header=BB0_435 Depth=1
	movq	-120(%rbp), %rax
	cmpq	-376(%rbp), %rax
	je	.LBB0_449
# BB#442:                               #   in Loop: Header=BB0_435 Depth=1
	movq	-120(%rbp), %rdi
	movl	-384(%rbp), %edx
	movl	-36(%rbp), %esi
	addl	%edx, %esi
	movl	-44(%rbp), %ecx
	subl	%edx, %ecx
	movl	-48(%rbp), %r8d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movq	%r14, 24(%rsp)
	movq	%r15, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$1, %r9d
	callq	FixAndPrintObject
	movq	%rax, -120(%rbp)
	movl	-384(%rbp), %ecx
	movslq	-48(%rbp), %rdx
	cmpl	48(%rax,%rdx,4), %ecx
	jge	.LBB0_444
# BB#443:                               #   in Loop: Header=BB0_435 Depth=1
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	jmp	.LBB0_445
.LBB0_444:                              #   in Loop: Header=BB0_435 Depth=1
	movl	-384(%rbp), %eax
.LBB0_445:                              #   in Loop: Header=BB0_435 Depth=1
	movl	%eax, -384(%rbp)
	movl	-388(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-120(%rbp), %rdx
	cmpl	56(%rdx,%rcx,4), %eax
	jge	.LBB0_447
# BB#446:                               #   in Loop: Header=BB0_435 Depth=1
	movslq	-48(%rbp), %rax
	movq	-120(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	jmp	.LBB0_448
.LBB0_447:                              #   in Loop: Header=BB0_435 Depth=1
	movl	-388(%rbp), %eax
.LBB0_448:                              #   in Loop: Header=BB0_435 Depth=1
	movl	%eax, -388(%rbp)
	jmp	.LBB0_449
.LBB0_450:
	movl	-384(%rbp), %eax
	addl	-388(%rbp), %eax
	cmpl	%eax, -392(%rbp)
	jge	.LBB0_452
# BB#451:
	movl	-384(%rbp), %eax
	addl	-388(%rbp), %eax
	jmp	.LBB0_453
.LBB0_452:
	movl	-392(%rbp), %eax
.LBB0_453:
	movl	%eax, -392(%rbp)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movl	-392(%rbp), %eax
	jmp	.LBB0_78
.LBB0_470:
	movl	-384(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-388(%rbp), %eax
	jmp	.LBB0_78
.LBB0_506:
	cmpq	$0, -112(%rbp)
	jne	.LBB0_508
# BB#507:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_508
.LBB0_509:                              #   in Loop: Header=BB0_508 Depth=1
	movslq	-48(%rbp), %rax
	movq	-104(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-88(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-112(%rbp), %rcx
	addq	$44, %rcx
	movl	-412(%rbp), %r8d
	movl	-156(%rbp), %r9d
	subl	-416(%rbp), %r9d
	callq	ActualGap
	movq	-112(%rbp), %rcx
	movw	%ax, 54(%rcx)
	movq	-112(%rbp), %rax
	movswl	54(%rax), %eax
	addl	%eax, -156(%rbp)
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	je	.LBB0_512
# BB#510:                               #   in Loop: Header=BB0_508 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	.LBB0_512
# BB#511:                               #   in Loop: Header=BB0_508 Depth=1
	movq	-112(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB0_513
.LBB0_512:                              #   in Loop: Header=BB0_508 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -472(%rbp)
	movl	$0, -432(%rbp)
.LBB0_515:                              #   in Loop: Header=BB0_508 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_516
	.align	16, 0x90
.LBB0_524:                              #   in Loop: Header=BB0_516 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_516:                              #   Parent Loop BB0_508 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_518 Depth 3
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_508
# BB#517:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB0_518
	.align	16, 0x90
.LBB0_519:                              #   in Loop: Header=BB0_518 Depth=3
	movq	-88(%rbp), %rax
.LBB0_518:                              #   Parent Loop BB0_508 Depth=1
                                        #     Parent Loop BB0_516 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_519
# BB#520:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_525
# BB#521:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_522
# BB#523:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_524
	.align	16, 0x90
.LBB0_525:                              #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_527
# BB#526:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_516
	jmp	.LBB0_506
	.align	16, 0x90
.LBB0_527:                              #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_528
# BB#529:                               #   in Loop: Header=BB0_516 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_530
.LBB0_522:                              #   in Loop: Header=BB0_516 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_524
.LBB0_528:                              #   in Loop: Header=BB0_516 Depth=2
	xorl	%eax, %eax
.LBB0_530:                              #   in Loop: Header=BB0_516 Depth=2
	testb	%al, %al
	je	.LBB0_516
	jmp	.LBB0_506
.LBB0_513:                              #   in Loop: Header=BB0_508 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_515
# BB#514:                               #   in Loop: Header=BB0_508 Depth=1
	incl	-432(%rbp)
	jmp	.LBB0_515
.LBB0_508:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_516 Depth 2
                                        #       Child Loop BB0_518 Depth 3
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB0_509
# BB#531:
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	subl	-416(%rbp), %eax
	movl	%eax, -404(%rbp)
	cmpl	-412(%rbp), %eax
	jle	.LBB0_583
# BB#532:
	cmpl	$0, -432(%rbp)
	je	.LBB0_533
.LBB0_583:
	movl	-404(%rbp), %eax
	cmpl	-412(%rbp), %eax
	jle	.LBB0_587
# BB#584:
	cmpl	$0, -432(%rbp)
	jg	.LBB0_586
# BB#585:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_586
.LBB0_587:
	movq	-32(%rbp), %rax
	movb	68(%rax), %al
	shrb	$4, %al
	andb	$7, %al
	movzbl	%al, %eax
	cmpl	$5, %eax
	je	.LBB0_591
# BB#588:
	cmpl	$6, %eax
	jne	.LBB0_589
# BB#592:
	movq	-32(%rbp), %rax
	andw	$-2049, 42(%rax)        # imm = 0xFFFFFFFFFFFFF7FF
	movl	-412(%rbp), %eax
	subl	-404(%rbp), %eax
	movl	%eax, -408(%rbp)
	jmp	.LBB0_593
.LBB0_533:
	movl	$0, -488(%rbp)
	movl	-412(%rbp), %eax
	movl	%eax, -484(%rbp)
	movl	-412(%rbp), %eax
	movl	%eax, -480(%rbp)
	movl	-404(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	%eax, 56(%rdx,%rcx,4)
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB0_549
# BB#534:
	movq	-32(%rbp), %rdi
	leaq	-488(%rbp), %rsi
	callq	InsertScale
	testl	%eax, %eax
	je	.LBB0_549
# BB#535:
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_536
.LBB0_537:                              #   in Loop: Header=BB0_536 Depth=1
	movq	-496(%rbp), %rax
.LBB0_536:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -496(%rbp)
	movq	-496(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_537
# BB#538:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_539
.LBB0_540:                              #   in Loop: Header=BB0_539 Depth=1
	movq	-88(%rbp), %rax
.LBB0_539:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_540
# BB#541:
	movl	-404(%rbp), %eax
	subl	-412(%rbp), %eax
	cmpl	$20, %eax
	jl	.LBB0_548
# BB#542:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_546
# BB#543:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_545
# BB#544:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_546
.LBB0_545:
	movq	-88(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-496(%rbp), %rax
	cvtsi2ssl	64(%rax), %xmm0
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movl	-412(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$3, %esi
	movl	$.L.str.8, %edx
	jmp	.LBB0_547
.LBB0_591:
	movq	-32(%rbp), %rax
	andw	$-2049, 42(%rax)        # imm = 0xFFFFFFFFFFFFF7FF
	movl	-412(%rbp), %eax
	subl	-404(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	sarl	%ecx
	movl	%ecx, -408(%rbp)
	jmp	.LBB0_593
.LBB0_589:
	cmpl	$7, %eax
	jne	.LBB0_590
.LBB0_586:
	movq	-32(%rbp), %rax
	orw	$2048, 42(%rax)         # imm = 0x800
	movl	$0, -408(%rbp)
.LBB0_593:
	movq	-32(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$11, %eax
	jae	.LBB0_598
# BB#594:
	cmpl	$0, -432(%rbp)
	jle	.LBB0_598
# BB#595:
	movl	$1, -396(%rbp)
	movl	-412(%rbp), %eax
	subl	-404(%rbp), %eax
	cltd
	idivl	-432(%rbp)
	movl	%eax, -420(%rbp)
	xorl	%ecx, %ecx
	testl	%eax, %eax
	js	.LBB0_597
# BB#596:
	movl	-420(%rbp), %ecx
.LBB0_597:
	movl	%ecx, -424(%rbp)
	movl	$0, -436(%rbp)
	movl	$0, -428(%rbp)
	jmp	.LBB0_599
.LBB0_598:
	movl	$0, -396(%rbp)
.LBB0_599:
	movl	$0, -440(%rbp)
	cmpl	$0, -396(%rbp)
	je	.LBB0_600
# BB#601:
	cmpq	$0, -472(%rbp)
	sete	%al
	jmp	.LBB0_602
.LBB0_600:
	xorl	%eax, %eax
.LBB0_602:
	movzbl	%al, %eax
	movl	%eax, -400(%rbp)
	movl	$1, -204(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB0_603
.LBB0_611:                              #   in Loop: Header=BB0_603 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
	movq	-96(%rbp), %rax
.LBB0_603:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_605 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_614
# BB#604:                               #   in Loop: Header=BB0_603 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_605
	.align	16, 0x90
.LBB0_606:                              #   in Loop: Header=BB0_605 Depth=2
	movq	-88(%rbp), %rax
.LBB0_605:                              #   Parent Loop BB0_603 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_606
# BB#607:                               #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_612
# BB#608:                               #   in Loop: Header=BB0_603 Depth=1
	cmpl	$0, -204(%rbp)
	je	.LBB0_609
# BB#610:                               #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_611
.LBB0_612:                              #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_619
# BB#613:                               #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_623
	jmp	.LBB0_614
.LBB0_619:                              #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_620
# BB#621:                               #   in Loop: Header=BB0_603 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_622
.LBB0_609:                              #   in Loop: Header=BB0_603 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_611
.LBB0_620:                              #   in Loop: Header=BB0_603 Depth=1
	xorl	%eax, %eax
.LBB0_622:                              #   in Loop: Header=BB0_603 Depth=1
	testb	%al, %al
	jne	.LBB0_614
.LBB0_623:                              #   in Loop: Header=BB0_603 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_603
.LBB0_614:
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	-36(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-32(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movq	-88(%rbp), %rdx
	addl	48(%rdx,%rcx,4), %eax
	addl	-408(%rbp), %eax
	movl	%eax, -156(%rbp)
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_615
.LBB0_628:                              #   in Loop: Header=BB0_615 Depth=1
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_615:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_617 Depth 2
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_637
# BB#616:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-96(%rbp), %rax
	jmp	.LBB0_617
	.align	16, 0x90
.LBB0_618:                              #   in Loop: Header=BB0_617 Depth=2
	movq	-88(%rbp), %rax
.LBB0_617:                              #   Parent Loop BB0_615 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_618
# BB#624:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_629
# BB#625:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_626
# BB#627:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_628
.LBB0_629:                              #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_631
# BB#630:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_615
	jmp	.LBB0_635
.LBB0_631:                              #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_632
# BB#633:                               #   in Loop: Header=BB0_615 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_634
.LBB0_626:                              #   in Loop: Header=BB0_615 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_628
.LBB0_632:                              #   in Loop: Header=BB0_615 Depth=1
	xorl	%eax, %eax
.LBB0_634:                              #   in Loop: Header=BB0_615 Depth=1
	testb	%al, %al
	je	.LBB0_615
	jmp	.LBB0_635
.LBB0_549:
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	jg	.LBB0_551
# BB#550:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$23, %edi
	movl	$5, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_551:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_552
.LBB0_553:                              #   in Loop: Header=BB0_552 Depth=1
	movq	-88(%rbp), %rax
.LBB0_552:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_553
# BB#554:
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	jne	.LBB0_558
# BB#555:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_557
# BB#556:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_558
.LBB0_557:
	movq	-88(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movl	-412(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$6, %esi
	movl	$.L.str.11, %edx
	jmp	.LBB0_559
.LBB0_558:
	movq	-32(%rbp), %rax
	movl	48(%rax), %edi
	addl	56(%rax), %edi
	leaq	32(%rax), %r14
	callq	EchoLength
	movq	%rax, %rbx
	movl	-412(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$7, %esi
	movl	$.L.str.12, %edx
.LBB0_559:
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB0_560
.LBB0_570:                              #   in Loop: Header=BB0_560 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_560:                              # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_571
# BB#561:                               #   in Loop: Header=BB0_560 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_563
# BB#562:                               #   in Loop: Header=BB0_560 Depth=1
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
.LBB0_563:                              #   in Loop: Header=BB0_560 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_565
# BB#564:                               #   in Loop: Header=BB0_560 Depth=1
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
.LBB0_565:                              #   in Loop: Header=BB0_560 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_567
# BB#566:                               #   in Loop: Header=BB0_560 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_560 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_560 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_569:                              #   in Loop: Header=BB0_560 Depth=1
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
	jne	.LBB0_560
	jmp	.LBB0_570
.LBB0_571:
	movq	-32(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.13, %esi
	callq	MakeWord
	movq	%rax, -88(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_573
# BB#572:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_576
.LBB0_590:
	movl	$0, -408(%rbp)
	jmp	.LBB0_593
.LBB0_573:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_574
# BB#575:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_576
.LBB0_546:
	movq	-32(%rbp), %rax
	movl	48(%rax), %edi
	addl	56(%rax), %edi
	leaq	32(%rax), %r14
	callq	EchoLength
	movq	%rax, %rbx
	movq	-496(%rbp), %rax
	cvtsi2ssl	64(%rax), %xmm0
	divss	.LCPI0_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -512(%rbp)       # 8-byte Spill
	movl	-412(%rbp), %edi
	callq	EchoLength
	movq	%rax, (%rsp)
	movl	$23, %edi
	movl	$4, %esi
	movl	$.L.str.9, %edx
.LBB0_547:
	movl	$2, %ecx
	movb	$1, %al
	movq	%r14, %r8
	movq	%rbx, %r9
	movsd	-512(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	Error
.LBB0_548:
	movq	-496(%rbp), %rdi
	movl	-36(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -496(%rbp)
	jmp	.LBB0_87
.LBB0_574:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_576:
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
	je	.LBB0_579
# BB#577:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_579
# BB#578:
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
.LBB0_579:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_582
# BB#580:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_582
# BB#581:
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
.LBB0_582:
	movq	-88(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 48(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-88(%rbp), %rax
	movl	$0, 52(%rax)
	jmp	.LBB0_87
.LBB0_635:
	cmpq	$0, -112(%rbp)
	jne	.LBB0_637
# BB#636:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_637:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_675 Depth 2
                                        #       Child Loop BB0_677 Depth 3
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_690
# BB#638:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.LBB0_666
# BB#639:                               #   in Loop: Header=BB0_637 Depth=1
	cmpl	$0, -440(%rbp)
	jne	.LBB0_649
# BB#640:                               #   in Loop: Header=BB0_637 Depth=1
	movl	$1, -440(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_642
# BB#641:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_643
.LBB0_642:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
	jmp	.LBB0_644
.LBB0_643:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-32(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	76(%rcx), %eax
.LBB0_644:                              #   in Loop: Header=BB0_637 Depth=1
	movl	%eax, -448(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_646
# BB#645:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_647
.LBB0_646:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_648
.LBB0_647:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-32(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_648:                              #   in Loop: Header=BB0_637 Depth=1
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -452(%rbp)
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -444(%rbp)
.LBB0_649:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-112(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	jne	.LBB0_666
# BB#650:                               #   in Loop: Header=BB0_637 Depth=1
	movzbl	zz_lengths+3(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_652
# BB#651:                               #   in Loop: Header=BB0_637 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_655
.LBB0_652:                              #   in Loop: Header=BB0_637 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_653
# BB#654:                               #   in Loop: Header=BB0_637 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_655
.LBB0_653:                              #   in Loop: Header=BB0_637 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_655:                              #   in Loop: Header=BB0_637 Depth=1
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
	movq	%rax, -464(%rbp)
	movl	-444(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-448(%rbp), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-452(%rbp), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	$0, -440(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_657
# BB#656:                               #   in Loop: Header=BB0_637 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_660
.LBB0_657:                              #   in Loop: Header=BB0_637 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_658
# BB#659:                               #   in Loop: Header=BB0_637 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_660
.LBB0_658:                              #   in Loop: Header=BB0_637 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_660:                              #   in Loop: Header=BB0_637 Depth=1
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_663
# BB#661:                               #   in Loop: Header=BB0_637 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_663
# BB#662:                               #   in Loop: Header=BB0_637 Depth=1
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
.LBB0_663:                              #   in Loop: Header=BB0_637 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-464(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_666
# BB#664:                               #   in Loop: Header=BB0_637 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_666
# BB#665:                               #   in Loop: Header=BB0_637 Depth=1
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
.LBB0_666:                              #   in Loop: Header=BB0_637 Depth=1
	cmpl	$0, -400(%rbp)
	je	.LBB0_669
# BB#667:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-112(%rbp), %rax
	movswl	46(%rax), %eax
	testl	%eax, %eax
	jle	.LBB0_669
# BB#668:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	addl	-424(%rbp), %ecx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -104(%rbp)
	movl	-436(%rbp), %ecx
	incl	%ecx
	movl	%ecx, -436(%rbp)
	movl	-412(%rbp), %eax
	subl	-404(%rbp), %eax
	imull	%ecx, %eax
	cltd
	idivl	-432(%rbp)
	movl	%eax, -500(%rbp)
	movq	-112(%rbp), %rcx
	movswl	54(%rcx), %ecx
	subl	-428(%rbp), %eax
	addl	%ecx, %eax
	addl	%eax, -156(%rbp)
	movl	-500(%rbp), %eax
	movl	%eax, -428(%rbp)
	jmp	.LBB0_670
.LBB0_669:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	56(%rdi,%r8,4), %ecx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -104(%rbp)
	movq	-112(%rbp), %rax
	movswl	54(%rax), %eax
	addl	%eax, -156(%rbp)
.LBB0_670:                              #   in Loop: Header=BB0_637 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -104(%rbp)
	cmpl	$0, -400(%rbp)
	jne	.LBB0_674
# BB#671:                               #   in Loop: Header=BB0_637 Depth=1
	cmpl	$0, -396(%rbp)
	je	.LBB0_674
# BB#672:                               #   in Loop: Header=BB0_637 Depth=1
	movq	-112(%rbp), %rax
	cmpq	-472(%rbp), %rax
	jne	.LBB0_674
# BB#673:                               #   in Loop: Header=BB0_637 Depth=1
	movl	$1, -400(%rbp)
.LBB0_674:                              #   in Loop: Header=BB0_637 Depth=1
	movq	$0, -112(%rbp)
	movl	$1, -204(%rbp)
	jmp	.LBB0_675
	.align	16, 0x90
.LBB0_683:                              #   in Loop: Header=BB0_675 Depth=2
	movzbl	%al, %eax
	movl	%eax, -204(%rbp)
.LBB0_675:                              #   Parent Loop BB0_637 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_677 Depth 3
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB0_637
# BB#676:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-96(%rbp), %rax
	jmp	.LBB0_677
	.align	16, 0x90
.LBB0_678:                              #   in Loop: Header=BB0_677 Depth=3
	movq	-88(%rbp), %rax
.LBB0_677:                              #   Parent Loop BB0_637 Depth=1
                                        #     Parent Loop BB0_675 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_678
# BB#679:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_684
# BB#680:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, -112(%rbp)
	cmpl	$0, -204(%rbp)
	je	.LBB0_681
# BB#682:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB0_683
	.align	16, 0x90
.LBB0_684:                              #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_686
# BB#685:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB0_675
	jmp	.LBB0_635
	.align	16, 0x90
.LBB0_686:                              #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_687
# BB#688:                               #   in Loop: Header=BB0_675 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB0_689
.LBB0_681:                              #   in Loop: Header=BB0_675 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_683
.LBB0_687:                              #   in Loop: Header=BB0_675 Depth=2
	xorl	%eax, %eax
.LBB0_689:                              #   in Loop: Header=BB0_675 Depth=2
	testb	%al, %al
	je	.LBB0_675
	jmp	.LBB0_635
.LBB0_690:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$1, %eax
	je	.LBB0_693
# BB#691:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	je	.LBB0_693
# BB#692:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_693:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$29, %eax
	andl	$3, %eax
	cmpl	$2, %eax
	jne	.LBB0_720
# BB#694:
	cmpl	$0, -440(%rbp)
	jne	.LBB0_704
# BB#695:
	movl	$1, -440(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_697
# BB#696:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_698
.LBB0_697:
	movq	-104(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	40(%rcx), %eax
	jmp	.LBB0_699
.LBB0_698:
	movq	-32(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	andl	76(%rcx), %eax
.LBB0_699:
	movl	%eax, -448(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_701
# BB#700:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_702
.LBB0_701:
	movq	-104(%rbp), %rax
	movl	40(%rax), %eax
	jmp	.LBB0_703
.LBB0_702:
	movq	-32(%rbp), %rax
	movl	76(%rax), %eax
.LBB0_703:
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, -452(%rbp)
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	subl	48(%rdx,%rcx,4), %eax
	movl	%eax, -444(%rbp)
.LBB0_704:
	movzbl	zz_lengths+3(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_706
# BB#705:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_709
.LBB0_706:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_707
# BB#708:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_709
.LBB0_707:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_709:
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
	movq	%rax, -464(%rbp)
	movl	-444(%rbp), %ecx
	movl	%ecx, 48(%rax)
	movl	-156(%rbp), %eax
	movslq	-48(%rbp), %rcx
	movq	-104(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-448(%rbp), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-452(%rbp), %eax
	movq	-464(%rbp), %rcx
	movl	%eax, 60(%rcx)
	movl	$0, -440(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_711
# BB#710:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_714
.LBB0_711:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_712
# BB#713:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_714
.LBB0_712:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_714:
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_717
# BB#715:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_717
# BB#716:
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
.LBB0_717:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-464(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_720
# BB#718:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_720
# BB#719:
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
.LBB0_720:
	movq	-104(%rbp), %rdi
	movl	-156(%rbp), %esi
	movslq	-48(%rbp), %r8
	movl	48(%rdi,%r8,4), %edx
	movl	-412(%rbp), %ecx
	movl	%esi, %eax
	subl	-36(%rbp), %eax
	subl	%eax, %ecx
	movq	-32(%rbp), %rax
	subl	48(%rax,%r8,4), %ecx
	movl	-56(%rbp), %r9d
	movl	-60(%rbp), %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, 24(%rsp)
	leaq	-188(%rbp), %rax
	movq	%rax, 16(%rsp)
	movl	%ebx, 8(%rsp)
	movl	%r9d, (%rsp)
	xorl	%r9d, %r9d
	callq	FixAndPrintObject
	movq	%rax, -104(%rbp)
	jmp	.LBB0_87
.Lfunc_end0:
	.size	FixAndPrintObject, .Lfunc_end0-FixAndPrintObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_87
	.quad	.LBB0_777
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_87
	.quad	.LBB0_777
	.quad	.LBB0_219
	.quad	.LBB0_777
	.quad	.LBB0_48
	.quad	.LBB0_48
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_741
	.quad	.LBB0_741
	.quad	.LBB0_471
	.quad	.LBB0_232
	.quad	.LBB0_232
	.quad	.LBB0_775
	.quad	.LBB0_775
	.quad	.LBB0_775
	.quad	.LBB0_775
	.quad	.LBB0_88
	.quad	.LBB0_88
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_60
	.quad	.LBB0_60
	.quad	.LBB0_108
	.quad	.LBB0_95
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_121
	.quad	.LBB0_135
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
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_149
	.quad	.LBB0_141
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_777
	.quad	.LBB0_210
	.quad	.LBB0_210
	.quad	.LBB0_157
	.quad	.LBB0_176
	.quad	.LBB0_199
	.quad	.LBB0_199

	.text
	.align	16, 0x90
	.type	ScaleFactor,@function
ScaleFactor:                            # @ScaleFactor
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	xorps	%xmm0, %xmm0
	cmpl	$0, -4(%rbp)
	jle	.LBB1_3
# BB#1:
	cmpl	$0, -8(%rbp)
	jle	.LBB1_3
# BB#2:
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-4(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	divss	%xmm1, %xmm0
.LBB1_3:
	movss	%xmm0, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ScaleFactor, .Lfunc_end1-ScaleFactor
	.cfi_endproc

	.align	16, 0x90
	.type	FindAdjustIncrement,@function
FindAdjustIncrement:                    # @FindAdjustIncrement
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	$1, -64(%rbp)
	movq	-16(%rbp), %rax
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
	movq	-40(%rbp), %rax
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_12
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=2
	movq	-48(%rbp), %rax
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_10
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	cmpl	$0, -64(%rbp)
	je	.LBB2_7
# BB#8:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_18
# BB#11:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_22
	jmp	.LBB2_12
	.align	16, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_19
# BB#20:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_21
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_19:                               #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	testb	%al, %al
	jne	.LBB2_12
.LBB2_22:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB2_1
.LBB2_12:
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_60
# BB#13:
	movl	$0, -60(%rbp)
	movslq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -72(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -64(%rbp)
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_14 Depth=1
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_36
# BB#15:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_16 Depth=2
	movq	-32(%rbp), %rax
.LBB2_16:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_17
# BB#23:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_28
# BB#24:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_25
# BB#26:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_27
	.align	16, 0x90
.LBB2_28:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_30
# BB#29:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_14
	jmp	.LBB2_34
	.align	16, 0x90
.LBB2_30:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_31
# BB#32:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_33
.LBB2_25:                               #   in Loop: Header=BB2_14 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_27
.LBB2_31:                               #   in Loop: Header=BB2_14 Depth=1
	xorl	%eax, %eax
.LBB2_33:                               #   in Loop: Header=BB2_14 Depth=1
	testb	%al, %al
	je	.LBB2_14
	jmp	.LBB2_34
.LBB2_60:
	movl	$0, -68(%rbp)
	jmp	.LBB2_61
.LBB2_34:
	cmpq	$0, -56(%rbp)
	jne	.LBB2_36
# BB#35:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB2_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_57
# BB#37:                                #   in Loop: Header=BB2_36 Depth=1
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$6, %eax
	je	.LBB2_40
# BB#38:                                #   in Loop: Header=BB2_36 Depth=1
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$3, %eax
	je	.LBB2_40
# BB#39:                                #   in Loop: Header=BB2_36 Depth=1
	movq	-56(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	je	.LBB2_40
# BB#41:                                #   in Loop: Header=BB2_36 Depth=1
	movslq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edi
	movq	-32(%rbp), %rcx
	movl	48(%rcx,%rax,4), %esi
	movl	56(%rcx,%rax,4), %edx
	movq	-56(%rbp), %rcx
	addq	$44, %rcx
	movl	-20(%rbp), %r8d
	movl	-72(%rbp), %r9d
	callq	ActualGap
	addl	%eax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -48(%rbp)
	incl	-60(%rbp)
	movq	$0, -56(%rbp)
	movl	$1, -64(%rbp)
	jmp	.LBB2_42
	.align	16, 0x90
.LBB2_50:                               #   in Loop: Header=BB2_42 Depth=2
	movzbl	%al, %eax
	movl	%eax, -64(%rbp)
.LBB2_42:                               #   Parent Loop BB2_36 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_36
# BB#43:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-40(%rbp), %rax
	jmp	.LBB2_44
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_44 Depth=3
	movq	-32(%rbp), %rax
.LBB2_44:                               #   Parent Loop BB2_36 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_45
# BB#46:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_51
# BB#47:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	cmpl	$0, -64(%rbp)
	je	.LBB2_48
# BB#49:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$9, %eax
	andl	$1, %eax
	jmp	.LBB2_50
	.align	16, 0x90
.LBB2_51:                               #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB2_53
# BB#52:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rdi
	callq	SplitIsDefinite
	testl	%eax, %eax
	je	.LBB2_42
	jmp	.LBB2_34
	.align	16, 0x90
.LBB2_53:                               #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB2_54
# BB#55:                                #   in Loop: Header=BB2_42 Depth=2
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$100, %eax
	setl	%al
	jmp	.LBB2_56
.LBB2_48:                               #   in Loop: Header=BB2_42 Depth=2
	xorl	%eax, %eax
	jmp	.LBB2_50
.LBB2_54:                               #   in Loop: Header=BB2_42 Depth=2
	xorl	%eax, %eax
.LBB2_56:                               #   in Loop: Header=BB2_42 Depth=2
	testb	%al, %al
	je	.LBB2_42
	jmp	.LBB2_34
.LBB2_40:
	movl	$0, -4(%rbp)
	jmp	.LBB2_62
.LBB2_57:
	movl	-72(%rbp), %eax
	movslq	-24(%rbp), %rcx
	movq	-48(%rbp), %rdx
	addl	56(%rdx,%rcx,4), %eax
	movl	%eax, -76(%rbp)
	xorl	%eax, %eax
	cmpl	$0, -60(%rbp)
	je	.LBB2_59
# BB#58:
	movl	-20(%rbp), %eax
	subl	-76(%rbp), %eax
	cltd
	idivl	-60(%rbp)
.LBB2_59:
	movl	%eax, -68(%rbp)
.LBB2_61:
	movl	-68(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB2_62:
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	FindAdjustIncrement, .Lfunc_end2-FindAdjustIncrement
	.cfi_endproc

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
