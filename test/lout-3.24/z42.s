	.text
	.file	"z42.dce"
	.globl	ColourInit
	.align	16, 0x90
	.type	ColourInit,@function
ColourInit:                             # @ColourInit
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
	movl	$100, %edi
	callq	ctab_new
	movq	%rax, col_tab(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ColourInit, .Lfunc_end0-ColourInit
	.cfi_endproc

	.align	16, 0x90
	.type	ctab_new,@function
ctab_new:                               # @ctab_new
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
	movslq	-4(%rbp), %rdi
	shlq	$4, %rdi
	orq	$8, %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$42, %edi
	movl	$1, %esi
	movl	$.L.str.7, %edx
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
	shlq	$4, %rax
	movq	$0, 16(%rcx,%rax)
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	$0, 8(%rcx,%rax)
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
	.size	ctab_new, .Lfunc_end1-ctab_new
	.cfi_endproc

	.globl	ColourChange
	.align	16, 0x90
	.type	ColourChange,@function
ColourChange:                           # @ColourChange
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
	subq	$96, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movzbl	32(%rsi), %eax
	cmpl	$11, %eax
	je	.LBB2_4
# BB#1:
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_2
.LBB2_4:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.2, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_5
# BB#7:
	movq	-80(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.4, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB2_24
# BB#8:
	movq	-80(%rbp), %rax
	addq	$64, %rax
	movq	col_tab(%rip), %rcx
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB2_9
	.align	16, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_9 Depth=1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -52(%rbp)
.LBB2_9:                                # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB2_10
# BB#11:
	movl	-52(%rbp), %eax
	movq	-24(%rbp), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -52(%rbp)
	movslq	-52(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rax
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	je	.LBB2_20
# BB#12:
	movq	-32(%rbp), %rax
	jmp	.LBB2_13
	.align	16, 0x90
.LBB2_19:                               #   in Loop: Header=BB2_13 Depth=1
	movq	-40(%rbp), %rax
.LBB2_13:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB2_20
# BB#14:                                #   in Loop: Header=BB2_13 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB2_15
	.align	16, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_15 Depth=2
	movq	-48(%rbp), %rax
.LBB2_15:                               #   Parent Loop BB2_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_16
# BB#17:                                #   in Loop: Header=BB2_13 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB2_19
# BB#18:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_21
.LBB2_5:
	movq	BackEnd(%rip), %rax
	cmpl	$0, 44(%rax)
	je	.LBB2_24
# BB#6:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$42, %edi
	movl	$4, %esi
	movl	$.L.str.3, %edx
	jmp	.LBB2_3
.LBB2_2:
	movq	-80(%rbp), %r8
	addq	$32, %r8
	movl	$42, %edi
	movl	$3, %esi
	movl	$.L.str, %edx
.LBB2_3:
	movl	$2, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_24
.LBB2_20:
	movq	$0, -8(%rbp)
.LBB2_21:                               # %ctab_retrieve.exit
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	jne	.LBB2_23
# BB#22:
	movq	-80(%rbp), %rsi
	movzbl	32(%rsi), %edi
	leaq	32(%rsi), %rdx
	addq	$64, %rsi
	callq	MakeWord
	movq	%rax, -88(%rbp)
	movl	$col_tab, %esi
	movq	%rax, %rdi
	callq	ctab_insert
.LBB2_23:
	movq	-88(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	40(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	12(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 12(%rcx)
.LBB2_24:
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ColourChange, .Lfunc_end2-ColourChange
	.cfi_endproc

	.align	16, 0x90
	.type	ctab_insert,@function
ctab_insert:                            # @ctab_insert
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
	pushq	%rbx
	subq	$72, %rsp
.Ltmp12:
	.cfi_offset %rbx, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB3_10
# BB#1:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	(%rax), %edi
	addl	%edi, %edi
	movq	%rax, -16(%rbp)
	movl	%edi, -20(%rbp)
	callq	ctab_new
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB3_2
	.align	16, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rdi
	movq	%rbx, %rsi
	callq	ctab_insert
	incl	-36(%rbp)
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jle	.LBB3_3
# BB#4:
	movl	$0, -36(%rbp)
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_5 Depth=1
	incl	-36(%rbp)
.LBB3_5:                                # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB3_9
# BB#6:                                 #   in Loop: Header=BB3_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	cmpq	$0, 16(%rcx,%rax)
	je	.LBB3_8
# BB#7:                                 #   in Loop: Header=BB3_5 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rdi
	callq	DisposeObject
	jmp	.LBB3_8
.LBB3_9:                                # %ctab_rehash.exit
	movq	-16(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB3_10:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movl	4(%rax), %ecx
	incl	%ecx
	movl	%ecx, 4(%rax)
	movl	%ecx, -64(%rbp)
	cmpl	$4097, %ecx             # imm = 0x1001
	jl	.LBB3_12
# BB#11:
	movq	-48(%rbp), %r8
	addq	$32, %r8
	movl	$42, %edi
	movl	$2, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movl	$4096, %r9d             # imm = 0x1000
	xorl	%eax, %eax
	callq	Error
.LBB3_12:
	movq	-48(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -72(%rbp)
	leaq	65(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	64(%rax), %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_13 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -60(%rbp)
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB3_14
# BB#15:
	movl	-60(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -60(%rbp)
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$4, %rax
	cmpq	$0, 16(%rcx,%rax)
	jne	.LBB3_22
# BB#16:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_21
.LBB3_18:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_19
# BB#20:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_21
.LBB3_19:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_21:
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
	movslq	-60(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	shlq	$4, %rcx
	movq	%rax, 16(%rdx,%rcx)
.LBB3_22:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_24
# BB#23:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_27
.LBB3_24:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_25
# BB#26:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_27
.LBB3_25:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_27:
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
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx), %rcx
	shlq	$4, %rax
	movq	16(%rcx,%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_30
# BB#28:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_30
# BB#29:
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
.LBB3_30:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_33
# BB#31:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_33
# BB#32:
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
.LBB3_33:
	movq	-48(%rbp), %rax
	movl	$1023, %ecx             # imm = 0x3FF
	andl	-64(%rbp), %ecx
	shll	$12, %ecx
	movl	$-4190209, %edx         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	shlq	$4, %rcx
	movq	%rax, 8(%rdx,%rcx)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ctab_insert, .Lfunc_end3-ctab_insert
	.cfi_endproc

	.globl	ColourCommand
	.align	16, 0x90
	.type	ColourCommand,@function
ColourCommand:                          # @ColourCommand
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	je	.LBB4_2
# BB#1:
	movl	-4(%rbp), %eax
	movq	col_tab(%rip), %rcx
	cmpl	4(%rcx), %eax
	jbe	.LBB4_3
.LBB4_2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_3:
	movl	-4(%rbp), %eax
	movq	col_tab(%rip), %rcx
	shlq	$4, %rax
	movq	8(%rcx,%rax), %rax
	addq	$64, %rax
	movq	%rax, -16(%rbp)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ColourCommand, .Lfunc_end4-ColourCommand
	.cfi_endproc

	.type	col_tab,@object         # @col_tab
	.local	col_tab
	.comm	col_tab,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s ignored (illegal left parameter)"
	.size	.L.str, 36

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"@SetColour"
	.size	.L.str.1, 11

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%s ignored (empty left parameter)"
	.size	.L.str.3, 34

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"nochange"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"assert failed in %s"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ColourCommand: number"
	.size	.L.str.6, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ran out of memory when enlarging colour table"
	.size	.L.str.7, 46

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"too many colours (maximum is %d)"
	.size	.L.str.8, 33

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"word is too long"
	.size	.L.str.9, 17


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
