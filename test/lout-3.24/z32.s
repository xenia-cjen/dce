	.text
	.file	"z32.dce"
	.globl	Next
	.align	16, 0x90
	.type	Next,@function
Next:                                   # @Next
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
	subq	$584, %rsp              # imm = 0x248
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$98, %eax
	ja	.LBB0_54
# BB#1:
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_37:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_38
	.align	16, 0x90
.LBB0_39:                               #   in Loop: Header=BB0_38 Depth=1
	movq	-40(%rbp), %rax
.LBB0_38:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_39
# BB#40:
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	Next
	movq	%rax, -40(%rbp)
	jmp	.LBB0_55
.LBB0_54:
	movq	no_fpos(%rip), %rbx
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB0_55:
	movq	-16(%rbp), %rax
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.LBB0_41:
	movq	-16(%rbp), %rax
	jmp	.LBB0_42
	.align	16, 0x90
.LBB0_53:                               #   in Loop: Header=BB0_42 Depth=1
	movq	-48(%rbp), %rax
.LBB0_42:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_43 Depth 2
                                        #       Child Loop BB0_48 Depth 3
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB0_43:                               #   Parent Loop BB0_42 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_48 Depth 3
	movq	-48(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB0_44
# BB#45:                                #   in Loop: Header=BB0_43 Depth=2
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	sete	%al
	jmp	.LBB0_46
	.align	16, 0x90
.LBB0_44:                               #   in Loop: Header=BB0_43 Depth=2
	xorl	%eax, %eax
.LBB0_46:                               #   in Loop: Header=BB0_43 Depth=2
	testb	%al, %al
	je	.LBB0_55
# BB#47:                                #   in Loop: Header=BB0_43 Depth=2
	movq	-48(%rbp), %rax
	jmp	.LBB0_48
	.align	16, 0x90
.LBB0_49:                               #   in Loop: Header=BB0_48 Depth=3
	movq	-40(%rbp), %rax
.LBB0_48:                               #   Parent Loop BB0_42 Depth=1
                                        #     Parent Loop BB0_43 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_49
# BB#50:                                #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB0_52
# BB#51:                                #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB0_43
.LBB0_52:                               #   in Loop: Header=BB0_43 Depth=2
	movq	-40(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	Next
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, (%rax)
	jne	.LBB0_43
	jmp	.LBB0_53
.LBB0_2:
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movl	%eax, -64(%rbp)
	decl	%eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_3 Depth=1
	decl	-56(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -56(%rbp)
	js	.LBB0_4
# BB#5:                                 #   in Loop: Header=BB0_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	64(%rcx,%rax), %eax
	cmpl	$48, %eax
	jl	.LBB0_6
# BB#7:                                 #   in Loop: Header=BB0_3 Depth=1
	movslq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	64(%rcx,%rax), %eax
	cmpl	$58, %eax
	setl	%al
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_9
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	xorb	$1, %al
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	testb	%al, %al
	jne	.LBB0_10
# BB#11:
	cmpl	$0, -56(%rbp)
	js	.LBB0_55
# BB#12:
	movl	-56(%rbp), %eax
	decl	%eax
	movl	%eax, -52(%rbp)
	jmp	.LBB0_13
	.align	16, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_13 Depth=1
	decl	-52(%rbp)
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	js	.LBB0_14
# BB#15:                                #   in Loop: Header=BB0_13 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	64(%rcx,%rax), %eax
	cmpl	$48, %eax
	jl	.LBB0_16
# BB#17:                                #   in Loop: Header=BB0_13 Depth=1
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	64(%rcx,%rax), %eax
	cmpl	$58, %eax
	setl	%al
	jmp	.LBB0_18
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_18
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
	xorl	%eax, %eax
.LBB0_18:                               #   in Loop: Header=BB0_13 Depth=1
	testb	%al, %al
	jne	.LBB0_19
# BB#20:
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	65(%rax,%rcx), %rdi
	leaq	-60(%rbp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movslq	-52(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, 65(%rax,%rcx)
	movq	-16(%rbp), %rsi
	addq	$64, %rsi
	leaq	-576(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	-60(%rbp), %edi
	addl	-20(%rbp), %edi
	callq	StringInt
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcat
	movslq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	leaq	65(%rax,%rcx), %rsi
	movq	%rbx, %rdi
	callq	strcat
	movq	%rbx, %rdi
	callq	strlen
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB0_22
# BB#21:
	movq	-16(%rbp), %r8
	addq	$32, %r8
	leaq	-576(%rbp), %r9
	movl	$32, %edi
	movl	$1, %esi
	movl	$.L.str.1, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_22:
	movq	-16(%rbp), %rdx
	movzbl	32(%rdx), %edi
	addq	$32, %rdx
	leaq	-576(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rcx
	movl	$4095, %edx             # imm = 0xFFF
	andl	40(%rcx), %edx
	movl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %ecx
	orl	%edx, %ecx
	movl	%ecx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	40(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	40(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	40(%rax), %edx
	movl	$-528482305, %eax       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-16(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	40(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	40(%rax), %edx
	movl	$-1610612737, %eax      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, xx_res(%rip)
	movq	-16(%rbp), %rcx
	movq	%rcx, xx_hold(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB0_24
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
.LBB0_24:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_27
# BB#25:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_27
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
.LBB0_27:
	movq	xx_hold(%rip), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 8(%rcx)
	je	.LBB0_29
# BB#28:
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
.LBB0_29:
	movq	%rax, xx_tmp(%rip)
	movq	xx_res(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_32
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
.LBB0_32:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_34
# BB#33:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_35
.LBB0_34:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_36
.LBB0_35:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_36:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	jmp	.LBB0_55
.Lfunc_end0:
	.size	Next, .Lfunc_end0-Next
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_54
	.quad	.LBB0_37
	.quad	.LBB0_54
	.quad	.LBB0_2
	.quad	.LBB0_2
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_41
	.quad	.LBB0_37
	.quad	.LBB0_55
	.quad	.LBB0_37
	.quad	.LBB0_55
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_54
	.quad	.LBB0_55
	.quad	.LBB0_55
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37
	.quad	.LBB0_37

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"word %s is too long"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"assert failed in %s %s"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Next:"
	.size	.L.str.3, 6


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
