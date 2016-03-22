	.text
	.file	"z43.dce"
	.globl	LanguageInit
	.align	16, 0x90
	.type	LanguageInit,@function
LanguageInit:                           # @LanguageInit
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
	subq	$16, %rsp
	movl	$100, %edi
	callq	ltab_new
	movq	%rax, names_tab(%rip)
	movl	$0, lang_count(%rip)
	movl	$100, lang_tabsize(%rip)
	movl	$800, %edi              # imm = 0x320
	callq	malloc
	movq	%rax, hyph_tab(%rip)
	movl	$800, %edi              # imm = 0x320
	callq	malloc
	movq	%rax, canonical_tab(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-4(%rbp), %rax
	movl	$0, LanguageSentenceEnds(,%rax,4)
	incl	-4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$255, -4(%rbp)
	jle	.LBB0_2
# BB#3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	LanguageInit, .Lfunc_end0-LanguageInit
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_new,@function
ltab_new:                               # @ltab_new
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$43, %edi
	movl	$1, %esi
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx,%rax,8)
	incl	-20(%rbp)
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB1_4
# BB#5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ltab_new, .Lfunc_end1-ltab_new
	.cfi_endproc

	.globl	LanguageDefine
	.align	16, 0x90
	.type	LanguageDefine,@function
