	.text
	.file	"z30.dce"
	.globl	InsertUses
	.align	16, 0x90
	.type	InsertUses,@function
InsertUses:                             # @InsertUses
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB0_10
# BB#1:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB0_10
# BB#2:
	movq	-16(%rbp), %rax
	cmpw	$0, 120(%rax)
	jne	.LBB0_10
# BB#3:
	movl	$2, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_4
# BB#5:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	%rax, -24(%rbp)
	movq	zz_hold(%rip), %rax
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_6
.LBB0_4:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, -24(%rbp)
.LBB0_6:
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB0_7
# BB#8:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB0_9
.LBB0_7:
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rax)
.LBB0_9:
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 64(%rcx)
.LBB0_10:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jl	.LBB0_17
# BB#11:
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jg	.LBB0_17
# BB#12:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rcx
	movl	$1, %eax
	cmpq	-8(%rbp), %rcx
	je	.LBB0_14
# BB#13:                                # %select.mid
	movl	$2, %eax
.LBB0_14:                               # %select.end
	movq	-16(%rbp), %rcx
	movzbl	124(%rcx), %edx
	addl	%eax, %edx
	movb	%dl, 124(%rcx)
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$15, %eax
	jb	.LBB0_16
# BB#15:
	movq	-16(%rbp), %rax
	movzbl	124(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_21
.LBB0_16:
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.LBB0_20
.LBB0_17:
	movq	-16(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB0_19
# BB#18:
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$15, %eax
	jae	.LBB0_21
.LBB0_19:
	movq	-8(%rbp), %rax
.LBB0_20:
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, 41(%rax)
.LBB0_21:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InsertUses, .Lfunc_end0-InsertUses
	.cfi_endproc

	.globl	FlattenUses
	.align	16, 0x90
	.type	FlattenUses,@function
FlattenUses:                            # @FlattenUses
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
	movq	StartSym(%rip), %rdi
	callq	GatherAllUses
	popq	%rbp
	retq
.Lfunc_end1:
	.size	FlattenUses, .Lfunc_end1-FlattenUses
	.cfi_endproc

	.align	16, 0x90
	.type	GatherAllUses,@function
GatherAllUses:                          # @GatherAllUses
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	8(%rdi), %rax
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	GatherAllUses
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB2_8
# BB#2:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=2
	movq	-24(%rbp), %rax
.LBB2_3:                                #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_4
# BB#5:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB2_7
# BB#6:                                 #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	%rdi, %rsi
	callq	GatherUses
	jmp	.LBB2_7
.LBB2_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	GatherAllUses, .Lfunc_end2-GatherAllUses
	.cfi_endproc

	.globl	SearchUses
	.align	16, 0x90
	.type	SearchUses,@function
SearchUses:                             # @SearchUses
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	cmpq	%rsi, -16(%rbp)
	je	.LBB3_1
# BB#2:
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB3_7
# BB#3:
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	.align	16, 0x90
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	je	.LBB3_5
# BB#6:                                 #   in Loop: Header=BB3_4 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB3_4
.LBB3_7:
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_1:
	movl	$1, -4(%rbp)
	jmp	.LBB3_8
.LBB3_5:
	movl	$1, -4(%rbp)
.LBB3_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SearchUses, .Lfunc_end3-SearchUses
	.cfi_endproc

	.globl	FirstExternTarget
	.align	16, 0x90
	.type	FirstExternTarget,@function
FirstExternTarget:                      # @FirstExternTarget
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$12, %eax
	jae	.LBB4_2
# BB#1:
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB4_7
.LBB4_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB4_7
# BB#3:
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	.align	16, 0x90
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$12, %eax
	jb	.LBB4_5
# BB#6:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB4_4
	jmp	.LBB4_7
.LBB4_5:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB4_7:
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	FirstExternTarget, .Lfunc_end4-FirstExternTarget
	.cfi_endproc

	.globl	NextExternTarget
	.align	16, 0x90
	.type	NextExternTarget,@function
NextExternTarget:                       # @NextExternTarget
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB5_4
	.align	16, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	72(%rcx), %rcx
	cmpq	8(%rcx), %rax
	je	.LBB5_4
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$12, %eax
	jae	.LBB5_1
# BB#3:
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB5_4:
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	NextExternTarget, .Lfunc_end5-NextExternTarget
	.cfi_endproc

	.align	16, 0x90
	.type	GatherUses,@function
GatherUses:                             # @GatherUses
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
	movq	-8(%rbp), %rax
	cmpq	$0, 64(%rax)
	je	.LBB6_17
# BB#1:
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	.align	16, 0x90
.LBB6_2:                                # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	80(%rax), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB6_16
# BB#3:                                 #   in Loop: Header=BB6_2 Depth=1
	movq	-32(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.LBB6_15
# BB#4:                                 #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movl	$2, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_5
# BB#6:                                 #   in Loop: Header=BB6_2 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	%rax, -40(%rbp)
	movq	zz_hold(%rip), %rax
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_7
	.align	16, 0x90
.LBB6_15:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1024, %edx             # imm = 0x400
	movw	%dx, 41(%rax)
	jmp	.LBB6_16
.LBB6_5:                                #   in Loop: Header=BB6_2 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, -40(%rbp)
.LBB6_7:                                #   in Loop: Header=BB6_2 Depth=1
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 72(%rax)
	je	.LBB6_8
# BB#9:                                 #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movq	72(%rax), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	72(%rcx), %rcx
	movq	%rax, 8(%rcx)
	jmp	.LBB6_10
.LBB6_8:                                #   in Loop: Header=BB6_2 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rax)
.LBB6_10:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 72(%rcx)
	movq	-32(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$9, %eax
	jae	.LBB6_12
# BB#11:                                #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$512, %edx              # imm = 0x200
	movw	%dx, 41(%rax)
.LBB6_12:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-32(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$11, %eax
	jae	.LBB6_14
# BB#13:                                #   in Loop: Header=BB6_2 Depth=1
	movq	-16(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
.LBB6_14:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	GatherUses
.LBB6_16:                               #   in Loop: Header=BB6_2 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	64(%rcx), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB6_2
.LBB6_17:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	GatherUses, .Lfunc_end6-GatherUses
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
