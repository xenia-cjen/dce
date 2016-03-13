	.text
	.file	"z37.opt"
	.globl	FontInit
	.align	16, 0x90
	.type	FontInit,@function
FontInit:                               # @FontInit
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
	movl	$1, font_curr_page(%rip)
	movl	$0, font_count(%rip)
	movzbl	zz_lengths+17(%rip), %eax
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
	movq	%rax, font_root(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_10
.LBB0_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_10
.LBB0_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_10:
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
	movq	%rax, font_used(%rip)
	movl	$0, font_seqnum(%rip)
	movl	$9600, %edi             # imm = 0x2580
	callq	malloc
	movq	%rax, finfo(%rip)
	movl	$100, finfo_size(%rip)
	movq	StartSym(%rip), %rdx
	movl	$.L.str.1, %edi
	movl	$143, %esi
	xorl	%ecx, %ecx
	callq	load
	movq	%rax, FontDefSym(%rip)
	movl	$.L.str.2, %edi
	movl	$145, %esi
	movl	$1, %ecx
	movq	%rax, %rdx
	callq	load
	movq	%rax, fd_tag(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.3, %edi
	movl	$145, %esi
	movl	$1, %ecx
	callq	load
	movq	%rax, fd_family(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.4, %edi
	movl	$145, %esi
	movl	$1, %ecx
	callq	load
	movq	%rax, fd_face(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.5, %edi
	movl	$145, %esi
	movl	$1, %ecx
	callq	load
	movq	%rax, fd_name(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.6, %edi
	movl	$145, %esi
	movl	$1, %ecx
	callq	load
	movq	%rax, fd_metrics(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.7, %edi
	movl	$145, %esi
	xorl	%ecx, %ecx
	callq	load
	movq	%rax, fd_extra_metrics(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.8, %edi
	movl	$145, %esi
	movl	$1, %ecx
	callq	load
	movq	%rax, fd_mapping(%rip)
	movq	FontDefSym(%rip), %rdx
	movl	$.L.str.9, %edi
	movl	$145, %esi
	xorl	%ecx, %ecx
	callq	load
	movq	%rax, fd_recode(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	FontInit, .Lfunc_end0-FontInit
	.cfi_endproc

	.align	16, 0x90
	.type	load,@function
load:                                   # @load
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
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
.Ltmp6:
	.cfi_offset %rbx, -48
.Ltmp7:
	.cfi_offset %r12, -40
.Ltmp8:
	.cfi_offset %r14, -32
.Ltmp9:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movq	-40(%rbp), %r14
	movq	no_fpos(%rip), %rbx
	movq	-56(%rbp), %r12
	movzbl	-44(%rbp), %r15d
	movl	$11, %edi
	movl	$.L.str.14, %esi
	movq	%rbx, %rdx
	callq	MakeWord
	movq	%rax, 16(%rsp)
	movq	%r12, 8(%rsp)
	movl	$0, (%rsp)
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r14, %rdi
	movl	%r15d, %esi
	movq	%rbx, %rdx
	callq	InsertSym
	movq	%rax, -72(%rbp)
	cmpl	$145, -44(%rbp)
	jne	.LBB1_2
# BB#1:
	movq	-72(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$1, %ecx
	movb	%cl, 43(%rax)
.LBB1_2:
	cmpl	$0, -60(%rbp)
	je	.LBB1_4
# BB#3:
	movq	-56(%rbp), %rax
	incw	122(%rax)
	movq	-72(%rbp), %rax
	orb	$64, 126(%rax)
.LBB1_4:
	movq	-72(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	load, .Lfunc_end1-load
	.cfi_endproc

	.globl	FontChange
	.align	16, 0x90
	.type	FontChange,@function
FontChange:                             # @FontChange
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	12(%rax), %ecx
	cmpl	font_count(%rip), %ecx
	jbe	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movl	$0, -160(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$5, %eax
	je	.LBB2_11
# BB#3:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_5
# BB#4:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_24
.LBB2_5:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_6
# BB#7:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_8
# BB#9:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_11
# BB#10:
	movq	-16(%rbp), %rax
	movslq	-160(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -160(%rbp)
	movq	%rax, -80(%rbp,%rcx,8)
	jmp	.LBB2_11
.LBB2_6:
	movq	-8(%rbp), %rax
	orb	$8, (%rax)
	jmp	.LBB2_11
.LBB2_24:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_45
# BB#25:
	movq	-16(%rbp), %rax
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_44:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-120(%rbp), %rax
.LBB2_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_11
# BB#27:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_28
	.align	16, 0x90
.LBB2_29:                               #   in Loop: Header=BB2_28 Depth=2
	movq	-112(%rbp), %rax
.LBB2_28:                               #   Parent Loop BB2_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_29
# BB#30:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_44
# BB#31:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$5, %eax
	je	.LBB2_44
# BB#32:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_34
# BB#33:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_42
.LBB2_34:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_35
# BB#36:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_37
# BB#38:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_44
# BB#39:                                #   in Loop: Header=BB2_26 Depth=1
	cmpl	$3, -160(%rbp)
	jge	.LBB2_40
# BB#43:                                #   in Loop: Header=BB2_26 Depth=1
	movq	-112(%rbp), %rax
	movslq	-160(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -160(%rbp)
	movq	%rax, -80(%rbp,%rcx,8)
	jmp	.LBB2_44
.LBB2_35:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-8(%rbp), %rax
	orb	$8, (%rax)
	movq	-120(%rbp), %rax
	jmp	.LBB2_26
.LBB2_37:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-8(%rbp), %rax
	andb	$-9, (%rax)
	movq	-120(%rbp), %rax
	jmp	.LBB2_26
.LBB2_8:
	movq	-8(%rbp), %rax
	andb	$-9, (%rax)
.LBB2_11:
	cmpl	$0, -160(%rbp)
	je	.LBB2_207
# BB#12:
	cmpl	$0, -160(%rbp)
	jle	.LBB2_14
# BB#13:
	cmpl	$4, -160(%rbp)
	jl	.LBB2_15
.LBB2_14:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_15:
	movq	$0, -48(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_47:                               #   in Loop: Header=BB2_16 Depth=1
	incl	-20(%rbp)
.LBB2_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_22 Depth 2
	movl	-20(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jge	.LBB2_48
# BB#17:                                #   in Loop: Header=BB2_16 Depth=1
	movslq	-20(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movzbl	64(%rax), %eax
	cmpl	$43, %eax
	movl	%eax, -164(%rbp)
	je	.LBB2_21
# BB#18:                                #   in Loop: Header=BB2_16 Depth=1
	cmpl	$45, -164(%rbp)
	je	.LBB2_21
# BB#19:                                #   in Loop: Header=BB2_16 Depth=1
	cmpl	$48, -164(%rbp)
	jl	.LBB2_47
# BB#20:                                #   in Loop: Header=BB2_16 Depth=1
	cmpl	$57, -164(%rbp)
	jg	.LBB2_47
	.align	16, 0x90
.LBB2_21:                               #   in Loop: Header=BB2_16 Depth=1
	movslq	-20(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB2_22
	.align	16, 0x90
.LBB2_23:                               #   in Loop: Header=BB2_22 Depth=2
	movslq	-20(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rcx
	movq	%rcx, -88(%rbp,%rax,8)
.LBB2_22:                               #   Parent Loop BB2_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	incl	-20(%rbp)
	movl	-20(%rbp), %eax
	cmpl	-160(%rbp), %eax
	jl	.LBB2_23
# BB#46:                                #   in Loop: Header=BB2_16 Depth=1
	decl	-160(%rbp)
	jmp	.LBB2_47
.LBB2_48:
	movl	-160(%rbp), %eax
	cmpl	$2, %eax
	je	.LBB2_52
# BB#49:
	cmpl	$1, %eax
	jne	.LBB2_50
# BB#54:
	movq	$0, -32(%rbp)
	movq	-80(%rbp), %rax
	jmp	.LBB2_55
.LBB2_52:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
.LBB2_55:
	movq	%rax, -40(%rbp)
	jmp	.LBB2_56
.LBB2_50:
	testl	%eax, %eax
	jne	.LBB2_53
# BB#51:
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
.LBB2_56:
	movq	-8(%rbp), %rax
	movzwl	12(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	jne	.LBB2_61
# BB#57:
	cmpq	$0, -48(%rbp)
	je	.LBB2_60
# BB#58:
	cmpq	$0, -32(%rbp)
	je	.LBB2_60
# BB#59:
	cmpq	$0, -40(%rbp)
	jne	.LBB2_61
.LBB2_60:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$44, %esi
	movl	$.L.str.18, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_61:
	movq	$0, -88(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB2_71
# BB#62:
	movq	font_root(%rip), %rax
	jmp	.LBB2_63
	.align	16, 0x90
.LBB2_68:                               #   in Loop: Header=BB2_63 Depth=1
	movq	-120(%rbp), %rax
.LBB2_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_65 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB2_69
# BB#64:                                #   in Loop: Header=BB2_63 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_65
	.align	16, 0x90
.LBB2_66:                               #   in Loop: Header=BB2_65 Depth=2
	movq	-112(%rbp), %rax
.LBB2_65:                               #   Parent Loop BB2_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_66
# BB#67:                                #   in Loop: Header=BB2_63 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-112(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_68
.LBB2_69:
	movq	-120(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB2_87
# BB#70:
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB2_87
.LBB2_71:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB2_73
# BB#72:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_73:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_74
	.align	16, 0x90
.LBB2_75:                               #   in Loop: Header=BB2_74 Depth=1
	movq	-144(%rbp), %rax
.LBB2_74:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_75
# BB#76:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_79
# BB#77:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_79
# BB#78:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_79:
	movq	-144(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB2_81
# BB#80:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_81:
	movq	-144(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_82
	.align	16, 0x90
.LBB2_83:                               #   in Loop: Header=BB2_82 Depth=1
	movq	-88(%rbp), %rax
.LBB2_82:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_83
# BB#84:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_87
# BB#85:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_87
# BB#86:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_87:
	movq	$0, -96(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB2_106
# BB#88:
	cmpq	$0, -40(%rbp)
	je	.LBB2_98
# BB#89:
	movq	-88(%rbp), %rax
	jmp	.LBB2_90
	.align	16, 0x90
.LBB2_95:                               #   in Loop: Header=BB2_90 Depth=1
	movq	-120(%rbp), %rax
.LBB2_90:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_92 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB2_96
# BB#91:                                #   in Loop: Header=BB2_90 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_92
	.align	16, 0x90
.LBB2_93:                               #   in Loop: Header=BB2_92 Depth=2
	movq	-112(%rbp), %rax
.LBB2_92:                               #   Parent Loop BB2_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_93
# BB#94:                                #   in Loop: Header=BB2_90 Depth=1
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	movq	-112(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_95
.LBB2_96:
	movq	-120(%rbp), %rax
	cmpq	-88(%rbp), %rax
	je	.LBB2_106
# BB#97:
	movq	-112(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.LBB2_106
.LBB2_98:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_99
	.align	16, 0x90
.LBB2_100:                              #   in Loop: Header=BB2_99 Depth=1
	movq	-96(%rbp), %rax
.LBB2_99:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_100
# BB#101:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_104
# BB#102:
	movq	-96(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_104
# BB#103:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_104:
	movq	-96(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB2_106
# BB#105:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_106:
	cmpq	$0, -96(%rbp)
	jne	.LBB2_127
# BB#107:
	cmpq	$0, -88(%rbp)
	jne	.LBB2_110
# BB#108:
	cmpq	$0, -32(%rbp)
	jne	.LBB2_110
# BB#109:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_110:
	cmpq	$0, -40(%rbp)
	jne	.LBB2_112
# BB#111:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_112:
	cmpq	$0, -88(%rbp)
	je	.LBB2_114
# BB#113:
	movq	-88(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_114:
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	movq	-16(%rbp), %rdx
	callq	FontRead
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB2_115
.LBB2_127:
	movq	-96(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_129
# BB#128:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.29, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_129:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB2_131
# BB#130:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_131:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB2_133
# BB#132:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.31, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_133:
	cmpq	$0, -48(%rbp)
	je	.LBB2_134
# BB#135:
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	leaq	-152(%rbp), %rdx
	leaq	-168(%rbp), %rcx
	callq	GetGap
	movzwl	-152(%rbp), %eax
	shrl	$13, %eax
	cmpl	$1, %eax
	jne	.LBB2_137
# BB#136:
	movzwl	-152(%rbp), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$1, %eax
	je	.LBB2_138
.LBB2_137:
	movq	-48(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$47, %esi
	movl	$.L.str.32, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_134:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movw	48(%rax), %ax
	movw	%ax, -154(%rbp)
.LBB2_147:
	movswl	-154(%rbp), %eax
	testl	%eax, %eax
	jg	.LBB2_149
# BB#148:
	movq	-48(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movq	$.L.str.16, (%rsp)
	movl	$37, %edi
	movl	$50, %esi
	movl	$.L.str.35, %edx
	jmp	.LBB2_124
.LBB2_149:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	jne	.LBB2_151
# BB#150:
	movw	PlainCharHeight(%rip), %ax
	movw	%ax, -154(%rbp)
.LBB2_151:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_152
	.align	16, 0x90
.LBB2_158:                              #   in Loop: Header=BB2_152 Depth=1
	movq	-120(%rbp), %rax
.LBB2_152:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_154 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB2_159
# BB#153:                               #   in Loop: Header=BB2_152 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_154
	.align	16, 0x90
.LBB2_155:                              #   in Loop: Header=BB2_154 Depth=2
	movq	-104(%rbp), %rax
.LBB2_154:                              #   Parent Loop BB2_152 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_155
# BB#156:                               #   in Loop: Header=BB2_152 Depth=1
	movq	-104(%rbp), %rax
	movswl	-154(%rbp), %ecx
	cmpl	%ecx, 48(%rax)
	jne	.LBB2_158
# BB#157:
	movq	-104(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	-8(%rbp), %rcx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	12(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 12(%rcx)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	movw	%cx, 4(%rax)
	movq	-8(%rbp), %rax
	andw	$-257, 4(%rax)          # imm = 0xFFFFFFFFFFFFFEFF
	movq	-8(%rbp), %rax
	orw	$512, 4(%rax)           # imm = 0x200
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 4(%rax)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 4(%rax)
	movq	-104(%rbp), %rax
	jmp	.LBB2_206
.LBB2_159:
	movl	font_count(%rip), %eax
	incl	%eax
	movl	%eax, font_count(%rip)
	cmpl	finfo_size(%rip), %eax
	jb	.LBB2_164
# BB#160:
	cmpl	$4097, font_count(%rip) # imm = 0x1001
	jb	.LBB2_162
# BB#161:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$51, %esi
	movl	$.L.str.36, %edx
	movl	$1, %ecx
	movl	$4096, %r9d             # imm = 0x1000
	xorl	%eax, %eax
	callq	Error
.LBB2_162:
	shll	finfo_size(%rip)
	movq	finfo(%rip), %rdi
	movslq	finfo_size(%rip), %rax
	shlq	$5, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movq	%rax, finfo(%rip)
	testq	%rax, %rax
	jne	.LBB2_164
# BB#163:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$52, %esi
	movl	$.L.str.37, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_164:
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_165
	.align	16, 0x90
.LBB2_166:                              #   in Loop: Header=BB2_165 Depth=1
	movq	-136(%rbp), %rax
.LBB2_165:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_166
# BB#167:
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_170
# BB#168:
	movq	-136(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_170
# BB#169:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.38, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_170:
	movq	-136(%rbp), %rsi
	addq	$64, %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -128(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_172
# BB#171:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_175
.LBB2_53:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$43, %esi
	jmp	.LBB2_41
.LBB2_115:
	movq	font_root(%rip), %rax
	jmp	.LBB2_116
	.align	16, 0x90
.LBB2_121:                              #   in Loop: Header=BB2_116 Depth=1
	movq	-120(%rbp), %rax
.LBB2_116:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_118 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB2_122
# BB#117:                               #   in Loop: Header=BB2_116 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB2_118
	.align	16, 0x90
.LBB2_119:                              #   in Loop: Header=BB2_118 Depth=2
	movq	-112(%rbp), %rax
.LBB2_118:                              #   Parent Loop BB2_116 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_119
# BB#120:                               #   in Loop: Header=BB2_116 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movq	-40(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_121
.LBB2_122:
	movq	-120(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB2_126
# BB#123:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$45, %esi
	movl	$.L.str.27, %edx
	jmp	.LBB2_124
.LBB2_138:
	cmpl	$158, -168(%rbp)
	jne	.LBB2_140
# BB#139:
	movw	-150(%rbp), %ax
	movw	%ax, -154(%rbp)
	jmp	.LBB2_147
.LBB2_45:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$42, %esi
.LBB2_41:
	movl	$.L.str.15, %edx
	movl	$2, %ecx
	movl	$.L.str.16, %r9d
	jmp	.LBB2_125
.LBB2_172:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_173
# BB#174:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_175
.LBB2_140:
	movq	-8(%rbp), %rax
	movzwl	12(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	je	.LBB2_141
# BB#142:
	cmpl	$159, -168(%rbp)
	jne	.LBB2_144
# BB#143:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzwl	-150(%rbp), %ecx
	addl	48(%rax), %ecx
	movw	%cx, -154(%rbp)
	jmp	.LBB2_147
.LBB2_126:
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %r9
	addq	$64, %r9
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$46, %esi
	movl	$.L.str.28, %edx
.LBB2_124:
	movl	$2, %ecx
.LBB2_125:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_207
.LBB2_173:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_175:
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
	je	.LBB2_178
# BB#176:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_178
# BB#177:
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
.LBB2_178:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-128(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_181
# BB#179:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_181
# BB#180:
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
.LBB2_181:
	movzwl	font_count(%rip), %eax
	movq	-128(%rbp), %rcx
	movzwl	40(%rcx), %edx
	andl	$4095, %eax             # imm = 0xFFF
	andl	$61440, %edx            # imm = 0xF000
	orl	%eax, %edx
	movw	%dx, 40(%rcx)
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	je	.LBB2_183
# BB#182:
	movswl	-154(%rbp), %eax
	jmp	.LBB2_184
.LBB2_183:
	movq	-136(%rbp), %rax
	movl	48(%rax), %eax
.LBB2_184:
	movq	-128(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-136(%rbp), %rcx
	movl	52(%rcx), %eax
	movq	-128(%rbp), %rsi
	imull	48(%rsi), %eax
	cltd
	idivl	48(%rcx)
	movl	%eax, 52(%rsi)
	movq	-136(%rbp), %rax
	movb	60(%rax), %al
	andb	$-128, %al
	movq	-128(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$127, %dl
	orb	%al, %dl
	movb	%dl, 60(%rcx)
	movq	-136(%rbp), %rax
	movb	60(%rax), %al
	andb	$127, %al
	movq	-128(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$-128, %dl
	orb	%al, %dl
	movb	%dl, 60(%rcx)
	movq	-136(%rbp), %rcx
	movl	56(%rcx), %eax
	movq	-128(%rbp), %rsi
	imull	48(%rsi), %eax
	cltd
	idivl	48(%rcx)
	movl	%eax, 56(%rsi)
	movq	-128(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 40(%rdx,%rcx)
	movq	-96(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 48(%rdx,%rcx)
	movq	-136(%rbp), %rcx
	movzwl	40(%rcx), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rsi
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movswl	56(%rsi,%rax), %eax
	movq	-128(%rbp), %rdx
	imull	48(%rdx), %eax
	cltd
	idivl	48(%rcx)
	movl	font_count(%rip), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movw	%ax, 56(%rsi,%rcx)
	movq	-136(%rbp), %rcx
	movzwl	40(%rcx), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rsi
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movswl	58(%rsi,%rax), %eax
	movq	-128(%rbp), %rdx
	imull	48(%rdx), %eax
	cltd
	idivl	48(%rcx)
	movl	font_count(%rip), %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movw	%ax, 58(%rsi,%rcx)
	movl	$2560, %edi             # imm = 0xA00
	callq	malloc
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, (%rdx,%rcx)
	movl	font_count(%rip), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	cmpq	$0, (%rcx,%rax)
	jne	.LBB2_186
# BB#185:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$53, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_186:
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -192(%rbp)
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 8(%rdx,%rcx)
	movq	-128(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, -184(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB2_187
	.align	16, 0x90
.LBB2_190:                              #   in Loop: Header=BB2_187 Depth=1
	incl	-20(%rbp)
.LBB2_187:                              # =>This Inner Loop Header: Depth=1
	cmpl	$255, -20(%rbp)
	jg	.LBB2_191
# BB#188:                               #   in Loop: Header=BB2_187 Depth=1
	movslq	-20(%rbp), %rax
	movq	-192(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_190
# BB#189:                               #   in Loop: Header=BB2_187 Depth=1
	movslq	-20(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rsi
	movswl	4(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-176(%rbp), %rcx
	movw	%ax, 4(%rcx,%rsi)
	movslq	-20(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rsi
	movswl	6(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-176(%rbp), %rcx
	movw	%ax, 6(%rcx,%rsi)
	movslq	-20(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rsi
	movswl	2(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-176(%rbp), %rcx
	movw	%ax, 2(%rcx,%rsi)
	movslq	-20(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rsi
	movswl	(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-176(%rbp), %rcx
	movw	%ax, (%rcx,%rsi)
	movslq	-20(%rbp), %rax
	movq	-184(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rsi
	movswl	8(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-176(%rbp), %rcx
	movw	%ax, 8(%rcx,%rsi)
	jmp	.LBB2_190
.LBB2_191:
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	16(%rcx,%rax), %rax
	movl	font_count(%rip), %edx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	%rax, 16(%rcx,%rdx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movl	32(%rcx,%rax), %eax
	movl	%eax, -196(%rbp)
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movl	%eax, 32(%rdx,%rcx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	24(%rcx,%rax), %rax
	movq	%rax, -208(%rbp)
	movslq	-196(%rbp), %rax
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rdi
	callq	malloc
	movq	%rax, -216(%rbp)
	testq	%rax, %rax
	jne	.LBB2_193
# BB#192:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$54, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_193:
	movl	$1, -20(%rbp)
	jmp	.LBB2_194
	.align	16, 0x90
.LBB2_197:                              #   in Loop: Header=BB2_194 Depth=1
	incl	-20(%rbp)
.LBB2_194:                              # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-196(%rbp), %eax
	jge	.LBB2_198
# BB#195:                               #   in Loop: Header=BB2_194 Depth=1
	movslq	-20(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rax
	movb	(%rcx,%rax), %cl
	movq	-216(%rbp), %rdx
	movb	%cl, (%rdx,%rax)
	movslq	-20(%rbp), %rax
	movq	-216(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	cmpb	$0, (%rcx,%rax,2)
	je	.LBB2_197
# BB#196:                               #   in Loop: Header=BB2_194 Depth=1
	movslq	-20(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rsi
	movswl	2(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-216(%rbp), %rcx
	movw	%ax, 2(%rcx,%rsi)
	movslq	-20(%rbp), %rax
	movq	-208(%rbp), %rcx
	addq	%rax, %rax
	leaq	(%rax,%rax,2), %rsi
	movswl	4(%rcx,%rsi), %eax
	movq	-128(%rbp), %rcx
	imull	48(%rcx), %eax
	movq	-136(%rbp), %rcx
	cltd
	idivl	48(%rcx)
	movq	-216(%rbp), %rcx
	movw	%ax, 4(%rcx,%rsi)
	jmp	.LBB2_197
.LBB2_198:
	movq	-216(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 24(%rdx,%rcx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	64(%rcx,%rax), %rax
	movl	font_count(%rip), %edx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	%rax, 64(%rcx,%rdx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movl	font_count(%rip), %edx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	%rax, 72(%rcx,%rdx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	80(%rcx,%rax), %rax
	movl	font_count(%rip), %edx
	leaq	(%rdx,%rdx,2), %rdx
	shlq	$5, %rdx
	movq	%rax, 80(%rcx,%rdx)
	movq	-136(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	88(%rcx,%rax), %rax
	movq	%rax, -224(%rbp)
	testq	%rax, %rax
	je	.LBB2_204
# BB#199:
	movq	-224(%rbp), %rax
	movswl	(%rax), %eax
	movl	%eax, -236(%rbp)
	movslq	-236(%rbp), %rdi
	addq	%rdi, %rdi
	callq	malloc
	movq	%rax, -232(%rbp)
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 88(%rdx,%rcx)
	cmpq	$0, -232(%rbp)
	jne	.LBB2_201
# BB#200:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$55, %esi
	movl	$.L.str.39, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_201:
	movw	-236(%rbp), %ax
	movq	-232(%rbp), %rcx
	movw	%ax, (%rcx)
	movl	$1, -20(%rbp)
	jmp	.LBB2_202
	.align	16, 0x90
.LBB2_203:                              #   in Loop: Header=BB2_202 Depth=1
	movslq	-20(%rbp), %rcx
	movq	-224(%rbp), %rax
	movswl	(%rax,%rcx,2), %eax
	movq	-128(%rbp), %rdx
	imull	48(%rdx), %eax
	movq	-136(%rbp), %rsi
	cltd
	idivl	48(%rsi)
	movq	-232(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
	incl	-20(%rbp)
.LBB2_202:                              # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-236(%rbp), %eax
	jl	.LBB2_203
	jmp	.LBB2_205
.LBB2_204:
	movl	font_count(%rip), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	$0, 88(%rcx,%rax)
.LBB2_205:
	movq	-8(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	font_count(%rip), %ecx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	12(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 12(%rax)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	movw	%cx, 4(%rax)
	movq	-8(%rbp), %rax
	andw	$-257, 4(%rax)          # imm = 0xFFFFFFFFFFFFFEFF
	movq	-8(%rbp), %rax
	orw	$512, 4(%rax)           # imm = 0x200
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 4(%rax)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 4(%rax)
	movq	-128(%rbp), %rax
.LBB2_206:
	movw	56(%rax), %ax
	movq	-8(%rbp), %rcx
	movw	%ax, 6(%rcx)
.LBB2_207:
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.LBB2_141:
	movq	-48(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$48, %esi
	movl	$.L.str.33, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_147
.LBB2_144:
	cmpl	$160, -168(%rbp)
	jne	.LBB2_146
# BB#145:
	movq	-8(%rbp), %rax
	movl	12(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movl	48(%rax), %eax
	movzwl	-150(%rbp), %ecx
	subl	%ecx, %eax
	movw	%ax, -154(%rbp)
	jmp	.LBB2_147
.LBB2_42:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$41, %esi
	jmp	.LBB2_41
.LBB2_146:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	-168(%rbp), %r9d
	movl	$37, %edi
	movl	$49, %esi
	movl	$.L.str.34, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_147
.LBB2_40:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$40, %esi
	jmp	.LBB2_41
.Lfunc_end2:
	.size	FontChange, .Lfunc_end2-FontChange
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI3_0:
	.long	1073741824              # float 2
	.text
	.align	16, 0x90
	.type	FontRead,@function
FontRead:                               # @FontRead
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1704, %rsp             # imm = 0x6A8
.Ltmp16:
	.cfi_offset %rbx, -56
.Ltmp17:
	.cfi_offset %r12, -48
.Ltmp18:
	.cfi_offset %r13, -40
.Ltmp19:
	.cfi_offset %r14, -32
.Ltmp20:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movl	$0, -1528(%rbp)
	movq	FontDefSym(%rip), %rax
	movq	88(%rax), %rax
	movq	%rax, -80(%rbp)
	testq	%rax, %rax
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-56(%rbp), %r9
	movq	-64(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$10, %esi
	movl	$.L.str.73, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-56(%rbp), %rdx
	movq	-64(%rbp), %rcx
	leaq	-224(%rbp), %rdi
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	leaq	-360(%rbp), %r12
	leaq	-364(%rbp), %r13
	leaq	-352(%rbp), %r14
	leaq	-336(%rbp), %r15
	leaq	-338(%rbp), %rbx
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB3_9
# BB#4:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_5 Depth=2
	movq	-96(%rbp), %rax
.LBB3_5:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_6
# BB#7:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	-96(%rbp), %rdi
	movq	FontDefSym(%rip), %rdx
	movq	%r12, 16(%rsp)
	movq	%r13, 8(%rsp)
	movq	%r14, (%rsp)
	movl	$0, %esi
	leaq	-224(%rbp), %rcx
	movq	%r15, %r8
	movq	%rbx, %r9
	callq	DbRetrieve
	testl	%eax, %eax
	je	.LBB3_8
.LBB3_9:
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB3_10
# BB#11:
	xorl	%edi, %edi
	callq	SwitchScope
	movq	-352(%rbp), %rsi
	movl	-364(%rbp), %edx
	movzwl	-338(%rbp), %edi
	callq	ReadFromFile
	movq	%rax, -104(%rbp)
	xorl	%edi, %edi
	callq	UnSwitchScope
	cmpq	$0, -104(%rbp)
	jne	.LBB3_13
# BB#12:
	movq	no_fpos(%rip), %r8
	leaq	-224(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$11, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_13:
	movq	$0, -400(%rbp)
	movq	$0, -392(%rbp)
	movq	$0, -384(%rbp)
	movq	$0, -376(%rbp)
	movq	$0, -424(%rbp)
	movq	$0, -416(%rbp)
	movq	$0, -408(%rbp)
	movq	-104(%rbp), %rax
	jmp	.LBB3_14
	.align	16, 0x90
.LBB3_77:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-120(%rbp), %rax
.LBB3_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_16 Depth 2
                                        #     Child Loop BB3_69 Depth 2
                                        #     Child Loop BB3_62 Depth 2
                                        #     Child Loop BB3_55 Depth 2
                                        #     Child Loop BB3_48 Depth 2
                                        #     Child Loop BB3_40 Depth 2
                                        #     Child Loop BB3_32 Depth 2
                                        #     Child Loop BB3_23 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB3_78
# BB#15:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-120(%rbp), %rax
	jmp	.LBB3_16
	.align	16, 0x90
.LBB3_17:                               #   in Loop: Header=BB3_16 Depth=2
	movq	-112(%rbp), %rax
.LBB3_16:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_17
# BB#18:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	je	.LBB3_20
# BB#19:                                #   in Loop: Header=BB3_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.76, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_20:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_tag(%rip), %rax
	je	.LBB3_77
# BB#21:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_family(%rip), %rax
	je	.LBB3_22
# BB#30:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_face(%rip), %rax
	je	.LBB3_31
# BB#38:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_name(%rip), %rax
	je	.LBB3_39
# BB#46:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_metrics(%rip), %rax
	je	.LBB3_47
# BB#53:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_extra_metrics(%rip), %rax
	je	.LBB3_54
# BB#60:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_mapping(%rip), %rax
	je	.LBB3_61
# BB#67:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	fd_recode(%rip), %rax
	je	.LBB3_68
# BB#74:                                #   in Loop: Header=BB3_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.84, %r9d
	jmp	.LBB3_75
	.align	16, 0x90
.LBB3_22:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_23
	.align	16, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_23 Depth=2
	movq	-376(%rbp), %rax
.LBB3_23:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_24
# BB#25:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-376(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_27
# BB#26:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-376(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_28
.LBB3_27:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-376(%rbp), %rdi
	addq	$64, %rdi
	movq	-56(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_77
.LBB3_28:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movq	-376(%rbp), %r9
	addq	$64, %r9
	leaq	-224(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.2, (%rsp)
	movl	$37, %edi
	movl	$12, %esi
	movl	$.L.str.77, %edx
	movl	$1, %ecx
	jmp	.LBB3_75
.LBB3_31:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_32
	.align	16, 0x90
.LBB3_33:                               #   in Loop: Header=BB3_32 Depth=2
	movq	-384(%rbp), %rax
.LBB3_32:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -384(%rbp)
	movq	-384(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_33
# BB#34:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-384(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_36
# BB#35:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-384(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_37
.LBB3_36:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-384(%rbp), %rdi
	addq	$64, %rdi
	movq	-64(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_77
.LBB3_37:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movq	-384(%rbp), %r9
	addq	$64, %r9
	leaq	-224(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.2, (%rsp)
	movl	$37, %edi
	movl	$13, %esi
	movl	$.L.str.78, %edx
	movl	$1, %ecx
.LBB3_75:                               #   in Loop: Header=BB3_14 Depth=1
	xorl	%eax, %eax
.LBB3_76:                               #   in Loop: Header=BB3_14 Depth=1
	callq	Error
	jmp	.LBB3_77
.LBB3_39:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_40
	.align	16, 0x90
.LBB3_41:                               #   in Loop: Header=BB3_40 Depth=2
	movq	-392(%rbp), %rax
.LBB3_40:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -392(%rbp)
	movq	-392(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_41
# BB#42:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-392(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -392(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_77
# BB#43:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-392(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_77
# BB#44:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-392(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$14, %esi
	movl	$.L.str.79, %edx
	jmp	.LBB3_45
.LBB3_47:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_48
	.align	16, 0x90
.LBB3_49:                               #   in Loop: Header=BB3_48 Depth=2
	movq	-400(%rbp), %rax
.LBB3_48:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -400(%rbp)
	movq	-400(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_49
# BB#50:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-400(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -400(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_77
# BB#51:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_77
# BB#52:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-400(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$15, %esi
	movl	$.L.str.80, %edx
	jmp	.LBB3_45
.LBB3_54:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_55
	.align	16, 0x90
.LBB3_56:                               #   in Loop: Header=BB3_55 Depth=2
	movq	-408(%rbp), %rax
.LBB3_55:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_56
# BB#57:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-408(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -408(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_77
# BB#58:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-408(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_77
# BB#59:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-408(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$16, %esi
	movl	$.L.str.81, %edx
	jmp	.LBB3_45
.LBB3_61:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_62
	.align	16, 0x90
.LBB3_63:                               #   in Loop: Header=BB3_62 Depth=2
	movq	-416(%rbp), %rax
.LBB3_62:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_63
# BB#64:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-416(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -416(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_77
# BB#65:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-416(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_77
# BB#66:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-416(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$17, %esi
	movl	$.L.str.82, %edx
.LBB3_45:                               #   in Loop: Header=BB3_14 Depth=1
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-120(%rbp), %rax
	jmp	.LBB3_14
.LBB3_68:                               #   in Loop: Header=BB3_14 Depth=1
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_69
	.align	16, 0x90
.LBB3_70:                               #   in Loop: Header=BB3_69 Depth=2
	movq	-424(%rbp), %rax
.LBB3_69:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -424(%rbp)
	movq	-424(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_70
# BB#71:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-424(%rbp), %rdi
	movl	$1, %esi
	callq	ReplaceWithTidy
	movq	%rax, -424(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_77
# BB#72:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-424(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_77
# BB#73:                                #   in Loop: Header=BB3_14 Depth=1
	movq	-424(%rbp), %rbx
	addq	$32, %rbx
	movq	fd_recode(%rip), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$18, %esi
	movl	$.L.str.83, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	jmp	.LBB3_76
.LBB3_78:
	cmpq	$0, -376(%rbp)
	je	.LBB3_83
# BB#79:
	cmpq	$0, -384(%rbp)
	je	.LBB3_83
# BB#80:
	cmpq	$0, -392(%rbp)
	je	.LBB3_83
# BB#81:
	cmpq	$0, -400(%rbp)
	je	.LBB3_83
# BB#82:
	cmpq	$0, -416(%rbp)
	je	.LBB3_83
# BB#84:
	movq	font_root(%rip), %rax
	jmp	.LBB3_85
	.align	16, 0x90
.LBB3_302:                              #   in Loop: Header=BB3_85 Depth=1
	movq	-88(%rbp), %rax
.LBB3_85:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_87 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB3_91
# BB#86:                                #   in Loop: Header=BB3_85 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB3_87
	.align	16, 0x90
.LBB3_88:                               #   in Loop: Header=BB3_87 Depth=2
	movq	-112(%rbp), %rax
.LBB3_87:                               #   Parent Loop BB3_85 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_88
# BB#89:                                #   in Loop: Header=BB3_85 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movq	-376(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_302
# BB#90:
	movq	-112(%rbp), %rax
	movq	%rax, -376(%rbp)
.LBB3_91:
	movq	-88(%rbp), %rax
	cmpq	font_root(%rip), %rax
	jne	.LBB3_97
# BB#92:
	movq	-376(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_94
# BB#93:
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
.LBB3_94:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	font_root(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_97
# BB#95:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_97
# BB#96:
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
.LBB3_97:
	movq	-376(%rbp), %rax
	jmp	.LBB3_98
	.align	16, 0x90
.LBB3_104:                              #   in Loop: Header=BB3_98 Depth=1
	movq	-88(%rbp), %rax
.LBB3_98:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_100 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-376(%rbp), %rax
	je	.LBB3_105
# BB#99:                                #   in Loop: Header=BB3_98 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB3_100
	.align	16, 0x90
.LBB3_101:                              #   in Loop: Header=BB3_100 Depth=2
	movq	-112(%rbp), %rax
.LBB3_100:                              #   Parent Loop BB3_98 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_101
# BB#102:                               #   in Loop: Header=BB3_98 Depth=1
	movq	-112(%rbp), %rdi
	addq	$64, %rdi
	movq	-384(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_104
# BB#103:
	movq	-384(%rbp), %rbx
	movq	-376(%rbp), %r15
	addq	$64, %r15
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-112(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, 8(%rsp)
	movq	%rbx, (%rsp)
	movl	$37, %edi
	movl	$19, %esi
	movl	$.L.str.85, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%r15, %r9
	callq	Error
	movq	-104(%rbp), %rdi
	callq	DisposeObject
	movq	-112(%rbp), %rax
	jmp	.LBB3_300
.LBB3_83:
	movq	$0, -48(%rbp)
	jmp	.LBB3_301
.LBB3_10:
	movq	$0, -48(%rbp)
.LBB3_301:
	movq	-48(%rbp), %rax
	addq	$1704, %rsp             # imm = 0x6A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_105:
	movq	-384(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_107
# BB#106:
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
.LBB3_107:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_110
# BB#108:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_110
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
.LBB3_110:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_112
# BB#111:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_115
.LBB3_112:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_113
# BB#114:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_115
.LBB3_113:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_115:
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
	movq	-384(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_118
# BB#116:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_118
# BB#117:
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
.LBB3_118:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_121
# BB#119:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_121
# BB#120:
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
.LBB3_121:
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
	movq	-384(%rbp), %rax
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
	movq	-400(%rbp), %rax
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
	cmpq	$0, -408(%rbp)
	je	.LBB3_144
# BB#133:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_135
# BB#134:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_138
.LBB3_135:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_136
# BB#137:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_138
.LBB3_136:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_138:
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
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_141
# BB#139:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_141
# BB#140:
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
.LBB3_141:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-408(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_144
# BB#142:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_144
# BB#143:
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
.LBB3_144:
	cmpq	$0, -424(%rbp)
	je	.LBB3_148
# BB#145:
	movq	-424(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.86, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_146
.LBB3_148:
	cmpq	$0, -424(%rbp)
	je	.LBB3_150
# BB#149:
	movq	-424(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.87, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_150
# BB#151:
	movq	-424(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$20, %esi
	movl	$.L.str.88, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_152
.LBB3_150:
	movq	-384(%rbp), %rax
	orb	$-128, 60(%rax)
	movq	-416(%rbp), %rdi
	movl	$1, %esi
	jmp	.LBB3_147
.LBB3_146:
	movq	-384(%rbp), %rax
	andb	$127, 60(%rax)
	movq	-416(%rbp), %rdi
	xorl	%esi, %esi
.LBB3_147:
	callq	MapLoad
	movq	-384(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$127, %al
	andb	$-128, %dl
	orb	%al, %dl
	movb	%dl, 60(%rcx)
.LBB3_152:
	movq	-384(%rbp), %rax
	movw	$0, 42(%rax)
	movl	font_count(%rip), %eax
	incl	%eax
	movl	%eax, font_count(%rip)
	cmpl	finfo_size(%rip), %eax
	jb	.LBB3_157
# BB#153:
	cmpl	$4097, font_count(%rip) # imm = 0x1001
	jb	.LBB3_155
# BB#154:
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$21, %esi
	movl	$.L.str.89, %edx
	movl	$1, %ecx
	movl	$4096, %r9d             # imm = 0x1000
	xorl	%eax, %eax
	callq	Error
.LBB3_155:
	shll	finfo_size(%rip)
	movq	finfo(%rip), %rdi
	movslq	finfo_size(%rip), %rax
	shlq	$5, %rax
	leaq	(%rax,%rax,2), %rsi
	callq	realloc
	movq	%rax, finfo(%rip)
	testq	%rax, %rax
	jne	.LBB3_157
# BB#156:
	movq	-72(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$22, %esi
	movl	$.L.str.37, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_157:
	movl	font_seqnum(%rip), %edi
	incl	%edi
	movl	%edi, font_seqnum(%rip)
	callq	StringInt
	movq	no_fpos(%rip), %rcx
	movl	$11, %edi
	movl	$.L.str.90, %esi
	movq	%rax, %rdx
	callq	MakeWordTwo
	movq	%rax, -432(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_159
# BB#158:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_162
.LBB3_159:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_160
# BB#161:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_162
.LBB3_160:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_162:
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
	movq	-384(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_165
# BB#163:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_165
# BB#164:
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
.LBB3_165:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-432(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_168
# BB#166:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_168
# BB#167:
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
.LBB3_168:
	movzwl	font_count(%rip), %eax
	movq	-432(%rbp), %rcx
	movzwl	40(%rcx), %edx
	andl	$4095, %eax             # imm = 0xFFF
	andl	$61440, %edx            # imm = 0xF000
	orl	%eax, %edx
	movw	%dx, 40(%rcx)
	movq	BackEnd(%rip), %rcx
	movl	$1000, %eax             # imm = 0x3E8
	cmpl	$0, 40(%rcx)
	jne	.LBB3_170
# BB#169:
	movl	PlainCharHeight(%rip), %eax
.LBB3_170:
	movq	-432(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movq	-384(%rbp), %rax
	movb	60(%rax), %al
	andb	$-128, %al
	movq	-432(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$127, %dl
	orb	%al, %dl
	movb	%dl, 60(%rcx)
	movq	-384(%rbp), %rax
	movb	60(%rax), %al
	andb	$127, %al
	movq	-432(%rbp), %rcx
	movb	60(%rcx), %dl
	andb	$-128, %dl
	orb	%al, %dl
	movb	%dl, 60(%rcx)
	movq	-432(%rbp), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	-384(%rbp), %rcx
	movzwl	40(%rcx), %edx
	andl	$61440, %edx            # imm = 0xF000
	orl	%eax, %edx
	movw	%dx, 40(%rcx)
	movq	-400(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$.L.str.14, %esi
	movl	$5, %ecx
	movl	$5, %r8d
	callq	DefineFile
	movw	%ax, -1530(%rbp)
	movzwl	-1530(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -1544(%rbp)
	testq	%rax, %rax
	jne	.LBB3_172
# BB#171:
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$23, %esi
	movl	$.L.str.91, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_172:
	movq	-1544(%rbp), %rdx
	leaq	-944(%rbp), %r14
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdi
	callq	fgets
	testq	%rax, %rax
	je	.LBB3_175
# BB#173:
	leaq	-944(%rbp), %rdi
	leaq	-1456(%rbp), %rdx
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB3_175
# BB#174:
	leaq	-1456(%rbp), %rdi
	movl	$.L.str.93, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_176
.LBB3_175:
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$24, %esi
	movl	$.L.str.94, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_176:
	movl	$2560, %edi             # imm = 0xA00
	callq	malloc
	movq	%rax, -1560(%rbp)
	testq	%rax, %rax
	jne	.LBB3_178
# BB#177:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$25, %esi
	movl	$.L.str.95, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_178:
	movl	$512, %edi              # imm = 0x200
	callq	malloc
	movq	%rax, -1568(%rbp)
	testq	%rax, %rax
	jne	.LBB3_180
# BB#179:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$25, %esi
	movl	$.L.str.95, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_180:
	movl	$0, -1480(%rbp)
	jmp	.LBB3_181
	.align	16, 0x90
.LBB3_182:                              #   in Loop: Header=BB3_181 Depth=1
	movslq	-1480(%rbp), %rax
	movq	-1568(%rbp), %rcx
	movb	$1, (%rcx,%rax)
	incl	-1480(%rbp)
.LBB3_181:                              # =>This Inner Loop Header: Depth=1
	cmpl	$255, -1480(%rbp)
	jle	.LBB3_182
# BB#183:
	movl	$258, -1488(%rbp)       # imm = 0x102
	movl	$512, %edi              # imm = 0x200
	callq	malloc
	movq	%rax, -1576(%rbp)
	testq	%rax, %rax
	jne	.LBB3_185
# BB#184:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$25, %esi
	movl	$.L.str.95, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_185:
	movl	$1536, %edi             # imm = 0x600
	callq	malloc
	movq	%rax, -1584(%rbp)
	testq	%rax, %rax
	jne	.LBB3_187
# BB#186:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$25, %esi
	movl	$.L.str.95, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_187:
	movl	$0, -1480(%rbp)
	jmp	.LBB3_188
	.align	16, 0x90
.LBB3_189:                              #   in Loop: Header=BB3_188 Depth=1
	movslq	-1480(%rbp), %rax
	movq	-1576(%rbp), %rcx
	movw	$0, (%rcx,%rax,2)
	incl	-1480(%rbp)
.LBB3_188:                              # =>This Inner Loop Header: Depth=1
	cmpl	$255, -1480(%rbp)
	jle	.LBB3_189
# BB#190:
	movl	$1, -1492(%rbp)
	movl	$512, %edi              # imm = 0x200
	callq	malloc
	movq	%rax, -1592(%rbp)
	testq	%rax, %rax
	jne	.LBB3_192
# BB#191:
	movq	-72(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$25, %esi
	movl	$.L.str.95, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_192:
	movl	$0, -1480(%rbp)
	jmp	.LBB3_193
	.align	16, 0x90
.LBB3_194:                              #   in Loop: Header=BB3_193 Depth=1
	movslq	-1480(%rbp), %rax
	movq	-1592(%rbp), %rcx
	movw	$0, (%rcx,%rax,2)
	incl	-1480(%rbp)
.LBB3_193:                              # =>This Inner Loop Header: Depth=1
	cmpl	$255, -1480(%rbp)
	jle	.LBB3_194
# BB#195:
	movq	$0, -1616(%rbp)
	movl	$0, -1520(%rbp)
	movl	$0, -1516(%rbp)
	movl	$0, -1524(%rbp)
	movl	$0, -1508(%rbp)
	movl	$0, -1512(%rbp)
	movl	$0, -1476(%rbp)
	movq	$0, -1600(%rbp)
	movq	$0, -1608(%rbp)
	movq	$0, -1616(%rbp)
	movl	$0, -368(%rbp)
	movl	$1, -1484(%rbp)
	leaq	-1456(%rbp), %r15
	leaq	-1664(%rbp), %r13
	leaq	-1696(%rbp), %r12
	jmp	.LBB3_196
.LBB3_234:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$1, -368(%rbp)
	.align	16, 0x90
.LBB3_196:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_247 Depth 2
                                        #       Child Loop BB3_263 Depth 3
                                        #       Child Loop BB3_271 Depth 3
                                        #     Child Loop BB3_230 Depth 2
	movq	-1544(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdi
	callq	fgets
	movq	%rax, -1472(%rbp)
	testq	%rax, %rax
	je	.LBB3_197
# BB#198:                               #   in Loop: Header=BB3_196 Depth=1
	movzbl	-944(%rbp), %eax
	cmpl	$69, %eax
	jne	.LBB3_199
# BB#200:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.96, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB3_201
	.align	16, 0x90
.LBB3_197:                              #   in Loop: Header=BB3_196 Depth=1
	xorl	%eax, %eax
	jmp	.LBB3_202
	.align	16, 0x90
.LBB3_199:                              #   in Loop: Header=BB3_196 Depth=1
	xorl	%eax, %eax
.LBB3_201:                              #   in Loop: Header=BB3_196 Depth=1
	xorb	$1, %al
.LBB3_202:                              #   in Loop: Header=BB3_196 Depth=1
	testb	%al, %al
	je	.LBB3_281
# BB#203:                               #   in Loop: Header=BB3_196 Depth=1
	incl	-1484(%rbp)
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	__isoc99_sscanf
	movzbl	-1456(%rbp), %eax
	cmpl	$82, %eax
	jle	.LBB3_204
# BB#209:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$83, %eax
	je	.LBB3_235
# BB#210:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$88, %eax
	jne	.LBB3_211
# BB#220:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#221:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -1524(%rbp)
	je	.LBB3_223
# BB#222:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %r8
	addq	$32, %r8
	movl	-1484(%rbp), %r9d
	movl	$37, %edi
	movl	$28, %esi
	movl	$.L.str.104, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_223:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.105, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	-1496(%rbp), %rdx
	callq	__isoc99_sscanf
	movss	-1496(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	divss	.LCPI3_0(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -1476(%rbp)
	movl	$1, -1524(%rbp)
	jmp	.LBB3_196
	.align	16, 0x90
.LBB3_204:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$70, %eax
	jne	.LBB3_205
# BB#224:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.106, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#225:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -368(%rbp)
	je	.LBB3_227
# BB#226:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-1484(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$29, %esi
	movl	$.L.str.107, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_227:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.108, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	__isoc99_sscanf
	movl	$.L.str.14, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_229
# BB#228:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-1484(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$30, %esi
	movl	$.L.str.109, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_229:                              #   in Loop: Header=BB3_196 Depth=1
	movq	-384(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_230
	.align	16, 0x90
.LBB3_231:                              #   in Loop: Header=BB3_230 Depth=2
	movq	-112(%rbp), %rax
.LBB3_230:                              #   Parent Loop BB3_196 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_231
# BB#232:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-112(%rbp), %rsi
	addq	$64, %rsi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_234
# BB#233:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %r8
	addq	$32, %r8
	movq	-112(%rbp), %rax
	addq	$64, %rax
	movq	%rax, 8(%rsp)
	movq	$.L.str.1, (%rsp)
	movl	$37, %edi
	movl	$31, %esi
	movl	$.L.str.110, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r15, %r9
	callq	Error
	jmp	.LBB3_234
.LBB3_235:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.114, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_236
# BB#241:                               #   in Loop: Header=BB3_196 Depth=1
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	je	.LBB3_196
# BB#242:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, Kern(%rip)
	je	.LBB3_196
# BB#243:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.116, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#244:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.117, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	-1712(%rbp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB3_246
# BB#245:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-1484(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$33, %esi
	movl	$.L.str.118, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_246:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$1, -1700(%rbp)
	movl	$1, -1704(%rbp)
	movslq	-1712(%rbp), %rdi
	addq	%rdi, %rdi
	callq	malloc
	movq	%rax, -1600(%rbp)
	movslq	-1712(%rbp), %rdi
	addq	%rdi, %rdi
	callq	malloc
	movq	%rax, -1608(%rbp)
	movslq	-1712(%rbp), %rdi
	addq	%rdi, %rdi
	callq	malloc
	movq	%rax, -1616(%rbp)
	movb	$0, -1619(%rbp)
	jmp	.LBB3_247
.LBB3_211:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$85, %eax
	jne	.LBB3_196
# BB#212:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.97, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_213
# BB#216:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.100, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#217:                               #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -1520(%rbp)
	je	.LBB3_219
# BB#218:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %r8
	addq	$32, %r8
	movl	-1484(%rbp), %r9d
	movl	$37, %edi
	movl	$27, %esi
	movl	$.L.str.101, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_219:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.102, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	-1504(%rbp), %rdx
	callq	__isoc99_sscanf
	cvttss2si	-1504(%rbp), %eax
	movl	%eax, -1512(%rbp)
	movl	$1, -1520(%rbp)
	jmp	.LBB3_196
.LBB3_205:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$73, %eax
	jne	.LBB3_196
# BB#206:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.111, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#207:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.112, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	__isoc99_sscanf
	movl	$.L.str.113, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_196
# BB#208:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$1, -1528(%rbp)
	jmp	.LBB3_196
.LBB3_236:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -368(%rbp)
	jne	.LBB3_238
# BB#237:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$32, %esi
	movl	$.L.str.115, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_238:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -1524(%rbp)
	jne	.LBB3_240
# BB#239:                               #   in Loop: Header=BB3_196 Depth=1
	movl	$250, -1476(%rbp)
.LBB3_240:                              #   in Loop: Header=BB3_196 Depth=1
	movq	-384(%rbp), %rdi
	movl	-1528(%rbp), %esi
	movl	-1476(%rbp), %edx
	movq	-1568(%rbp), %rcx
	movq	-1560(%rbp), %rax
	movq	-1544(%rbp), %rbx
	movzwl	-1530(%rbp), %r9d
	movq	%rbx, 16(%rsp)
	leaq	-1484(%rbp), %rbx
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	leaq	-1488(%rbp), %r8
	callq	ReadCharMetrics
	jmp	.LBB3_196
.LBB3_279:                              #   in Loop: Header=BB3_247 Depth=2
	movb	-1618(%rbp), %al
	movslq	-1480(%rbp), %rcx
	movq	-1600(%rbp), %rdx
	movb	%al, 1(%rcx,%rdx)
	movb	-1708(%rbp), %al
	movslq	-1480(%rbp), %rcx
	movq	-1608(%rbp), %rdx
	movb	%al, 1(%rcx,%rdx)
	incl	-1700(%rbp)
	.align	16, 0x90
.LBB3_247:                              #   Parent Loop BB3_196 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_263 Depth 3
                                        #       Child Loop BB3_271 Depth 3
	movq	-1544(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdi
	callq	fgets
	cmpq	%r14, %rax
	je	.LBB3_249
# BB#248:                               #   in Loop: Header=BB3_247 Depth=2
	xorl	%eax, %eax
	jmp	.LBB3_250
.LBB3_249:                              #   in Loop: Header=BB3_247 Depth=2
	movl	$.L.str.119, %esi
	movq	%r14, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	sete	%al
.LBB3_250:                              #   in Loop: Header=BB3_247 Depth=2
	testb	%al, %al
	je	.LBB3_280
# BB#251:                               #   in Loop: Header=BB3_247 Depth=2
	incl	-1484(%rbp)
	movl	$.L.str.120, %esi
	movq	%r14, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB3_247
# BB#252:                               #   in Loop: Header=BB3_247 Depth=2
	movl	$.L.str.121, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r13, %rdx
	movq	%r12, %rcx
	leaq	-1720(%rbp), %r8
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB3_254
# BB#253:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-1484(%rbp), %eax
	movq	%r14, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$34, %esi
	movl	$.L.str.122, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_254:                              #   in Loop: Header=BB3_247 Depth=2
	cvttss2si	-1720(%rbp), %eax
	movl	%eax, -1716(%rbp)
	testl	%eax, %eax
	je	.LBB3_247
# BB#255:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-384(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movq	%r13, %rdi
	callq	MapCharEncoding
	movb	%al, -1617(%rbp)
	testb	%al, %al
	je	.LBB3_247
# BB#256:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-384(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movq	%r12, %rdi
	callq	MapCharEncoding
	movb	%al, -1618(%rbp)
	testb	%al, %al
	je	.LBB3_247
# BB#257:                               #   in Loop: Header=BB3_247 Depth=2
	movzbl	-1617(%rbp), %eax
	movzbl	-1619(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB3_260
# BB#258:                               #   in Loop: Header=BB3_247 Depth=2
	movzbl	-1617(%rbp), %eax
	movq	-1592(%rbp), %rcx
	cmpw	$0, (%rcx,%rax,2)
	je	.LBB3_260
# BB#259:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movl	-1484(%rbp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r12, (%rsp)
	movl	$37, %edi
	movl	$35, %esi
	movl	$.L.str.123, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r13, %r9
	callq	Error
	jmp	.LBB3_247
.LBB3_260:                              #   in Loop: Header=BB3_247 Depth=2
	movb	-1617(%rbp), %al
	movb	%al, -1619(%rbp)
	movzbl	-1617(%rbp), %eax
	movq	-1592(%rbp), %rcx
	cmpw	$0, (%rcx,%rax,2)
	jne	.LBB3_262
# BB#261:                               #   in Loop: Header=BB3_247 Depth=2
	movw	-1700(%rbp), %ax
	movzbl	-1617(%rbp), %ecx
	movq	-1592(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movslq	-1700(%rbp), %rax
	movq	-1600(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	movslq	-1700(%rbp), %rax
	movq	-1608(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	incl	-1700(%rbp)
.LBB3_262:                              #   in Loop: Header=BB3_247 Depth=2
	movl	$1, -1708(%rbp)
	jmp	.LBB3_263
	.align	16, 0x90
.LBB3_265:                              #   in Loop: Header=BB3_263 Depth=3
	incl	-1708(%rbp)
.LBB3_263:                              #   Parent Loop BB3_196 Depth=1
                                        #     Parent Loop BB3_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-1708(%rbp), %eax
	cmpl	-1704(%rbp), %eax
	jge	.LBB3_266
# BB#264:                               #   in Loop: Header=BB3_263 Depth=3
	movslq	-1708(%rbp), %rax
	movq	-1616(%rbp), %rcx
	movswl	(%rcx,%rax,2), %eax
	cmpl	-1716(%rbp), %eax
	jne	.LBB3_265
.LBB3_266:                              #   in Loop: Header=BB3_247 Depth=2
	movl	-1708(%rbp), %eax
	cmpl	-1704(%rbp), %eax
	jne	.LBB3_270
# BB#267:                               #   in Loop: Header=BB3_247 Depth=2
	movl	-1704(%rbp), %eax
	cmpl	-1712(%rbp), %eax
	jne	.LBB3_269
# BB#268:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	-1484(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$36, %esi
	movl	$.L.str.124, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_269:                              #   in Loop: Header=BB3_247 Depth=2
	movw	-1716(%rbp), %ax
	movslq	-1708(%rbp), %rcx
	movq	-1616(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
	incl	-1704(%rbp)
.LBB3_270:                              #   in Loop: Header=BB3_247 Depth=2
	movl	-1700(%rbp), %eax
	decl	%eax
	movl	%eax, -1480(%rbp)
	jmp	.LBB3_271
	.align	16, 0x90
.LBB3_275:                              #   in Loop: Header=BB3_271 Depth=3
	movslq	-1480(%rbp), %rax
	movq	-1600(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, 1(%rcx,%rax)
	movslq	-1480(%rbp), %rax
	movq	-1608(%rbp), %rcx
	movb	(%rcx,%rax), %dl
	movb	%dl, 1(%rcx,%rax)
	decl	-1480(%rbp)
.LBB3_271:                              #   Parent Loop BB3_196 Depth=1
                                        #     Parent Loop BB3_247 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzbl	-1617(%rbp), %eax
	movq	-1592(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, -1480(%rbp)
	jl	.LBB3_272
# BB#273:                               #   in Loop: Header=BB3_271 Depth=3
	movslq	-1480(%rbp), %rax
	movq	-1600(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movzbl	-1618(%rbp), %ecx
	cmpl	%ecx, %eax
	setl	%al
	jmp	.LBB3_274
	.align	16, 0x90
.LBB3_272:                              #   in Loop: Header=BB3_271 Depth=3
	xorl	%eax, %eax
.LBB3_274:                              #   in Loop: Header=BB3_271 Depth=3
	testb	%al, %al
	jne	.LBB3_275
# BB#276:                               #   in Loop: Header=BB3_247 Depth=2
	movzbl	-1617(%rbp), %eax
	movq	-1592(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %eax
	cmpl	%eax, -1480(%rbp)
	jl	.LBB3_279
# BB#277:                               #   in Loop: Header=BB3_247 Depth=2
	movslq	-1480(%rbp), %rax
	movq	-1600(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movzbl	-1618(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB3_279
# BB#278:                               #   in Loop: Header=BB3_247 Depth=2
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movl	-1484(%rbp), %ecx
	movl	%ecx, 16(%rsp)
	movq	%rax, 8(%rsp)
	movq	%r12, (%rsp)
	movl	$37, %edi
	movl	$37, %esi
	movl	$.L.str.125, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r13, %r9
	callq	Error
	jmp	.LBB3_279
.LBB3_280:                              #   in Loop: Header=BB3_196 Depth=1
	movw	-1704(%rbp), %ax
	movq	-1616(%rbp), %rcx
	movw	%ax, (%rcx)
	jmp	.LBB3_196
.LBB3_213:                              #   in Loop: Header=BB3_196 Depth=1
	cmpl	$0, -1516(%rbp)
	je	.LBB3_215
# BB#214:                               #   in Loop: Header=BB3_196 Depth=1
	movq	-400(%rbp), %r8
	addq	$32, %r8
	movl	-1484(%rbp), %r9d
	movl	$37, %edi
	movl	$26, %esi
	movl	$.L.str.98, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_215:                              #   in Loop: Header=BB3_196 Depth=1
	movl	$.L.str.99, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	leaq	-1500(%rbp), %rdx
	callq	__isoc99_sscanf
	cvttss2si	-1500(%rbp), %eax
	movl	%eax, -1508(%rbp)
	movl	$1, -1516(%rbp)
	jmp	.LBB3_196
.LBB3_281:
	cmpq	$0, -1472(%rbp)
	jne	.LBB3_283
# BB#282:
	movq	-400(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1530(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$38, %esi
	movl	$.L.str.126, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_283:
	movq	-1544(%rbp), %rdi
	callq	fclose
	movq	$0, -1544(%rbp)
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	je	.LBB3_285
# BB#284:
	movl	-1476(%rbp), %eax
	jmp	.LBB3_286
.LBB3_285:
	movl	PlainCharHeight(%rip), %ecx
	movl	%ecx, %eax
	sarl	$31, %eax
	shrl	$30, %eax
	addl	%ecx, %eax
	sarl	$2, %eax
.LBB3_286:
	movq	-432(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movq	-432(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movl	$.L.str.127, %edi
	callq	MapCharEncoding
	movb	%al, -1457(%rbp)
	xorl	%ecx, %ecx
	testb	%al, %al
	je	.LBB3_288
# BB#287:
	movzbl	-1457(%rbp), %eax
	movq	-1560(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %ecx
.LBB3_288:
	movq	-432(%rbp), %rax
	movl	%ecx, 56(%rax)
	cmpq	$0, -408(%rbp)
	je	.LBB3_299
# BB#289:
	movq	-408(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$.L.str.14, %esi
	movl	$5, %ecx
	movl	$5, %r8d
	callq	DefineFile
	movw	%ax, -1532(%rbp)
	movzwl	-1532(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -1552(%rbp)
	testq	%rax, %rax
	jne	.LBB3_291
# BB#290:
	movq	-408(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-1532(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$37, %edi
	movl	$39, %esi
	movl	$.L.str.128, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB3_291:
	movl	$0, -1484(%rbp)
	leaq	-944(%rbp), %r13
	leaq	-1456(%rbp), %r14
	leaq	-1488(%rbp), %r15
	leaq	-1492(%rbp), %r12
	jmp	.LBB3_292
.LBB3_295:                              #   in Loop: Header=BB3_292 Depth=1
	movq	-384(%rbp), %rdi
	movl	-1528(%rbp), %esi
	movl	-1476(%rbp), %edx
	movq	-1568(%rbp), %rcx
	movq	-1560(%rbp), %rax
	movq	-1552(%rbp), %rbx
	movzwl	-1532(%rbp), %r9d
	movq	%rbx, 16(%rsp)
	leaq	-1484(%rbp), %rbx
	movq	%rbx, 8(%rsp)
	movq	%rax, (%rsp)
	movq	%r15, %r8
	callq	ReadCharMetrics
	.align	16, 0x90
.LBB3_292:                              # =>This Inner Loop Header: Depth=1
	movq	-1552(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r13, %rdi
	callq	fgets
	testq	%rax, %rax
	je	.LBB3_298
# BB#293:                               #   in Loop: Header=BB3_292 Depth=1
	incl	-1484(%rbp)
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movzbl	-1456(%rbp), %eax
	cmpl	$83, %eax
	jne	.LBB3_292
# BB#294:                               #   in Loop: Header=BB3_292 Depth=1
	movl	$.L.str.129, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB3_295
# BB#296:                               #   in Loop: Header=BB3_292 Depth=1
	movl	$.L.str.130, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_292
# BB#297:                               #   in Loop: Header=BB3_292 Depth=1
	movq	-384(%rbp), %rdi
	movq	-408(%rbp), %rsi
	movq	-1576(%rbp), %r8
	movq	-1584(%rbp), %r9
	movq	-1552(%rbp), %rax
	movzwl	-1532(%rbp), %edx
	movq	%rax, 8(%rsp)
	movq	%r12, (%rsp)
	leaq	-1484(%rbp), %rcx
	callq	ReadCompositeMetrics
	jmp	.LBB3_292
.LBB3_298:
	movq	-1552(%rbp), %rdi
	callq	fclose
	movq	$0, -1552(%rbp)
.LBB3_299:
	movq	-432(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 40(%rdx,%rcx)
	movq	-384(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 48(%rdx,%rcx)
	movl	-1476(%rbp), %eax
	subl	-1508(%rbp), %eax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movw	%ax, 56(%rdx,%rcx)
	movw	-1512(%rbp), %ax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movw	%ax, 58(%rdx,%rcx)
	movq	-1560(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, (%rdx,%rcx)
	movq	-1568(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 8(%rdx,%rcx)
	movq	-1576(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 16(%rdx,%rcx)
	movq	-1584(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 24(%rdx,%rcx)
	movl	-1492(%rbp), %eax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movl	%eax, 32(%rdx,%rcx)
	movq	-1592(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 64(%rdx,%rcx)
	movq	-1600(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 72(%rdx,%rcx)
	movq	-1608(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 80(%rdx,%rcx)
	movq	-1616(%rbp), %rax
	movl	font_count(%rip), %ecx
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	%rax, 88(%rdx,%rcx)
	movq	-384(%rbp), %rax
.LBB3_300:
	movq	%rax, -48(%rbp)
	jmp	.LBB3_301
.Lfunc_end3:
	.size	FontRead, .Lfunc_end3-FontRead
	.cfi_endproc

	.globl	FontWordSize
	.align	16, 0x90
	.type	FontWordSize,@function
FontWordSize:                           # @FontWordSize
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$656, %rsp              # imm = 0x290
.Ltmp24:
	.cfi_offset %rbx, -48
.Ltmp25:
	.cfi_offset %r12, -40
.Ltmp26:
	.cfi_offset %r14, -32
.Ltmp27:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$11, %eax
	je	.LBB4_3
# BB#1:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB4_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.40, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_3:
	movq	-40(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -48(%rbp)
	leaq	-624(%rbp), %r15
	movq	%r15, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_54
# BB#4:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	testw	$4095, %ax              # imm = 0xFFF
	jle	.LBB4_6
# BB#5:
	movq	-40(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rax), %ecx
	cmpl	font_count(%rip), %ecx
	jbe	.LBB4_7
.LBB4_6:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$56, %esi
	movl	$.L.str.41, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_7:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	testw	$1023, %ax              # imm = 0x3FF
	jne	.LBB4_10
# BB#8:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 44(%rax)
	je	.LBB4_10
# BB#9:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$57, %esi
	movl	$.L.str.42, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_10:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	testb	$63, %al
	jne	.LBB4_12
# BB#11:
	movq	-40(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$37, %edi
	movl	$58, %esi
	movl	$.L.str.43, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB4_12:
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	(%rcx,%rax), %rax
	movq	%rax, -656(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzbl	60(%rax), %eax
	andl	$127, %eax
	movl	%eax, -628(%rbp)
	movl	-628(%rbp), %eax
	movl	$2945, %ecx             # imm = 0xB81
	addq	MapTable(,%rax,8), %rcx
	movq	%rcx, -88(%rbp)
	movl	-628(%rbp), %eax
	movl	$3201, %ecx             # imm = 0xC81
	addq	MapTable(,%rax,8), %rcx
	movq	%rcx, -96(%rbp)
	movl	$0, -632(%rbp)
	movl	$0, -636(%rbp)
	movl	$0, -640(%rbp)
	movl	$4095, %r12d            # imm = 0xFFF
	.align	16, 0x90
.LBB4_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_24 Depth 2
                                        #       Child Loop BB4_26 Depth 3
                                        #       Child Loop BB4_44 Depth 3
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-80(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB4_35
# BB#14:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	jne	.LBB4_23
# BB#15:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rdx
	addq	$32, %rdx
	movl	$12, %edi
	movl	$.L.str.44, %esi
	callq	MakeWord
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rcx
	movb	(%rcx), %cl
	movb	%cl, 64(%rax)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	cmpl	%eax, %ecx
	je	.LBB4_17
# BB#16:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-656(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	(%rdx,%rcx,2), %cx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, (%rdx,%rax,2)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-656(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	2(%rdx,%rcx,2), %cx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, 2(%rdx,%rax,2)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-656(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	4(%rdx,%rcx,2), %cx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, 4(%rdx,%rax,2)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-656(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	6(%rdx,%rcx,2), %cx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, 6(%rdx,%rax,2)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-656(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	8(%rdx,%rcx,2), %cx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, 8(%rdx,%rax,2)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB4_18
	.align	16, 0x90
.LBB4_23:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	leaq	256(%rax,%rcx), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB4_24
	.align	16, 0x90
.LBB4_45:                               #   in Loop: Header=BB4_24 Depth=2
	incq	-64(%rbp)
.LBB4_24:                               #   Parent Loop BB4_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_26 Depth 3
                                        #       Child Loop BB4_44 Depth 3
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	movzbl	-1(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_35
# BB#25:                                #   in Loop: Header=BB4_24 Depth=2
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB4_26
	.align	16, 0x90
.LBB4_32:                               #   in Loop: Header=BB4_26 Depth=3
	incq	-64(%rbp)
	incq	-72(%rbp)
.LBB4_26:                               #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB4_27
# BB#28:                                #   in Loop: Header=BB4_26 Depth=3
	movq	-64(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB4_29
# BB#30:                                #   in Loop: Header=BB4_26 Depth=3
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	jmp	.LBB4_31
	.align	16, 0x90
.LBB4_27:                               #   in Loop: Header=BB4_26 Depth=3
	xorl	%eax, %eax
	jmp	.LBB4_31
.LBB4_29:                               #   in Loop: Header=BB4_26 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB4_31:                               #   in Loop: Header=BB4_26 Depth=3
	testb	%al, %al
	jne	.LBB4_32
# BB#33:                                #   in Loop: Header=BB4_24 Depth=2
	movq	-64(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB4_34
	.align	16, 0x90
.LBB4_44:                               #   Parent Loop BB4_13 Depth=1
                                        #     Parent Loop BB4_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	cmpb	$0, 1(%rax)
	jne	.LBB4_44
	jmp	.LBB4_45
.LBB4_17:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-40(%rbp), %rbx
	addq	$32, %rbx
	movq	-104(%rbp), %rdi
	callq	StringQuotedWord
	movq	%rax, %r14
	movq	-40(%rbp), %rax
	movl	40(%rax), %edi
	andl	%r12d, %edi
	callq	FontFamilyAndFace
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$60, %esi
	movl	$.L.str.45, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	movq	-56(%rbp), %rax
	movb	$32, (%rax)
	movq	-48(%rbp), %rax
	movb	$32, -1(%rax)
.LBB4_18:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_20
# BB#19:                                #   in Loop: Header=BB4_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB4_21
.LBB4_20:                               #   in Loop: Header=BB4_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB4_22
.LBB4_34:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movq	-56(%rbp), %rcx
	movb	%al, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB4_35
.LBB4_21:                               #   in Loop: Header=BB4_13 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB4_22:                               #   in Loop: Header=BB4_13 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB4_35:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	(%rcx,%rax,2), %eax
	cmpl	-636(%rbp), %eax
	jle	.LBB4_37
# BB#36:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	(%rcx,%rax,2), %eax
	movl	%eax, -636(%rbp)
.LBB4_37:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	2(%rcx,%rax,2), %eax
	cmpl	-640(%rbp), %eax
	jge	.LBB4_39
# BB#38:                                #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	2(%rcx,%rax,2), %eax
	movl	%eax, -640(%rbp)
.LBB4_39:                               #   in Loop: Header=BB4_13 Depth=1
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	addl	%eax, -632(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB4_13
# BB#40:
	movq	-56(%rbp), %rax
	movb	$0, (%rax)
	movq	-56(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-656(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	8(%rcx,%rax,2), %eax
	addl	%eax, -632(%rbp)
	movq	%r15, -48(%rbp)
	leaq	-623(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB4_41
	.align	16, 0x90
.LBB4_52:                               #   in Loop: Header=BB4_41 Depth=1
	movl	-644(%rbp), %eax
	addl	%eax, -632(%rbp)
	incq	-48(%rbp)
	incq	-56(%rbp)
.LBB4_41:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_47 Depth 2
	movq	-56(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_53
# BB#42:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-48(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -660(%rbp)
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-88(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -664(%rbp)
	movslq	-660(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	64(%rdx,%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, -668(%rbp)
	je	.LBB4_43
# BB#46:                                #   in Loop: Header=BB4_41 Depth=1
	movq	-40(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movq	%rax, -680(%rbp)
	movl	-668(%rbp), %eax
	movl	%eax, -672(%rbp)
	jmp	.LBB4_47
	.align	16, 0x90
.LBB4_48:                               #   in Loop: Header=BB4_47 Depth=2
	incl	-672(%rbp)
.LBB4_47:                               #   Parent Loop BB4_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-672(%rbp), %rax
	movq	-680(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	-664(%rbp), %eax
	jg	.LBB4_48
# BB#49:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	-672(%rbp), %rax
	movq	-680(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	xorl	%eax, %eax
	cmpl	-664(%rbp), %ecx
	jne	.LBB4_51
# BB#50:                                #   in Loop: Header=BB4_41 Depth=1
	movslq	-672(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	80(%rdx,%rcx), %rsi
	movq	88(%rdx,%rcx), %rcx
	movzbl	(%rsi,%rax), %eax
	movswl	(%rcx,%rax,2), %eax
.LBB4_51:                               #   in Loop: Header=BB4_41 Depth=1
	movl	%eax, -644(%rbp)
	jmp	.LBB4_52
	.align	16, 0x90
.LBB4_43:                               #   in Loop: Header=BB4_41 Depth=1
	movl	$0, -644(%rbp)
	jmp	.LBB4_52
.LBB4_53:
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
	movl	-632(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movl	-636(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 52(%rcx)
	xorl	%eax, %eax
	subl	-640(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 60(%rcx)
	jmp	.LBB4_55
.LBB4_54:
	movq	-40(%rbp), %rax
	movl	$0, 60(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 52(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 56(%rax)
	movq	-40(%rbp), %rax
	movl	$0, 48(%rax)
.LBB4_55:
	addq	$656, %rsp              # imm = 0x290
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FontWordSize, .Lfunc_end4-FontWordSize
	.cfi_endproc

	.globl	FontFamilyAndFace
	.align	16, 0x90
	.type	FontFamilyAndFace,@function
FontFamilyAndFace:                      # @FontFamilyAndFace
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
	pushq	%rbx
	subq	$40, %rsp
.Ltmp31:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	cmpl	font_count(%rip), %edi
	jbe	.LBB5_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movl	-12(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movq	24(%rax), %rax
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_4:                                #   in Loop: Header=BB5_3 Depth=1
	movq	-24(%rbp), %rax
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_4
# BB#5:
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_6 Depth=1
	movq	-32(%rbp), %rax
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_7
# BB#8:
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	leaq	1(%rbx,%rax), %rax
	cmpq	$81, %rax
	jb	.LBB5_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movq	-32(%rbp), %r9
	addq	$64, %r9
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$63, %esi
	movl	$.L.str.52, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB5_10:
	movq	-32(%rbp), %rsi
	addq	$64, %rsi
	movl	$FontFamilyAndFace.buff, %edi
	callq	strcpy
	movl	$FontFamilyAndFace.buff, %edi
	movl	$.L.str.44, %esi
	callq	strcat
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	movl	$FontFamilyAndFace.buff, %edi
	callq	strcat
	movl	$FontFamilyAndFace.buff, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	FontFamilyAndFace, .Lfunc_end5-FontFamilyAndFace
	.cfi_endproc

	.globl	FontSize
	.align	16, 0x90
	.type	FontSize,@function
FontSize:                               # @FontSize
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	font_count(%rip), %eax
	jbe	.LBB6_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.46, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_2:
	cmpl	$0, -4(%rbp)
	jne	.LBB6_4
# BB#3:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	movl	$37, %edi
	movl	$61, %esi
	movl	$.L.str.47, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_4:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movl	48(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	FontSize, .Lfunc_end6-FontSize
	.cfi_endproc

	.globl	FontHalfXHeight
	.align	16, 0x90
	.type	FontHalfXHeight,@function
FontHalfXHeight:                        # @FontHalfXHeight
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	font_count(%rip), %edi
	jbe	.LBB7_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.48, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_2:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movl	52(%rax), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	FontHalfXHeight, .Lfunc_end7-FontHalfXHeight
	.cfi_endproc

	.globl	FontMapping
	.align	16, 0x90
	.type	FontMapping,@function
FontMapping:                            # @FontMapping
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	cmpl	font_count(%rip), %eax
	jbe	.LBB8_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.49, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_2:
	cmpl	$0, -4(%rbp)
	jne	.LBB8_4
# BB#3:
	movq	-16(%rbp), %r8
	movl	$37, %edi
	movl	$62, %esi
	movl	$.L.str.47, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB8_4:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzbl	60(%rax), %eax
	andl	$127, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	FontMapping, .Lfunc_end8-FontMapping
	.cfi_endproc

	.globl	FontName
	.align	16, 0x90
	.type	FontName,@function
FontName:                               # @FontName
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	cmpl	font_count(%rip), %edi
	jbe	.LBB9_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB9_2:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	addq	$64, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	FontName, .Lfunc_end9-FontName
	.cfi_endproc

	.globl	FontFamily
	.align	16, 0x90
	.type	FontFamily,@function
FontFamily:                             # @FontFamily
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	cmpl	font_count(%rip), %edi
	jbe	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB10_2:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movq	24(%rax), %rax
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=1
	movq	-16(%rbp), %rax
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_4
# BB#5:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB10_6
	.align	16, 0x90
.LBB10_7:                               #   in Loop: Header=BB10_6 Depth=1
	movq	-24(%rbp), %rax
.LBB10_6:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB10_7
# BB#8:
	movq	-24(%rbp), %rax
	addq	$64, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	FontFamily, .Lfunc_end10-FontFamily
	.cfi_endproc

	.globl	FontFace
	.align	16, 0x90
	.type	FontFace,@function
FontFace:                               # @FontFace
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp47:
	.cfi_def_cfa_offset 16
.Ltmp48:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp49:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	cmpl	font_count(%rip), %edi
	jbe	.LBB11_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.51, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB11_2:
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_3
	.align	16, 0x90
.LBB11_4:                               #   in Loop: Header=BB11_3 Depth=1
	movq	-16(%rbp), %rax
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_4
# BB#5:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB11_6
	.align	16, 0x90
.LBB11_7:                               #   in Loop: Header=BB11_6 Depth=1
	movq	-24(%rbp), %rax
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB11_7
# BB#8:
	movq	-16(%rbp), %rax
	addq	$64, %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	FontFace, .Lfunc_end11-FontFace
	.cfi_endproc

	.globl	FontPrintAll
	.align	16, 0x90
	.type	FontPrintAll,@function
FontPrintAll:                           # @FontPrintAll
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
.Ltmp51:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp52:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
.Ltmp53:
	.cfi_offset %rbx, -40
.Ltmp54:
	.cfi_offset %r14, -32
.Ltmp55:
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	cmpq	$0, font_root(%rip)
	je	.LBB12_2
# BB#1:
	movq	font_root(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB12_3
.LBB12_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_3:
	movq	font_root(%rip), %rax
	jmp	.LBB12_4
	.align	16, 0x90
.LBB12_39:                              #   in Loop: Header=BB12_4 Depth=1
	movq	-72(%rbp), %rax
.LBB12_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_6 Depth 2
                                        #     Child Loop BB12_12 Depth 2
                                        #       Child Loop BB12_14 Depth 3
                                        #       Child Loop BB12_24 Depth 3
                                        #       Child Loop BB12_30 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB12_40
# BB#5:                                 #   in Loop: Header=BB12_4 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB12_6
	.align	16, 0x90
.LBB12_7:                               #   in Loop: Header=BB12_6 Depth=2
	movq	-40(%rbp), %rax
.LBB12_6:                               #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB12_7
# BB#8:                                 #   in Loop: Header=BB12_4 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB12_11
# BB#9:                                 #   in Loop: Header=BB12_4 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB12_11
# BB#10:                                #   in Loop: Header=BB12_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.54, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_11:                              #   in Loop: Header=BB12_4 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB12_12
	.align	16, 0x90
.LBB12_36:                              #   in Loop: Header=BB12_12 Depth=2
	movq	-32(%rbp), %r14
	movq	-64(%rbp), %r15
	addq	$64, %r15
	movq	-56(%rbp), %rbx
	addq	$64, %rbx
	movq	-48(%rbp), %rax
	movzbl	60(%rax), %edi
	andl	$127, %edi
	callq	MapEncodingName
	movq	%rax, %r8
	movq	-64(%rbp), %r9
	addq	$64, %r9
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	callq	fprintf
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	movq	-64(%rbp), %rcx
	addq	$64, %rcx
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	movq	%rdx, %r8
	callq	fprintf
	movq	-80(%rbp), %rax
.LBB12_12:                              #   Parent Loop BB12_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB12_14 Depth 3
                                        #       Child Loop BB12_24 Depth 3
                                        #       Child Loop BB12_30 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB12_39
# BB#13:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB12_14
	.align	16, 0x90
.LBB12_15:                              #   in Loop: Header=BB12_14 Depth=3
	movq	-48(%rbp), %rax
.LBB12_14:                              #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB12_15
# BB#16:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB12_19
# BB#17:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB12_19
# BB#18:                                #   in Loop: Header=BB12_12 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.55, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_19:                              #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB12_22
# BB#20:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	%rax, 8(%rcx)
	je	.LBB12_22
# BB#21:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rcx
	cmpq	%rax, 8(%rcx)
	jne	.LBB12_23
	.align	16, 0x90
.LBB12_22:                              #   in Loop: Header=BB12_12 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_23:                              #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB12_24
	.align	16, 0x90
.LBB12_25:                              #   in Loop: Header=BB12_24 Depth=3
	movq	-64(%rbp), %rax
.LBB12_24:                              #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB12_25
# BB#26:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB12_29
# BB#27:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB12_29
# BB#28:                                #   in Loop: Header=BB12_12 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.57, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_29:                              #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB12_30
	.align	16, 0x90
.LBB12_31:                              #   in Loop: Header=BB12_30 Depth=3
	movq	-56(%rbp), %rax
.LBB12_30:                              #   Parent Loop BB12_4 Depth=1
                                        #     Parent Loop BB12_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB12_31
# BB#32:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB12_35
# BB#33:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB12_35
# BB#34:                                #   in Loop: Header=BB12_12 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.58, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB12_35:                              #   in Loop: Header=BB12_12 Depth=2
	movq	-48(%rbp), %rax
	testb	$-128, 60(%rax)
	jne	.LBB12_36
# BB#37:                                #   in Loop: Header=BB12_12 Depth=2
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rdx
	addq	$64, %rdx
	movq	-64(%rbp), %rcx
	addq	$64, %rcx
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-80(%rbp), %rax
	jmp	.LBB12_12
.LBB12_40:
	movq	-32(%rbp), %rsi
	movl	$.L.str.62, %edi
	callq	fputs
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	FontPrintAll, .Lfunc_end12-FontPrintAll
	.cfi_endproc

	.globl	FontPrintPageSetup
	.align	16, 0x90
	.type	FontPrintPageSetup,@function
FontPrintPageSetup:                     # @FontPrintPageSetup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp56:
	.cfi_def_cfa_offset 16
.Ltmp57:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp58:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, font_root(%rip)
	je	.LBB13_2
# BB#1:
	movq	font_root(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB13_3
.LBB13_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_3:
	cmpq	$0, font_used(%rip)
	je	.LBB13_5
# BB#4:
	movq	font_used(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB13_6
.LBB13_5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.63, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_6:
	movq	font_used(%rip), %rax
	jmp	.LBB13_7
	.align	16, 0x90
.LBB13_28:                              #   in Loop: Header=BB13_7 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-16(%rbp), %rdi
	movl	font_curr_page(%rip), %esi
	movq	-32(%rbp), %rdx
	addq	$64, %rdx
	movq	-24(%rbp), %rcx
	addq	$64, %rcx
	callq	*64(%rax)
	movq	-40(%rbp), %rax
.LBB13_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_9 Depth 2
                                        #     Child Loop BB13_17 Depth 2
                                        #     Child Loop BB13_23 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	font_used(%rip), %rax
	je	.LBB13_29
# BB#8:                                 #   in Loop: Header=BB13_7 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB13_9
	.align	16, 0x90
.LBB13_10:                              #   in Loop: Header=BB13_9 Depth=2
	movq	-16(%rbp), %rax
.LBB13_9:                               #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB13_10
# BB#11:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB13_14
# BB#12:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB13_14
# BB#13:                                #   in Loop: Header=BB13_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.64, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_14:                              #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB13_16
# BB#15:                                #   in Loop: Header=BB13_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_16:                              #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB13_17
	.align	16, 0x90
.LBB13_18:                              #   in Loop: Header=BB13_17 Depth=2
	movq	-24(%rbp), %rax
.LBB13_17:                              #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB13_18
# BB#19:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB13_22
# BB#20:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB13_22
# BB#21:                                #   in Loop: Header=BB13_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.65, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_22:                              #   in Loop: Header=BB13_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB13_23
	.align	16, 0x90
.LBB13_24:                              #   in Loop: Header=BB13_23 Depth=2
	movq	-32(%rbp), %rax
.LBB13_23:                              #   Parent Loop BB13_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB13_24
# BB#25:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB13_28
# BB#26:                                #   in Loop: Header=BB13_7 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB13_28
# BB#27:                                #   in Loop: Header=BB13_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.66, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB13_28
.LBB13_29:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	FontPrintPageSetup, .Lfunc_end13-FontPrintPageSetup
	.cfi_endproc

	.globl	FontPrintPageResources
	.align	16, 0x90
	.type	FontPrintPageResources,@function
FontPrintPageResources:                 # @FontPrintPageResources
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp61:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, font_root(%rip)
	je	.LBB14_2
# BB#1:
	movq	font_root(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB14_3
.LBB14_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.53, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_3:
	cmpq	$0, font_used(%rip)
	je	.LBB14_5
# BB#4:
	movq	font_used(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB14_6
.LBB14_5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.63, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_6:
	movl	$1, -60(%rbp)
	movq	font_used(%rip), %rax
	jmp	.LBB14_7
	.align	16, 0x90
.LBB14_34:                              #   in Loop: Header=BB14_7 Depth=1
	movq	-32(%rbp), %rax
.LBB14_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_9 Depth 2
                                        #     Child Loop BB14_17 Depth 2
                                        #     Child Loop BB14_23 Depth 2
                                        #       Child Loop BB14_25 Depth 3
                                        #       Child Loop BB14_28 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	font_used(%rip), %rax
	je	.LBB14_35
# BB#8:                                 #   in Loop: Header=BB14_7 Depth=1
	movq	-32(%rbp), %rax
	jmp	.LBB14_9
	.align	16, 0x90
.LBB14_10:                              #   in Loop: Header=BB14_9 Depth=2
	movq	-16(%rbp), %rax
.LBB14_9:                               #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB14_10
# BB#11:                                #   in Loop: Header=BB14_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB14_14
# BB#12:                                #   in Loop: Header=BB14_7 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB14_14
# BB#13:                                #   in Loop: Header=BB14_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.67, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_14:                              #   in Loop: Header=BB14_7 Depth=1
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB14_16
# BB#15:                                #   in Loop: Header=BB14_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.56, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_16:                              #   in Loop: Header=BB14_7 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_17 Depth=2
	movq	-24(%rbp), %rax
.LBB14_17:                              #   Parent Loop BB14_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB14_18
# BB#19:                                #   in Loop: Header=BB14_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB14_22
# BB#20:                                #   in Loop: Header=BB14_7 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB14_22
# BB#21:                                #   in Loop: Header=BB14_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.68, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB14_22:                              #   in Loop: Header=BB14_7 Depth=1
	movq	font_used(%rip), %rax
	jmp	.LBB14_23
	.align	16, 0x90
.LBB14_31:                              #   in Loop: Header=BB14_23 Depth=2
	movq	-56(%rbp), %rax
.LBB14_23:                              #   Parent Loop BB14_7 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB14_25 Depth 3
                                        #       Child Loop BB14_28 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB14_32
# BB#24:                                #   in Loop: Header=BB14_23 Depth=2
	movq	-56(%rbp), %rax
	jmp	.LBB14_25
	.align	16, 0x90
.LBB14_26:                              #   in Loop: Header=BB14_25 Depth=3
	movq	-40(%rbp), %rax
.LBB14_25:                              #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB14_26
# BB#27:                                #   in Loop: Header=BB14_23 Depth=2
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB14_28
	.align	16, 0x90
.LBB14_29:                              #   in Loop: Header=BB14_28 Depth=3
	movq	-48(%rbp), %rax
.LBB14_28:                              #   Parent Loop BB14_7 Depth=1
                                        #     Parent Loop BB14_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB14_29
# BB#30:                                #   in Loop: Header=BB14_23 Depth=2
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB14_31
.LBB14_32:                              #   in Loop: Header=BB14_7 Depth=1
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB14_34
# BB#33:                                #   in Loop: Header=BB14_7 Depth=1
	movq	BackEnd(%rip), %rax
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movl	-60(%rbp), %esi
	callq	*72(%rax)
	movl	$0, -60(%rbp)
	jmp	.LBB14_34
.LBB14_35:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	FontPrintPageResources, .Lfunc_end14-FontPrintPageResources
	.cfi_endproc

	.globl	FontAdvanceCurrentPage
	.align	16, 0x90
	.type	FontAdvanceCurrentPage,@function
FontAdvanceCurrentPage:                 # @FontAdvanceCurrentPage
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp62:
	.cfi_def_cfa_offset 16
.Ltmp63:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp64:
	.cfi_def_cfa_register %rbp
	jmp	.LBB15_1
	.align	16, 0x90
.LBB15_10:                              #   in Loop: Header=BB15_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB15_1:                               # =>This Inner Loop Header: Depth=1
	movq	font_used(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB15_11
# BB#2:                                 #   in Loop: Header=BB15_1 Depth=1
	movq	font_used(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB15_4
# BB#3:                                 #   in Loop: Header=BB15_1 Depth=1
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
.LBB15_4:                               #   in Loop: Header=BB15_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB15_6
# BB#5:                                 #   in Loop: Header=BB15_1 Depth=1
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
.LBB15_6:                               #   in Loop: Header=BB15_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB15_8
# BB#7:                                 #   in Loop: Header=BB15_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB15_9
.LBB15_8:                               #   in Loop: Header=BB15_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB15_10
	.align	16, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB15_10
.LBB15_11:
	incl	font_curr_page(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	FontAdvanceCurrentPage, .Lfunc_end15-FontAdvanceCurrentPage
	.cfi_endproc

	.globl	FontPageUsed
	.align	16, 0x90
	.type	FontPageUsed,@function
FontPageUsed:                           # @FontPageUsed
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp65:
	.cfi_def_cfa_offset 16
.Ltmp66:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp67:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movzwl	42(%rdi), %eax
	cmpl	font_curr_page(%rip), %eax
	jl	.LBB16_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.69, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_2:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB16_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB16_7
.LBB16_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB16_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB16_7
.LBB16_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB16_7:
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
	movq	font_used(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB16_10
# BB#8:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_10
# BB#9:
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
.LBB16_10:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB16_13
# BB#11:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_13
# BB#12:
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
.LBB16_13:
	movw	font_curr_page(%rip), %ax
	movq	-8(%rbp), %rcx
	movw	%ax, 42(%rcx)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	FontPageUsed, .Lfunc_end16-FontPageUsed
	.cfi_endproc

	.globl	FontNeeded
	.align	16, 0x90
	.type	FontNeeded,@function
FontNeeded:                             # @FontNeeded
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp68:
	.cfi_def_cfa_offset 16
.Ltmp69:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp70:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -12(%rbp)
	movq	font_root(%rip), %rax
	jmp	.LBB17_1
	.align	16, 0x90
.LBB17_19:                              #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
.LBB17_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_3 Depth 2
                                        #     Child Loop BB17_6 Depth 2
                                        #       Child Loop BB17_8 Depth 3
                                        #       Child Loop BB17_11 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	font_root(%rip), %rax
	je	.LBB17_20
# BB#2:                                 #   in Loop: Header=BB17_1 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB17_3
	.align	16, 0x90
.LBB17_4:                               #   in Loop: Header=BB17_3 Depth=2
	movq	-40(%rbp), %rax
.LBB17_3:                               #   Parent Loop BB17_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_4
# BB#5:                                 #   in Loop: Header=BB17_1 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB17_6
	.align	16, 0x90
.LBB17_18:                              #   in Loop: Header=BB17_6 Depth=2
	movq	-56(%rbp), %rcx
	addq	$64, %rcx
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, -12(%rbp)
	movq	-32(%rbp), %rax
.LBB17_6:                               #   Parent Loop BB17_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_8 Depth 3
                                        #       Child Loop BB17_11 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB17_19
# BB#7:                                 #   in Loop: Header=BB17_6 Depth=2
	movq	-32(%rbp), %rax
	jmp	.LBB17_8
	.align	16, 0x90
.LBB17_9:                               #   in Loop: Header=BB17_8 Depth=3
	movq	-48(%rbp), %rax
.LBB17_8:                               #   Parent Loop BB17_1 Depth=1
                                        #     Parent Loop BB17_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_9
# BB#10:                                #   in Loop: Header=BB17_6 Depth=2
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB17_11
	.align	16, 0x90
.LBB17_12:                              #   in Loop: Header=BB17_11 Depth=3
	movq	-56(%rbp), %rax
.LBB17_11:                              #   Parent Loop BB17_1 Depth=1
                                        #     Parent Loop BB17_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_12
# BB#13:                                #   in Loop: Header=BB17_6 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB17_16
# BB#14:                                #   in Loop: Header=BB17_6 Depth=2
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB17_16
# BB#15:                                #   in Loop: Header=BB17_6 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.10, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.68, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB17_16:                              #   in Loop: Header=BB17_6 Depth=2
	movq	-8(%rbp), %rdi
	cmpl	$0, -12(%rbp)
	movl	$.L.str.71, %edx
	jne	.LBB17_18
# BB#17:                                # %select.mid
                                        #   in Loop: Header=BB17_6 Depth=2
	movl	$.L.str.72, %edx
	jmp	.LBB17_18
.LBB17_20:
	movl	-12(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	FontNeeded, .Lfunc_end17-FontNeeded
	.cfi_endproc

	.align	16, 0x90
	.type	ReadCharMetrics,@function
ReadCharMetrics:                        # @ReadCharMetrics
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp71:
	.cfi_def_cfa_offset 16
.Ltmp72:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp73:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1176, %rsp             # imm = 0x498
.Ltmp74:
	.cfi_offset %rbx, -56
.Ltmp75:
	.cfi_offset %r12, -48
.Ltmp76:
	.cfi_offset %r13, -40
.Ltmp77:
	.cfi_offset %r14, -32
.Ltmp78:
	.cfi_offset %r15, -24
	movq	32(%rbp), %r10
	movq	24(%rbp), %rbx
	movq	16(%rbp), %rax
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movw	%r9w, -74(%rbp)
	movq	%rax, -88(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%r10, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB18_1
	.align	16, 0x90
.LBB18_67:                              #   in Loop: Header=BB18_1 Depth=1
	movq	-1200(%rbp), %rax
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -1200(%rbp)
	movq	-1200(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB18_67
# BB#2:
	leaq	-624(%rbp), %r12
	leaq	-1136(%rbp), %r14
	leaq	-1168(%rbp), %r15
	jmp	.LBB18_3
	.align	16, 0x90
.LBB18_64:                              #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, 8(%rdx,%rcx,2)
.LBB18_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_10 Depth 2
                                        #     Child Loop BB18_12 Depth 2
                                        #       Child Loop BB18_25 Depth 3
                                        #       Child Loop BB18_26 Depth 3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_40 Depth 4
                                        #       Child Loop BB18_43 Depth 3
                                        #       Child Loop BB18_49 Depth 3
	movq	-104(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r12, %rdi
	callq	fgets
	testq	%rax, %rax
	je	.LBB18_4
# BB#5:                                 #   in Loop: Header=BB18_3 Depth=1
	movl	$.L.str.131, %esi
	movq	%r12, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB18_7
# BB#6:                                 #   in Loop: Header=BB18_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB18_8
	.align	16, 0x90
.LBB18_4:                               #   in Loop: Header=BB18_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB18_8
	.align	16, 0x90
.LBB18_7:                               #   in Loop: Header=BB18_3 Depth=1
	movl	$.L.str.132, %esi
	movq	%r12, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	sete	%al
.LBB18_8:                               #   in Loop: Header=BB18_3 Depth=1
	testb	%al, %al
	je	.LBB18_66
# BB#9:                                 #   in Loop: Header=BB18_3 Depth=1
	movq	-96(%rbp), %rax
	incl	(%rax)
	movb	$0, -1137(%rbp)
	movl	$0, -1192(%rbp)
	movl	$0, -1188(%rbp)
	movl	$0, -1144(%rbp)
	jmp	.LBB18_10
	.align	16, 0x90
.LBB18_11:                              #   in Loop: Header=BB18_10 Depth=2
	incl	-1144(%rbp)
.LBB18_10:                              #   Parent Loop BB18_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB18_11
	jmp	.LBB18_12
	.align	16, 0x90
.LBB18_13:                              #   in Loop: Header=BB18_12 Depth=2
	movslq	-1144(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movl	$.L.str.133, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB18_14
# BB#15:                                #   in Loop: Header=BB18_12 Depth=2
	movl	$.L.str.135, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB18_16
# BB#17:                                #   in Loop: Header=BB18_12 Depth=2
	movl	$.L.str.137, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB18_18
# BB#19:                                #   in Loop: Header=BB18_12 Depth=2
	movl	$.L.str.139, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB18_43
# BB#20:                                #   in Loop: Header=BB18_12 Depth=2
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	je	.LBB18_43
# BB#21:                                #   in Loop: Header=BB18_12 Depth=2
	cmpb	$0, -1137(%rbp)
	je	.LBB18_43
# BB#22:                                #   in Loop: Header=BB18_12 Depth=2
	movzbl	-1137(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	jne	.LBB18_24
# BB#23:                                #   in Loop: Header=BB18_12 Depth=2
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	$-256, %ecx
	addl	%ecx, %eax
	movzbl	-1137(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movb	%al, (%rdx,%rcx)
.LBB18_24:                              #   in Loop: Header=BB18_12 Depth=2
	movb	-1137(%rbp), %al
	movq	-72(%rbp), %rcx
	movslq	(%rcx), %rdx
	leal	1(%rdx), %esi
	movl	%esi, (%rcx)
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx,%rdx)
	.align	16, 0x90
.LBB18_25:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	-1144(%rbp)
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB18_25
	jmp	.LBB18_26
	.align	16, 0x90
.LBB18_30:                              #   in Loop: Header=BB18_26 Depth=3
	movslq	-1144(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.92, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movq	-48(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movq	%r14, %rdi
	callq	MapCharEncoding
	movb	%al, -1138(%rbp)
	testb	%al, %al
	je	.LBB18_32
# BB#31:                                #   in Loop: Header=BB18_26 Depth=3
	movb	-1138(%rbp), %al
	movq	-72(%rbp), %rcx
	movslq	(%rcx), %rdx
	leal	1(%rdx), %esi
	movl	%esi, (%rcx)
	movq	-64(%rbp), %rcx
	movb	%al, (%rcx,%rdx)
	jmp	.LBB18_33
	.align	16, 0x90
.LBB18_32:                              #   in Loop: Header=BB18_26 Depth=3
	movq	-1200(%rbp), %r13
	addq	$32, %r13
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	-96(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$37, %edi
	movl	$1, %esi
	movl	$.L.str.140, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r13, %r8
	movq	%r14, %r9
	callq	Error
	movzbl	-1137(%rbp), %eax
	movq	-64(%rbp), %rcx
	movb	$1, (%rcx,%rax)
.LBB18_33:                              #   in Loop: Header=BB18_26 Depth=3
	movq	-72(%rbp), %rax
	cmpl	$508, (%rax)            # imm = 0x1FC
	jl	.LBB18_35
# BB#34:                                #   in Loop: Header=BB18_26 Depth=3
	movq	-1200(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$2, %esi
	movl	$.L.str.141, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB18_35
	.align	16, 0x90
.LBB18_39:                              #   in Loop: Header=BB18_35 Depth=4
	incl	-1144(%rbp)
.LBB18_35:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        #       Parent Loop BB18_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB18_36
# BB#37:                                #   in Loop: Header=BB18_35 Depth=4
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	setne	%al
	jmp	.LBB18_38
	.align	16, 0x90
.LBB18_36:                              #   in Loop: Header=BB18_35 Depth=4
	xorl	%eax, %eax
.LBB18_38:                              #   in Loop: Header=BB18_35 Depth=4
	testb	%al, %al
	jne	.LBB18_39
	jmp	.LBB18_40
	.align	16, 0x90
.LBB18_41:                              #   in Loop: Header=BB18_40 Depth=4
	incl	-1144(%rbp)
.LBB18_40:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        #       Parent Loop BB18_26 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB18_41
.LBB18_26:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_40 Depth 4
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB18_27
# BB#28:                                #   in Loop: Header=BB18_26 Depth=3
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$10, %eax
	setne	%al
	jmp	.LBB18_29
	.align	16, 0x90
.LBB18_27:                              #   in Loop: Header=BB18_26 Depth=3
	xorl	%eax, %eax
.LBB18_29:                              #   in Loop: Header=BB18_26 Depth=3
	testb	%al, %al
	jne	.LBB18_30
# BB#42:                                #   in Loop: Header=BB18_12 Depth=2
	movq	-72(%rbp), %rax
	movslq	(%rax), %rcx
	leal	1(%rcx), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, (%rax,%rcx)
	jmp	.LBB18_43
	.align	16, 0x90
.LBB18_14:                              #   in Loop: Header=BB18_12 Depth=2
	movslq	-1144(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.134, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	callq	__isoc99_sscanf
	movq	-48(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movq	%r14, %rdi
	callq	MapCharEncoding
	movb	%al, -1137(%rbp)
	jmp	.LBB18_43
	.align	16, 0x90
.LBB18_16:                              #   in Loop: Header=BB18_12 Depth=2
	movslq	-1144(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.136, %esi
	xorl	%eax, %eax
	movq	%r15, %rdx
	callq	__isoc99_sscanf
	cvttss2si	-1168(%rbp), %eax
	movl	%eax, -1148(%rbp)
	movl	$1, -1188(%rbp)
	jmp	.LBB18_43
.LBB18_18:                              #   in Loop: Header=BB18_12 Depth=2
	movslq	-1144(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	leaq	-1172(%rbp), %rdx
	leaq	-1176(%rbp), %rcx
	leaq	-1180(%rbp), %r8
	leaq	-1184(%rbp), %r9
	callq	__isoc99_sscanf
	cvttss2si	-1172(%rbp), %eax
	movl	%eax, -1152(%rbp)
	cvttss2si	-1176(%rbp), %eax
	movl	%eax, -1156(%rbp)
	cvttss2si	-1180(%rbp), %eax
	movl	%eax, -1160(%rbp)
	cvttss2si	-1184(%rbp), %eax
	movl	%eax, -1164(%rbp)
	movl	$1, -1192(%rbp)
	jmp	.LBB18_43
	.align	16, 0x90
.LBB18_47:                              #   in Loop: Header=BB18_43 Depth=3
	incl	-1144(%rbp)
.LBB18_43:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB18_44
# BB#45:                                #   in Loop: Header=BB18_43 Depth=3
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$10, %eax
	setne	%al
	jmp	.LBB18_46
	.align	16, 0x90
.LBB18_44:                              #   in Loop: Header=BB18_43 Depth=3
	xorl	%eax, %eax
.LBB18_46:                              #   in Loop: Header=BB18_43 Depth=3
	testb	%al, %al
	jne	.LBB18_47
# BB#48:                                #   in Loop: Header=BB18_12 Depth=2
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	jne	.LBB18_12
	.align	16, 0x90
.LBB18_49:                              #   Parent Loop BB18_3 Depth=1
                                        #     Parent Loop BB18_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	incl	-1144(%rbp)
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$32, %eax
	je	.LBB18_49
.LBB18_12:                              #   Parent Loop BB18_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_25 Depth 3
                                        #       Child Loop BB18_26 Depth 3
                                        #         Child Loop BB18_35 Depth 4
                                        #         Child Loop BB18_40 Depth 4
                                        #       Child Loop BB18_43 Depth 3
                                        #       Child Loop BB18_49 Depth 3
	movslq	-1144(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$10, %eax
	jne	.LBB18_13
# BB#50:                                #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %eax
	testl	%eax, %eax
	jle	.LBB18_3
# BB#51:                                #   in Loop: Header=BB18_3 Depth=1
	cmpl	$0, -1188(%rbp)
	jne	.LBB18_53
# BB#52:                                #   in Loop: Header=BB18_3 Depth=1
	movq	-1200(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$3, %esi
	movl	$.L.str.142, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB18_53:                              #   in Loop: Header=BB18_3 Depth=1
	cmpl	$0, -1192(%rbp)
	jne	.LBB18_55
# BB#54:                                #   in Loop: Header=BB18_3 Depth=1
	movq	-1200(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-96(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$4, %esi
	movl	$.L.str.143, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB18_55:                              #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	jne	.LBB18_57
# BB#56:                                #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %eax
	movq	-64(%rbp), %rcx
	movb	$0, (%rcx,%rax)
	jmp	.LBB18_59
	.align	16, 0x90
.LBB18_57:                              #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$2, %eax
	jl	.LBB18_59
# BB#58:                                #   in Loop: Header=BB18_3 Depth=1
	movq	-72(%rbp), %rax
	movslq	(%rax), %rcx
	leal	1(%rcx), %edx
	movl	%edx, (%rax)
	movq	-64(%rbp), %rax
	movb	$0, (%rax,%rcx)
.LBB18_59:                              #   in Loop: Header=BB18_3 Depth=1
	movq	BackEnd(%rip), %rax
	cmpl	$0, 40(%rax)
	je	.LBB18_65
# BB#60:                                #   in Loop: Header=BB18_3 Depth=1
	movw	-1152(%rbp), %ax
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, 4(%rdx,%rcx,2)
	movl	-1156(%rbp), %eax
	subl	-56(%rbp), %eax
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, 2(%rdx,%rcx,2)
	movw	-1148(%rbp), %ax
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, 6(%rdx,%rcx,2)
	movl	-1164(%rbp), %eax
	subl	-56(%rbp), %eax
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, (%rdx,%rcx,2)
	xorl	%eax, %eax
	cmpl	$0, -1160(%rbp)
	je	.LBB18_64
# BB#61:                                #   in Loop: Header=BB18_3 Depth=1
	cmpl	$0, -1148(%rbp)
	je	.LBB18_64
# BB#62:                                #   in Loop: Header=BB18_3 Depth=1
	cmpl	$0, -52(%rbp)
	jne	.LBB18_64
# BB#63:                                #   in Loop: Header=BB18_3 Depth=1
	movl	-1160(%rbp), %eax
	subl	-1148(%rbp), %eax
	jmp	.LBB18_64
.LBB18_65:                              #   in Loop: Header=BB18_3 Depth=1
	movzbl	-1137(%rbp), %eax
	movq	-88(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movw	$0, 4(%rcx,%rax,2)
	movl	PlainCharHeight(%rip), %eax
	movl	%eax, %ecx
	negl	%ecx
	shrl	$31, %ecx
	subl	%eax, %ecx
	shrl	%ecx
	movzbl	-1137(%rbp), %eax
	movq	-88(%rbp), %rdx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, 2(%rdx,%rax,2)
	movw	PlainCharWidth(%rip), %ax
	movzbl	-1137(%rbp), %ecx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, 6(%rdx,%rcx,2)
	movl	PlainCharHeight(%rip), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	addl	%eax, %ecx
	shrl	%ecx
	movzbl	-1137(%rbp), %eax
	movq	-88(%rbp), %rdx
	leaq	(%rax,%rax,4), %rax
	movw	%cx, (%rdx,%rax,2)
	movzbl	-1137(%rbp), %eax
	movq	-88(%rbp), %rcx
	leaq	(%rax,%rax,4), %rax
	movw	$0, 8(%rcx,%rax,2)
	jmp	.LBB18_3
.LBB18_66:
	addq	$1176, %rsp             # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end18:
	.size	ReadCharMetrics, .Lfunc_end18-ReadCharMetrics
	.cfi_endproc

	.align	16, 0x90
	.type	ReadCompositeMetrics,@function
ReadCompositeMetrics:                   # @ReadCompositeMetrics
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp79:
	.cfi_def_cfa_offset 16
.Ltmp80:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp81:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$840, %rsp              # imm = 0x348
.Ltmp82:
	.cfi_offset %rbx, -56
.Ltmp83:
	.cfi_offset %r12, -48
.Ltmp84:
	.cfi_offset %r13, -40
.Ltmp85:
	.cfi_offset %r14, -32
.Ltmp86:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %rbx
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movw	%dx, -58(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%r8, -80(%rbp)
	movq	%r9, -88(%rbp)
	movq	%rbx, -96(%rbp)
	movq	%rax, -104(%rbp)
	leaq	-624(%rbp), %r14
	leaq	-848(%rbp), %r12
	leaq	-856(%rbp), %r13
	leaq	-860(%rbp), %r15
	jmp	.LBB19_1
	.align	16, 0x90
.LBB19_37:                              #   in Loop: Header=BB19_1 Depth=1
	movq	-96(%rbp), %rax
	movslq	(%rax), %rax
	movq	-88(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	movb	$0, (%rcx,%rax,2)
	movq	-96(%rbp), %rax
	incl	(%rax)
.LBB19_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_8 Depth 2
                                        #     Child Loop BB19_20 Depth 2
                                        #       Child Loop BB19_23 Depth 3
	movq	-104(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r14, %rdi
	callq	fgets
	movq	%rax, -112(%rbp)
	testq	%rax, %rax
	je	.LBB19_2
# BB#3:                                 #   in Loop: Header=BB19_1 Depth=1
	movl	$.L.str.144, %esi
	movq	%r14, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	setne	%al
	jmp	.LBB19_4
	.align	16, 0x90
.LBB19_2:                               #   in Loop: Header=BB19_1 Depth=1
	xorl	%eax, %eax
.LBB19_4:                               #   in Loop: Header=BB19_1 Depth=1
	testb	%al, %al
	je	.LBB19_38
# BB#5:                                 #   in Loop: Header=BB19_1 Depth=1
	movq	-72(%rbp), %rax
	incl	(%rax)
	movl	$.L.str.145, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r14, %rbx
	leaq	-736(%rbp), %rdx
	leaq	-852(%rbp), %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	je	.LBB19_7
# BB#6:                                 #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %r14
	addq	$32, %r14
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$5, %esi
	movl	$.L.str.146, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	callq	Error
.LBB19_7:                               #   in Loop: Header=BB19_1 Depth=1
	movl	$0, -864(%rbp)
	jmp	.LBB19_8
	.align	16, 0x90
.LBB19_14:                              #   in Loop: Header=BB19_8 Depth=2
	incl	-864(%rbp)
.LBB19_8:                               #   Parent Loop BB19_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB19_9
# BB#10:                                #   in Loop: Header=BB19_8 Depth=2
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB19_11
# BB#12:                                #   in Loop: Header=BB19_8 Depth=2
	movslq	-864(%rbp), %rax
	cmpb	$0, -624(%rbp,%rax)
	setne	%al
	jmp	.LBB19_13
	.align	16, 0x90
.LBB19_9:                               #   in Loop: Header=BB19_8 Depth=2
	xorl	%eax, %eax
	jmp	.LBB19_13
	.align	16, 0x90
.LBB19_11:                              #   in Loop: Header=BB19_8 Depth=2
	xorl	%eax, %eax
.LBB19_13:                              #   in Loop: Header=BB19_8 Depth=2
	testb	%al, %al
	jne	.LBB19_14
# BB#15:                                #   in Loop: Header=BB19_1 Depth=1
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB19_17
# BB#16:                                #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %r14
	addq	$32, %r14
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$5, %esi
	movl	$.L.str.146, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	callq	Error
.LBB19_17:                              #   in Loop: Header=BB19_1 Depth=1
	incl	-864(%rbp)
	movq	-48(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	leaq	-736(%rbp), %rdi
	callq	MapCharEncoding
	movb	%al, -869(%rbp)
	testb	%al, %al
	movq	%rbx, %r14
	jne	.LBB19_19
# BB#18:                                #   in Loop: Header=BB19_1 Depth=1
	movq	%r14, %rbx
	movq	-56(%rbp), %r14
	addq	$32, %r14
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$6, %esi
	movl	$.L.str.147, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r14
	callq	Error
.LBB19_19:                              #   in Loop: Header=BB19_1 Depth=1
	movq	-96(%rbp), %rax
	movw	(%rax), %ax
	movzbl	-869(%rbp), %ecx
	movq	-80(%rbp), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movl	$0, -868(%rbp)
	jmp	.LBB19_20
	.align	16, 0x90
.LBB19_34:                              #   in Loop: Header=BB19_20 Depth=2
	movq	-48(%rbp), %rax
	movzbl	60(%rax), %esi
	andl	$127, %esi
	movq	%r12, %rdi
	callq	MapCharEncoding
	movb	%al, -870(%rbp)
	movq	-96(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movb	%al, (%rdx,%rcx,2)
	movw	-856(%rbp), %ax
	movq	-96(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movw	%ax, 2(%rdx,%rcx,2)
	movw	-860(%rbp), %ax
	movq	-96(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	-88(%rbp), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	movw	%ax, 4(%rdx,%rcx,2)
	movq	-96(%rbp), %rax
	incl	(%rax)
	incl	-868(%rbp)
.LBB19_20:                              #   Parent Loop BB19_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB19_23 Depth 3
	movl	-868(%rbp), %eax
	cmpl	-852(%rbp), %eax
	jge	.LBB19_35
# BB#21:                                #   in Loop: Header=BB19_20 Depth=2
	movslq	-864(%rbp), %rax
	leaq	-624(%rbp,%rax), %rdi
	movl	$.L.str.148, %esi
	xorl	%eax, %eax
	movq	%r12, %rdx
	movq	%r13, %rcx
	movq	%r15, %r8
	callq	__isoc99_sscanf
	cmpl	$3, %eax
	je	.LBB19_23
# BB#22:                                #   in Loop: Header=BB19_20 Depth=2
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$5, %esi
	movl	$.L.str.146, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB19_23
	.align	16, 0x90
.LBB19_29:                              #   in Loop: Header=BB19_23 Depth=3
	incl	-864(%rbp)
.LBB19_23:                              #   Parent Loop BB19_1 Depth=1
                                        #     Parent Loop BB19_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB19_24
# BB#25:                                #   in Loop: Header=BB19_23 Depth=3
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB19_26
# BB#27:                                #   in Loop: Header=BB19_23 Depth=3
	movslq	-864(%rbp), %rax
	cmpb	$0, -624(%rbp,%rax)
	setne	%al
	jmp	.LBB19_28
	.align	16, 0x90
.LBB19_24:                              #   in Loop: Header=BB19_23 Depth=3
	xorl	%eax, %eax
	jmp	.LBB19_28
	.align	16, 0x90
.LBB19_26:                              #   in Loop: Header=BB19_23 Depth=3
	xorl	%eax, %eax
.LBB19_28:                              #   in Loop: Header=BB19_23 Depth=3
	testb	%al, %al
	jne	.LBB19_29
# BB#30:                                #   in Loop: Header=BB19_20 Depth=2
	movslq	-864(%rbp), %rax
	movzbl	-624(%rbp,%rax), %eax
	cmpl	$59, %eax
	je	.LBB19_32
# BB#31:                                #   in Loop: Header=BB19_20 Depth=2
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$5, %esi
	movl	$.L.str.146, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB19_32:                              #   in Loop: Header=BB19_20 Depth=2
	incl	-864(%rbp)
	movq	-96(%rbp), %rax
	cmpl	$256, (%rax)            # imm = 0x100
	jl	.LBB19_34
# BB#33:                                #   in Loop: Header=BB19_20 Depth=2
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$7, %esi
	movl	$.L.str.149, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB19_34
	.align	16, 0x90
.LBB19_35:                              #   in Loop: Header=BB19_1 Depth=1
	movq	-96(%rbp), %rax
	cmpl	$256, (%rax)            # imm = 0x100
	jl	.LBB19_37
# BB#36:                                #   in Loop: Header=BB19_1 Depth=1
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$8, %esi
	movl	$.L.str.149, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB19_37
.LBB19_38:
	cmpq	$0, -112(%rbp)
	je	.LBB19_40
# BB#39:
	leaq	-624(%rbp), %rdi
	movl	$.L.str.150, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	jne	.LBB19_41
.LBB19_40:
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movzwl	-58(%rbp), %edi
	callq	FileName
	movq	%rax, %r9
	movq	-72(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, (%rsp)
	movl	$37, %edi
	movl	$9, %esi
	movl	$.L.str.151, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB19_41:
	addq	$840, %rsp              # imm = 0x348
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	ReadCompositeMetrics, .Lfunc_end19-ReadCompositeMetrics
	.cfi_endproc

	.type	font_curr_page,@object  # @font_curr_page
	.comm	font_curr_page,4,4
	.type	font_count,@object      # @font_count
	.local	font_count
	.comm	font_count,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	font_root,@object       # @font_root
	.local	font_root
	.comm	font_root,8,8
	.type	font_used,@object       # @font_used
	.local	font_used
	.comm	font_used,8,8
	.type	font_seqnum,@object     # @font_seqnum
	.local	font_seqnum
	.comm	font_seqnum,4,4
	.type	finfo,@object           # @finfo
	.comm	finfo,8,8
	.type	finfo_size,@object      # @finfo_size
	.local	finfo_size
	.comm	finfo_size,4,4
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"@FontDef"
	.size	.L.str.1, 9

	.type	FontDefSym,@object      # @FontDefSym
	.local	FontDefSym
	.comm	FontDefSym,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"@Tag"
	.size	.L.str.2, 5

	.type	fd_tag,@object          # @fd_tag
	.local	fd_tag
	.comm	fd_tag,8,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"@Family"
	.size	.L.str.3, 8

	.type	fd_family,@object       # @fd_family
	.local	fd_family
	.comm	fd_family,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@Face"
	.size	.L.str.4, 6

	.type	fd_face,@object         # @fd_face
	.local	fd_face
	.comm	fd_face,8,8
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"@Name"
	.size	.L.str.5, 6

	.type	fd_name,@object         # @fd_name
	.local	fd_name
	.comm	fd_name,8,8
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"@Metrics"
	.size	.L.str.6, 9

	.type	fd_metrics,@object      # @fd_metrics
	.local	fd_metrics
	.comm	fd_metrics,8,8
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"@ExtraMetrics"
	.size	.L.str.7, 14

	.type	fd_extra_metrics,@object # @fd_extra_metrics
	.local	fd_extra_metrics
	.comm	fd_extra_metrics,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"@Mapping"
	.size	.L.str.8, 9

	.type	fd_mapping,@object      # @fd_mapping
	.local	fd_mapping
	.comm	fd_mapping,8,8
	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"@Recode"
	.size	.L.str.9, 8

	.type	fd_recode,@object       # @fd_recode
	.local	fd_recode
	.comm	fd_recode,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"assert failed in %s"
	.size	.L.str.10, 20

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FontChange: font_count!"
	.size	.L.str.11, 24

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"smallcaps"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"nosmallcaps"
	.size	.L.str.13, 12

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.zero	1
	.size	.L.str.14, 1

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"error in left parameter of %s"
	.size	.L.str.15, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"@Font"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"FontChange: num!"
	.size	.L.str.17, 17

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"initial font must have family, face and size"
	.size	.L.str.18, 45

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FontChange: Up(finfo[font(*style)].font_table) !"
	.size	.L.str.19, 49

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FontChange: type(tmpf)!"
	.size	.L.str.20, 24

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FontChange: Up(tmpf)!"
	.size	.L.str.21, 22

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FontChange: type(family)!"
	.size	.L.str.22, 26

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FontChange: type(face)!"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FontChange: Up(face)!"
	.size	.L.str.24, 22

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FontChange fr!"
	.size	.L.str.25, 15

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"FontChange requested_face!"
	.size	.L.str.26, 27

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"font family name %s must be followed by a face name"
	.size	.L.str.27, 52

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"there is no font with family name %s and face name %s"
	.size	.L.str.28, 54

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"FontChange: no children!"
	.size	.L.str.29, 25

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"FontChange: 1 child!"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"FontChange: 2 children!"
	.size	.L.str.31, 24

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"syntax error in font size %s; ignoring it"
	.size	.L.str.32, 42

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"no current font on which to base size change %s"
	.size	.L.str.33, 48

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"FontChange: %d"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%s %s ignored (result is not positive)"
	.size	.L.str.35, 39

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"too many different fonts and sizes (max is %d)"
	.size	.L.str.36, 47

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"run out of memory when increasing font table size"
	.size	.L.str.37, 50

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"FontChange: old!"
	.size	.L.str.38, 17

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"run out of memory when changing font or font size"
	.size	.L.str.39, 50

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"FontWordSize: !is_word(type(x))!"
	.size	.L.str.40, 33

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"no current font at word %s"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"no current colour at word %s"
	.size	.L.str.42, 29

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"no current language at word %s"
	.size	.L.str.43, 31

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" "
	.size	.L.str.44, 2

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"character %s replaced by space (it has no glyph in font %s)"
	.size	.L.str.45, 60

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"FontSize!"
	.size	.L.str.46, 10

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"no current font at this point"
	.size	.L.str.47, 30

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"FontHalfXHeight!"
	.size	.L.str.48, 17

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"FontMapping!"
	.size	.L.str.49, 13

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"FontName!"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"FontFamiliy!"
	.size	.L.str.51, 13

	.type	FontFamilyAndFace.buff,@object # @FontFamilyAndFace.buff
	.local	FontFamilyAndFace.buff
	.comm	FontFamilyAndFace.buff,80,16
	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"family and face names %s %s are too long"
	.size	.L.str.52, 41

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"FontDebug: font_root!"
	.size	.L.str.53, 22

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"FontPrintAll: family!"
	.size	.L.str.54, 22

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"FontPrintAll: face!"
	.size	.L.str.55, 20

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"FontDebug: Down(face)!"
	.size	.L.str.56, 23

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"FontPrintAll: ps_name!"
	.size	.L.str.57, 23

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"FontPrintAll: first_size!"
	.size	.L.str.58, 26

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/%s%s %s /%s LoutRecode\n"
	.size	.L.str.59, 25

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/%s { /%s%s LoutFont } def\n"
	.size	.L.str.60, 28

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"/%s { /%s LoutFont } def\n"
	.size	.L.str.61, 26

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"\n"
	.size	.L.str.62, 2

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"FontDebug: font_used!"
	.size	.L.str.63, 22

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"FontPrintPageSetup: face!"
	.size	.L.str.64, 26

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"FontPrintPageSetup: first_size!"
	.size	.L.str.65, 32

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"FontPrintPageSetup: ps_name!"
	.size	.L.str.66, 29

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"FontPrintPageResources: face!"
	.size	.L.str.67, 30

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"FontPrintPageResources: ps_name!"
	.size	.L.str.68, 33

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"FontPageUsed!"
	.size	.L.str.69, 14

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%s font %s\n"
	.size	.L.str.70, 12

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%%DocumentNeededResources:"
	.size	.L.str.71, 27

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"%%+"
	.size	.L.str.72, 4

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"unable to set font %s %s (no font databases loaded)"
	.size	.L.str.73, 52

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%s-%s"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"cannot read %s for %s"
	.size	.L.str.75, 22

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"FontRead: type(y) != PAR!"
	.size	.L.str.76, 26

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"font family name %s incompatible with %s value %s"
	.size	.L.str.77, 50

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"font face name %s incompatible with %s value %s"
	.size	.L.str.78, 48

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"illegal font name (quotes needed?)"
	.size	.L.str.79, 35

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"illegal font metrics file name (quotes needed?)"
	.size	.L.str.80, 48

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"illegal font extra metrics file name (quotes needed?)"
	.size	.L.str.81, 54

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"illegal mapping file name (quotes needed?)"
	.size	.L.str.82, 43

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"illegal value of %s"
	.size	.L.str.83, 20

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"FontRead: cannot identify component of FontDef"
	.size	.L.str.84, 47

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"font %s %s already defined, at%s"
	.size	.L.str.85, 33

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"No"
	.size	.L.str.86, 3

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"Yes"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"expecting either Yes or No here"
	.size	.L.str.88, 32

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"too many different fonts and sizes (maximum is %d)"
	.size	.L.str.89, 51

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"fnt"
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"cannot open font file %s"
	.size	.L.str.91, 25

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"%s"
	.size	.L.str.92, 3

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"StartFontMetrics"
	.size	.L.str.93, 17

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"font file %s does not begin with StartFontMetrics"
	.size	.L.str.94, 50

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"run out of memory while reading font file %s"
	.size	.L.str.95, 45

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"EndFontMetrics\n"
	.size	.L.str.96, 16

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"UnderlinePosition"
	.size	.L.str.97, 18

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"UnderlinePosition found twice in font file (line %d)"
	.size	.L.str.98, 53

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"UnderlinePosition %f"
	.size	.L.str.99, 21

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"UnderlineThickness"
	.size	.L.str.100, 19

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"UnderlineThickness found twice in font file (line %d)"
	.size	.L.str.101, 54

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"UnderlineThickness %f"
	.size	.L.str.102, 22

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"XHeight"
	.size	.L.str.103, 8

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"XHeight found twice in font file (line %d)"
	.size	.L.str.104, 43

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"XHeight %f"
	.size	.L.str.105, 11

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"FontName"
	.size	.L.str.106, 9

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"FontName found twice in font file %s (line %d)"
	.size	.L.str.107, 47

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"FontName %s"
	.size	.L.str.108, 12

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"FontName empty in font file %s (line %d)"
	.size	.L.str.109, 41

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"FontName in font file (%s) and %s (%s) disagree"
	.size	.L.str.110, 48

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"IsFixedPitch"
	.size	.L.str.111, 13

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"IsFixedPitch %s"
	.size	.L.str.112, 16

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"true"
	.size	.L.str.113, 5

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"StartCharMetrics"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"FontName missing in file %s"
	.size	.L.str.115, 28

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"StartKernPairs"
	.size	.L.str.116, 15

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"StartKernPairs %d"
	.size	.L.str.117, 18

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"syntax error on StartKernPairs line in font file %s (line %d)"
	.size	.L.str.118, 62

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"EndKernPairs"
	.size	.L.str.119, 13

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"KPX"
	.size	.L.str.120, 4

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"KPX %s %s %f"
	.size	.L.str.121, 13

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"syntax error in font file %s (line %d): %s"
	.size	.L.str.122, 43

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"non-contiguous kerning pair %s %s in font file %s (line %d)"
	.size	.L.str.123, 60

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"too many kerning pairs in font file %s (line %d)"
	.size	.L.str.124, 49

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"kerning pair %s %s appears twice in font file %s (line %d)"
	.size	.L.str.125, 59

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"EndFontMetrics missing from font file %s"
	.size	.L.str.126, 41

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"space"
	.size	.L.str.127, 6

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"cannot open extra font file %s"
	.size	.L.str.128, 31

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"StartExtraCharMetrics"
	.size	.L.str.129, 22

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"StartBuildComposites"
	.size	.L.str.130, 21

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"EndCharMetrics"
	.size	.L.str.131, 15

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"EndExtraCharMetrics"
	.size	.L.str.132, 20

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"N"
	.size	.L.str.133, 2

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"N %s"
	.size	.L.str.134, 5

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"WX"
	.size	.L.str.135, 3

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"WX %f"
	.size	.L.str.136, 6

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"B"
	.size	.L.str.137, 2

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"B %f %f %f %f"
	.size	.L.str.138, 14

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"L"
	.size	.L.str.139, 2

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"ignoring unencoded ligature character %s in font file %s (line %d)"
	.size	.L.str.140, 67

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"too many ligature characters in font file %s (line %d)"
	.size	.L.str.141, 55

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"WX missing in font file %s (line %d)"
	.size	.L.str.142, 37

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"B missing in font file %s (line %d)"
	.size	.L.str.143, 36

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"CC"
	.size	.L.str.144, 3

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"CC %s %d "
	.size	.L.str.145, 10

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"syntax error in extra font file %s (line %d)"
	.size	.L.str.146, 45

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"unknown character name %s in font file %s (line %d)"
	.size	.L.str.147, 52

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	" PCC %s %d %d"
	.size	.L.str.148, 14

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"too many composites in file %s (at line %d)"
	.size	.L.str.149, 44

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"EndBuildComposites"
	.size	.L.str.150, 19

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"missing EndBuildComposites in extra font file %s (line %d)"
	.size	.L.str.151, 59


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