LanguageDefine:                         # @LanguageDefine
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp9:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB2_2
# BB#1:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_3
.LBB2_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_3:
	movq	-16(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_5:
	movl	lang_count(%rip), %eax
	incl	%eax
	movl	%eax, lang_count(%rip)
	cmpl	lang_tabsize(%rip), %eax
	jl	.LBB2_7
# BB#6:
	shll	lang_tabsize(%rip)
	movq	hyph_tab(%rip), %rdi
	movslq	lang_tabsize(%rip), %rsi
	shlq	$3, %rsi
	callq	realloc
	movq	%rax, hyph_tab(%rip)
	movq	canonical_tab(%rip), %rdi
	movslq	lang_tabsize(%rip), %rsi
	shlq	$3, %rsi
	callq	realloc
	movq	%rax, canonical_tab(%rip)
.LBB2_7:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movl	$-528482305, %ebx       # imm = 0xFFFFFFFFE07FFFFF
	jmp	.LBB2_8
	.align	16, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_8 Depth=1
	movl	lang_count(%rip), %eax
	movq	-40(%rbp), %rcx
	andl	$63, %eax
	shll	$23, %eax
	movl	40(%rcx), %edx
	andl	%ebx, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-40(%rbp), %rdi
	movl	$names_tab, %esi
	callq	ltab_insert
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB2_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_10 Depth 2
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB2_16
# BB#9:                                 #   in Loop: Header=BB2_8 Depth=1
	movq	-32(%rbp), %rax
	jmp	.LBB2_10
	.align	16, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_10 Depth=2
	movq	-40(%rbp), %rax
.LBB2_10:                               #   Parent Loop BB2_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_11
# BB#12:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_15
# BB#13:                                #   in Loop: Header=BB2_8 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_15
# BB#14:                                #   in Loop: Header=BB2_8 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_15
.LBB2_16:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_17
	.align	16, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_17 Depth=1
	movq	-40(%rbp), %rax
.LBB2_17:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_18
# BB#19:
	movq	-40(%rbp), %rax
	movslq	lang_count(%rip), %rcx
	movq	canonical_tab(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_37
# BB#20:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_22
# BB#21:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_25
.LBB2_22:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_23
# BB#24:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_25
.LBB2_23:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_25:
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
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-24(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-40(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-24(%rbp), %rax
	andl	36(%rax), %esi
	movq	-40(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_27
# BB#26:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_30
.LBB2_27:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_28
# BB#29:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_30
.LBB2_28:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_30:
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
	je	.LBB2_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_33
# BB#32:
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
.LBB2_33:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_36
# BB#34:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_36
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
.LBB2_36:
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB2_37:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_38
	.align	16, 0x90
.LBB2_39:                               #   in Loop: Header=BB2_38 Depth=1
	movq	-48(%rbp), %rax
.LBB2_38:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_39
# BB#40:
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_42
# BB#41:
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
.LBB2_42:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_44
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
.LBB2_44:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_46
# BB#45:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_47
.LBB2_46:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_48
.LBB2_47:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_48:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_51
# BB#49:
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_51
# BB#50:
	movq	-24(%rbp), %r8
	addq	$32, %r8
	movl	$43, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_51:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.6, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_53
# BB#52:
	movq	-48(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.7, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_53
# BB#58:
	movq	-48(%rbp), %rax
	movslq	lang_count(%rip), %rcx
	movq	hyph_tab(%rip), %rdx
	movq	%rax, (%rdx,%rcx,8)
	jmp	.LBB2_59
.LBB2_53:
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_55
# BB#54:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_56
.LBB2_55:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_57
.LBB2_56:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_57:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movslq	lang_count(%rip), %rax
	movq	hyph_tab(%rip), %rcx
	movq	$0, (%rcx,%rax,8)
.LBB2_59:
	movq	-24(%rbp), %rax
	movslq	lang_count(%rip), %rcx
	movq	%rax, lang_ends(,%rcx,8)
	movq	-24(%rbp), %rax
	jmp	.LBB2_60
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_60 Depth=1
	movq	-32(%rbp), %rax
.LBB2_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_62 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB2_82
# BB#61:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-32(%rbp), %rax
	jmp	.LBB2_62
	.align	16, 0x90
.LBB2_63:                               #   in Loop: Header=BB2_62 Depth=2
	movq	-40(%rbp), %rax
.LBB2_62:                               #   Parent Loop BB2_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_63
# BB#64:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_75
# BB#65:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB2_67
# BB#66:                                #   in Loop: Header=BB2_60 Depth=1
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
.LBB2_67:                               #   in Loop: Header=BB2_60 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_69
# BB#68:                                #   in Loop: Header=BB2_60 Depth=1
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
.LBB2_69:                               #   in Loop: Header=BB2_60 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_71
# BB#70:                                #   in Loop: Header=BB2_60 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_72
.LBB2_71:                               #   in Loop: Header=BB2_60 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_73
	.align	16, 0x90
.LBB2_75:                               #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_78
# BB#76:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB2_78
# BB#77:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$43, %edi
	movl	$4, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_78:                               #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movl	%eax, -60(%rbp)
	testl	%eax, %eax
	jne	.LBB2_80
# BB#79:                                #   in Loop: Header=BB2_60 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$43, %edi
	movl	$5, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_80:                               #   in Loop: Header=BB2_60 Depth=1
	movslq	-60(%rbp), %rax
	movq	-40(%rbp), %rcx
	movb	63(%rax,%rcx), %al
	movb	%al, -53(%rbp)
	movzbl	-53(%rbp), %eax
	movl	$1, LanguageSentenceEnds(,%rax,4)
	jmp	.LBB2_81
.LBB2_72:                               #   in Loop: Header=BB2_60 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_73:                               #   in Loop: Header=BB2_60 Depth=1
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
	jne	.LBB2_81
# BB#74:                                #   in Loop: Header=BB2_60 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	movq	-32(%rbp), %rax
	jmp	.LBB2_60
.LBB2_82:
	cmpl	$0, InitializeAll(%rip)
	je	.LBB2_85
# BB#83:
	movslq	lang_count(%rip), %rax
	movq	hyph_tab(%rip), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB2_85
# BB#84:
	movl	lang_count(%rip), %edi
	callq	ReadHyphTable
	movl	%eax, -52(%rbp)
.LBB2_85:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	LanguageDefine, .Lfunc_end2-LanguageDefine
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_insert,@function
ltab_insert:                            # @ltab_insert
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp13:
	.cfi_offset %rbx, -32
.Ltmp14:
	.cfi_offset %r14, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB3_7
# BB#1:
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	addl	%edi, %edi
	movq	%rax, -24(%rbp)
	movl	%edi, -28(%rbp)
	callq	ltab_new
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
	leaq	-40(%rbp), %rbx
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	incl	-44(%rbp)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB3_6
# BB#3:                                 #   in Loop: Header=BB3_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB3_5
# BB#4:                                 #   in Loop: Header=BB3_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	movq	%rbx, %rsi
	callq	ltab_insert
	jmp	.LBB3_5
.LBB3_6:                                # %ltab_rehash.exit
	movq	-24(%rbp), %rdi
	callq	free
	movq	-40(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB3_7:
	movq	-56(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -104(%rbp)
	leaq	65(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movzbl	64(%rax), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB3_8
	.align	16, 0x90
.LBB3_9:                                #   in Loop: Header=BB3_8 Depth=1
	movq	-104(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -104(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -68(%rbp)
.LBB3_8:                                # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_9
# BB#10:
	movl	-68(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -68(%rbp)
	movslq	-68(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	jne	.LBB3_17
# BB#11:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_13
# BB#12:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_16
.LBB3_13:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_14
# BB#15:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_16
.LBB3_14:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_16:
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
	movslq	-68(%rbp), %rcx
	movq	-64(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
.LBB3_17:
	movslq	-68(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB3_18
	.align	16, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_18 Depth=1
	movq	-88(%rbp), %rax
.LBB3_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB3_25
# BB#19:                                #   in Loop: Header=BB3_18 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB3_20
	.align	16, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_20 Depth=2
	movq	-96(%rbp), %rax
.LBB3_20:                               #   Parent Loop BB3_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_21
# BB#22:                                #   in Loop: Header=BB3_18 Depth=1
	movq	-56(%rbp), %rdi
	addq	$64, %rdi
	movq	-96(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_24
# BB#23:                                #   in Loop: Header=BB3_18 Depth=1
	movq	-56(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-96(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, (%rsp)
	movl	$43, %edi
	movl	$2, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB3_24
.LBB3_25:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_27
# BB#26:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_30
.LBB3_27:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_28
# BB#29:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_30
.LBB3_28:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_30:
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
	movq	-64(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_33
# BB#32:
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
.LBB3_33:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_36
# BB#34:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_36
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
.LBB3_36:
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ltab_insert, .Lfunc_end3-ltab_insert
	.cfi_endproc

	.globl	LanguageWordEndsSentence
	.align	16, 0x90
	.type	LanguageWordEndsSentence,@function
LanguageWordEndsSentence:               # @LanguageWordEndsSentence
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
	subq	$64, %rsp
.Ltmp18:
	.cfi_offset %rbx, -32
.Ltmp19:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB4_3
# BB#1:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB4_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_3:
	movq	-32(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movq	lang_ends(,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movl	$4095, %r14d            # imm = 0xFFF
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
	movq	-64(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB4_15
# BB#5:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-64(%rbp), %rax
	jmp	.LBB4_6
	.align	16, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=2
	movq	-56(%rbp), %rax
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_7
# BB#8:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	movq	-56(%rbp), %rsi
	addq	$64, %rsi
	callq	StringEndsWith
	testl	%eax, %eax
	je	.LBB4_14
# BB#9:                                 #   in Loop: Header=BB4_4 Depth=1
	cmpl	$0, -36(%rbp)
	je	.LBB4_10
# BB#11:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	-56(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	subl	%eax, %ebx
	decl	%ebx
	movl	%ebx, -68(%rbp)
	js	.LBB4_14
# BB#12:                                #   in Loop: Header=BB4_4 Depth=1
	movslq	-68(%rbp), %rax
	movq	-32(%rbp), %rsi
	movl	40(%rsi), %edi
	andl	%r14d, %edi
	movzbl	64(%rsi,%rax), %ebx
	addq	$32, %rsi
	callq	FontMapping
	movl	%ebx, %edi
	movl	%eax, %esi
	callq	MapIsLowerCase
	testl	%eax, %eax
	je	.LBB4_14
# BB#13:
	movl	$1, -20(%rbp)
	jmp	.LBB4_16
.LBB4_15:
	movl	$0, -20(%rbp)
	jmp	.LBB4_16
.LBB4_10:
	movl	$1, -20(%rbp)
.LBB4_16:
	movl	-20(%rbp), %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	LanguageWordEndsSentence, .Lfunc_end4-LanguageWordEndsSentence
	.cfi_endproc

	.globl	LanguageChange
	.align	16, 0x90
	.type	LanguageChange,@function
LanguageChange:                         # @LanguageChange
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
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movzbl	32(%rsi), %eax
	cmpl	$11, %eax
	je	.LBB5_4
# BB#1:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB5_2
.LBB5_4:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.6, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB5_21
# BB#5:
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	names_tab(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB5_6
	.align	16, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_6 Depth=1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -52(%rbp)
.LBB5_6:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB5_7
# BB#8:
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -52(%rbp)
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB5_17
# BB#9:
	movq	-32(%rbp), %rax
	jmp	.LBB5_10
	.align	16, 0x90
.LBB5_16:                               #   in Loop: Header=BB5_10 Depth=1
	movq	-40(%rbp), %rax
.LBB5_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_12 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB5_17
# BB#11:                                #   in Loop: Header=BB5_10 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_13:                               #   in Loop: Header=BB5_12 Depth=2
	movq	-48(%rbp), %rax
.LBB5_12:                               #   Parent Loop BB5_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB5_13
# BB#14:                                #   in Loop: Header=BB5_10 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB5_16
# BB#15:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB5_18
.LBB5_17:
	movq	$0, -8(%rbp)
.LBB5_18:                               # %ltab_retrieve.exit
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB5_19
# BB#20:
	movq	-88(%rbp), %rax
	movl	40(%rax), %eax
	addl	%eax, %eax
	movq	-72(%rbp), %rcx
	andl	$1056964608, %eax       # imm = 0x3F000000
	movl	$-1056964609, %edx      # imm = 0xFFFFFFFFC0FFFFFF
	andl	12(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 12(%rcx)
	jmp	.LBB5_21
.LBB5_2:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$43, %edi
	movl	$6, %esi
	movl	$.L.str.11, %edx
	jmp	.LBB5_3
.LBB5_19:
	movq	-80(%rbp), %rax
	leaq	32(%rax), %r8
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$43, %edi
	movl	$7, %esi
	movl	$.L.str.13, %edx
.LBB5_3:
	movl	$2, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_21:
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	LanguageChange, .Lfunc_end5-LanguageChange
	.cfi_endproc

	.globl	LanguageString
	.align	16, 0x90
	.type	LanguageString,@function
LanguageString:                         # @LanguageString
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	je	.LBB6_2
# BB#1:
	movl	-4(%rbp), %eax
	cmpl	lang_count(%rip), %eax
	jbe	.LBB6_3
.LBB6_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_3:
	movl	-4(%rbp), %eax
	movq	canonical_tab(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	LanguageString, .Lfunc_end6-LanguageString
	.cfi_endproc

	.globl	LanguageHyph
	.align	16, 0x90
	.type	LanguageHyph,@function
LanguageHyph:                           # @LanguageHyph
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	je	.LBB7_2
# BB#1:
	movl	-4(%rbp), %eax
	cmpl	lang_count(%rip), %eax
	jbe	.LBB7_3
.LBB7_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB7_3:
	movl	-4(%rbp), %eax
	movq	hyph_tab(%rip), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	LanguageHyph, .Lfunc_end7-LanguageHyph
	.cfi_endproc

	.type	names_tab,@object       # @names_tab
	.local	names_tab
	.comm	names_tab,8,8
	.type	lang_count,@object      # @lang_count
	.local	lang_count
	.comm	lang_count,4,4
	.type	lang_tabsize,@object    # @lang_tabsize
	.local	lang_tabsize
	.comm	lang_tabsize,4,4
	.type	hyph_tab,@object        # @hyph_tab
	.local	hyph_tab
	.comm	hyph_tab,8,8
	.type	canonical_tab,@object   # @canonical_tab
	.local	canonical_tab
	.comm	canonical_tab,8,8
	.type	LanguageSentenceEnds,@object # @LanguageSentenceEnds
	.comm	LanguageSentenceEnds,1024,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"LanguageDefine: names!"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"LanguageDefine: names is empty!"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"LanguageDefine: type(y) != WORD!"
	.size	.L.str.3, 33

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"word is too long"
	.size	.L.str.4, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"hyphenation file name expected here"
	.size	.L.str.5, 36

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.zero	1
	.size	.L.str.6, 1

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"-"
	.size	.L.str.7, 2

	.type	lang_ends,@object       # @lang_ends
	.local	lang_ends
	.comm	lang_ends,512,16
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"expected word ending pattern here"
	.size	.L.str.8, 34

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"empty word ending pattern"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"LanguageWordEndsSentence: wd!"
	.size	.L.str.10, 30

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s ignored (illegal left parameter)"
	.size	.L.str.11, 36

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@Language"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s ignored (unknown language %s)"
	.size	.L.str.13, 33

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"LanguageString: unknown number"
	.size	.L.str.14, 31

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"LanguageHyph: unknown number"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"run out of memory enlarging language table"
	.size	.L.str.16, 43

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"language name %s used twice (first at%s)"
	.size	.L.str.17, 41


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
