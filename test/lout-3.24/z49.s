	.text
	.file	"z49.opt"
	.globl	PS_RestoreGraphicState
	.align	16, 0x90
	.type	PS_RestoreGraphicState,@function
PS_RestoreGraphicState:                 # @PS_RestoreGraphicState
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
	movq	out_fp(%rip), %rdi
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
	movslq	gs_stack_top(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	movl	gs_stack(,%rax,4), %eax
	movl	%eax, currentfont(%rip)
	movslq	gs_stack_top(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	movl	gs_stack+4(,%rax,4), %eax
	movl	%eax, currentcolour(%rip)
	movslq	gs_stack_top(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	movl	gs_stack+8(,%rax,4), %eax
	movl	%eax, cpexists(%rip)
	movslq	gs_stack_top(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	movl	gs_stack+12(,%rax,4), %eax
	movl	%eax, currenty(%rip)
	movslq	gs_stack_top(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	movw	gs_stack+16(,%rax,4), %ax
	movw	%ax, currentxheight2(%rip)
	decl	gs_stack_top(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	PS_RestoreGraphicState, .Lfunc_end0-PS_RestoreGraphicState
	.cfi_endproc

	.globl	PS_PrintGraphicObject
	.align	16, 0x90
	.type	PS_PrintGraphicObject,@function
PS_PrintGraphicObject:                  # @PS_PrintGraphicObject
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
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB1_1
# BB#23:
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	movq	out_fp(%rip), %rsi
	callq	fputs
	jmp	.LBB1_22
.LBB1_1:
	cmpl	$17, %eax
	jne	.LBB1_21
# BB#2:
	movq	-8(%rbp), %rax
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	PS_PrintGraphicObject
	movq	-24(%rbp), %rax
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_5 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB1_22
# BB#4:                                 #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB1_5
	.align	16, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_5 Depth=2
	movq	-16(%rbp), %rax
.LBB1_5:                                #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_6
# BB#7:                                 #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB1_12
# BB#8:                                 #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_10
# BB#9:                                 #   in Loop: Header=BB1_3 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$.L.str.1, %edi
	callq	fputs
	movq	-24(%rbp), %rax
	jmp	.LBB1_3
	.align	16, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_15
# BB#13:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_15
# BB#14:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB1_15
# BB#16:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	je	.LBB1_20
# BB#17:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB1_20
.LBB1_19:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$49, %edi
	movl	$8, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_20
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	41(%rax), %eax
	testl	%eax, %eax
	jle	.LBB1_20
# BB#11:                                #   in Loop: Header=BB1_3 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$.L.str.2, %edi
	callq	fputs
	movq	-24(%rbp), %rax
	jmp	.LBB1_3
.LBB1_20:                               #   in Loop: Header=BB1_3 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB1_3
.LBB1_21:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$49, %edi
	movl	$9, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_22:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PS_PrintGraphicObject, .Lfunc_end1-PS_PrintGraphicObject
	.cfi_endproc

	.globl	PS_DefineGraphicNames
	.align	16, 0x90
	.type	PS_DefineGraphicNames,@function
PS_DefineGraphicNames:                  # @PS_DefineGraphicNames
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp9:
	.cfi_offset %rbx, -56
.Ltmp10:
	.cfi_offset %r12, -48
.Ltmp11:
	.cfi_offset %r13, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$97, %eax
	je	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movq	-48(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	movl	76(%rcx), %ecx
	andl	%eax, %ecx
	cmpl	currentfont(%rip), %ecx
	je	.LBB2_5
# BB#3:
	movq	-48(%rbp), %rcx
	andl	76(%rcx), %eax
	movl	%eax, currentfont(%rip)
	je	.LBB2_5
# BB#4:
	movl	currentfont(%rip), %edi
	callq	FontHalfXHeight
	movw	%ax, currentxheight2(%rip)
	movq	out_fp(%rip), %r14
	movl	currentfont(%rip), %edi
	movq	-48(%rbp), %rsi
	callq	FontSize
	movl	%eax, %ebx
	movl	currentfont(%rip), %edi
	callq	FontName
	movq	%rax, %rcx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	fprintf
.LBB2_5:
	movq	-48(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB2_8
# BB#6:
	movq	-48(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, currentcolour(%rip)
	je	.LBB2_8
# BB#7:
	movq	out_fp(%rip), %rbx
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	movl	$.L.str.8, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
.LBB2_8:
	movq	out_fp(%rip), %r14
	movq	-48(%rbp), %rax
	movl	48(%rax), %r15d
	movl	60(%rax), %r12d
	movl	56(%rax), %r13d
	addl	%r15d, %r13d
	movl	52(%rax), %ebx
	addl	%r12d, %ebx
	movl	$240, %eax
	cmpl	$0, currentfont(%rip)
	je	.LBB2_10
# BB#9:
	movl	currentfont(%rip), %edi
	movq	-48(%rbp), %rsi
	callq	FontSize
.LBB2_10:
	movq	-48(%rbp), %rcx
	movswl	66(%rcx), %edx
	movswl	70(%rcx), %ecx
	movl	%ecx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str.9, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %edx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movl	%ebx, %ecx
	callq	fprintf
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	PS_DefineGraphicNames, .Lfunc_end2-PS_DefineGraphicNames
	.cfi_endproc

	.globl	PS_SaveTranslateDefineSave
	.align	16, 0x90
	.type	PS_SaveTranslateDefineSave,@function
PS_SaveTranslateDefineSave:             # @PS_SaveTranslateDefineSave
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
.Ltmp17:
	.cfi_offset %rbx, -56
.Ltmp18:
	.cfi_offset %r12, -48
.Ltmp19:
	.cfi_offset %r13, -40
.Ltmp20:
	.cfi_offset %r14, -32
.Ltmp21:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	cmpl	$48, gs_stack_top(%rip)
	jg	.LBB3_3
# BB#1:
	movq	-48(%rbp), %rax
	movl	$4095, %ecx             # imm = 0xFFF
	andl	76(%rax), %ecx
	cmpl	currentfont(%rip), %ecx
	jne	.LBB3_3
# BB#2:
	movq	-48(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB3_4
.LBB3_3:
	movq	-48(%rbp), %rdi
	callq	PS_SaveGraphicState
	movl	-52(%rbp), %edi
	movl	-56(%rbp), %esi
	callq	PS_CoordTranslate
	movq	-48(%rbp), %rdi
	callq	PS_DefineGraphicNames
	movq	-48(%rbp), %rdi
	callq	PS_SaveGraphicState
.LBB3_7:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_4:
	incl	gs_stack_top(%rip)
	movl	currentfont(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack(,%rcx,4)
	movl	currentcolour(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+4(,%rcx,4)
	movl	cpexists(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+8(,%rcx,4)
	movl	currenty(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+12(,%rcx,4)
	movw	currentxheight2(%rip), %ax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, gs_stack+16(,%rcx,4)
	movl	$0, cpexists(%rip)
	incl	gs_stack_top(%rip)
	movl	currentfont(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack(,%rcx,4)
	movl	currentcolour(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+4(,%rcx,4)
	movl	cpexists(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+8(,%rcx,4)
	movl	currenty(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+12(,%rcx,4)
	movw	currentxheight2(%rip), %ax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, gs_stack+16(,%rcx,4)
	movq	out_fp(%rip), %r14
	movq	-48(%rbp), %rax
	movl	48(%rax), %r15d
	movl	60(%rax), %r12d
	movl	56(%rax), %r13d
	addl	%r15d, %r13d
	movl	52(%rax), %ebx
	addl	%r12d, %ebx
	movl	$240, %eax
	cmpl	$0, currentfont(%rip)
	je	.LBB3_6
# BB#5:
	movl	currentfont(%rip), %edi
	movq	-48(%rbp), %rsi
	callq	FontSize
.LBB3_6:
	movq	-48(%rbp), %rcx
	movswl	66(%rcx), %edx
	movswl	70(%rcx), %ecx
	movl	-52(%rbp), %esi
	movl	-56(%rbp), %edi
	movl	%edi, 32(%rsp)
	movl	%esi, 24(%rsp)
	movl	%ecx, 16(%rsp)
	movl	%edx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r13d, %edx
	movl	%r15d, %r8d
	movl	%r12d, %r9d
	movl	%ebx, %ecx
	callq	fprintf
	jmp	.LBB3_7
.Lfunc_end3:
	.size	PS_SaveTranslateDefineSave, .Lfunc_end3-PS_SaveTranslateDefineSave
	.cfi_endproc

	.align	16, 0x90
	.type	PS_SaveGraphicState,@function
PS_SaveGraphicState:                    # @PS_SaveGraphicState
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp22:
	.cfi_def_cfa_offset 16
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp24:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	out_fp(%rip), %rdi
	movl	$.L.str.31, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	gs_stack_top(%rip), %eax
	incl	%eax
	movl	%eax, gs_stack_top(%rip)
	cmpl	$50, %eax
	jl	.LBB4_2
# BB#1:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$49, %edi
	movl	$7, %esi
	movl	$.L.str.32, %edx
	movl	$1, %ecx
	movl	$50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	movl	currentfont(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack(,%rcx,4)
	movl	currentcolour(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+4(,%rcx,4)
	movl	cpexists(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+8(,%rcx,4)
	movl	currenty(%rip), %eax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movl	%eax, gs_stack+12(,%rcx,4)
	movw	currentxheight2(%rip), %ax
	movslq	gs_stack_top(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	movw	%ax, gs_stack+16(,%rcx,4)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	PS_SaveGraphicState, .Lfunc_end4-PS_SaveGraphicState
	.cfi_endproc

	.align	16, 0x90
	.type	PS_CoordTranslate,@function
PS_CoordTranslate:                      # @PS_CoordTranslate
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp27:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%esi, %ecx
	movl	%edi, -4(%rbp)
	movl	%ecx, -8(%rbp)
	movq	out_fp(%rip), %rdi
	movl	-4(%rbp), %edx
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	PS_CoordTranslate, .Lfunc_end5-PS_CoordTranslate
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI6_0:
	.long	1101004800              # float 20
	.text
	.globl	PS_PrintGraphicInclude
	.align	16, 0x90
	.type	PS_PrintGraphicInclude,@function
PS_PrintGraphicInclude:                 # @PS_PrintGraphicInclude
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$576, %rsp              # imm = 0x240
.Ltmp31:
	.cfi_offset %rbx, -48
.Ltmp32:
	.cfi_offset %r12, -40
.Ltmp33:
	.cfi_offset %r14, -32
.Ltmp34:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edx, -48(%rbp)
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$94, %eax
	je	.LBB6_3
# BB#1:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$95, %eax
	je	.LBB6_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_3:
	movq	-40(%rbp), %rax
	cmpb	$0, 41(%rax)
	jne	.LBB6_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_5:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB6_6
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_6 Depth=1
	movq	-56(%rbp), %rax
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB6_7
# BB#8:
	movq	-56(%rbp), %rcx
	movq	-40(%rbp), %rax
	leaq	64(%rcx), %rdi
	addq	$32, %rcx
	movzbl	32(%rax), %esi
	leaq	-64(%rbp), %rdx
	leaq	-592(%rbp), %r8
	callq	OpenIncGraphicFile
	movq	%rax, -584(%rbp)
	testq	%rax, %rax
	jne	.LBB6_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_10:
	movq	-40(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	movl	76(%rax), %eax
	andl	%edi, %eax
	cmpl	currentfont(%rip), %eax
	je	.LBB6_12
# BB#11:
	movq	-40(%rbp), %rax
	andl	76(%rax), %edi
	movl	%edi, currentfont(%rip)
	callq	FontHalfXHeight
	movw	%ax, currentxheight2(%rip)
	movq	out_fp(%rip), %r14
	movl	currentfont(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	FontSize
	movl	%eax, %ebx
	movl	currentfont(%rip), %edi
	callq	FontName
	movq	%rax, %rcx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	fprintf
.LBB6_12:
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB6_15
# BB#13:
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, currentcolour(%rip)
	je	.LBB6_15
# BB#14:
	movq	out_fp(%rip), %rbx
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
.LBB6_15:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	-44(%rbp), %edi
	movq	-40(%rbp), %rax
	subl	48(%rax), %edi
	movl	-48(%rbp), %esi
	subl	60(%rax), %esi
	callq	PS_CoordTranslate
	movss	.LCPI6_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	callq	PS_CoordScale
	movq	-56(%rbp), %rax
	xorl	%edi, %edi
	subl	48(%rax), %edi
	xorl	%esi, %esi
	subl	52(%rax), %esi
	callq	PS_CoordTranslate
	movq	out_fp(%rip), %rdi
	movq	-64(%rbp), %rdx
	addq	$64, %rdx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rdx
	leaq	-576(%rbp), %rbx
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, -588(%rbp)
	leaq	-573(%rbp), %r14
	movb	$1, %r12b
	leaq	-550(%rbp), %r15
	jmp	.LBB6_16
	.align	16, 0x90
.LBB6_33:                               #   in Loop: Header=BB6_16 Depth=1
	movq	-584(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	callq	fgets
	cmpq	$1, %rax
	movl	$1, %eax
	adcl	$0, %eax
	movl	%eax, -588(%rbp)
.LBB6_16:                               # =>This Inner Loop Header: Depth=1
	cmpl	$2, -588(%rbp)
	je	.LBB6_51
# BB#17:                                #   in Loop: Header=BB6_16 Depth=1
	movl	-588(%rbp), %eax
	cmpl	$1, %eax
	jne	.LBB6_18
# BB#41:                                #   in Loop: Header=BB6_16 Depth=1
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB6_38
# BB#42:                                #   in Loop: Header=BB6_16 Depth=1
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r14, %rsi
	callq	MakeWord
	movq	%rax, -40(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB6_44
# BB#43:                                #   in Loop: Header=BB6_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_47
	.align	16, 0x90
.LBB6_18:                               #   in Loop: Header=BB6_16 Depth=1
	testl	%eax, %eax
	jne	.LBB6_16
# BB#19:                                #   in Loop: Header=BB6_16 Depth=1
	movl	$.L.str.18, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB6_34
# BB#20:                                #   in Loop: Header=BB6_16 Depth=1
	movl	$.L.str.19, %esi
	movq	%rbx, %rdi
	callq	StringContains
	testl	%eax, %eax
	je	.LBB6_21
.LBB6_34:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$.L.str.21, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB6_36
# BB#35:                                #   in Loop: Header=BB6_16 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movq	-64(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$10, %esi
	movl	$.L.str.22, %edx
	movl	$2, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_36:                               #   in Loop: Header=BB6_16 Depth=1
	movl	$.L.str.24, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB6_38
# BB#37:                                #   in Loop: Header=BB6_16 Depth=1
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movq	-64(%rbp), %rax
	addq	$64, %rax
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$11, %esi
	movl	$.L.str.25, %edx
	movl	$2, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB6_38:                               #   in Loop: Header=BB6_16 Depth=1
	movq	%rbx, %rdi
	callq	strip_out
	testl	%eax, %eax
	jne	.LBB6_40
# BB#39:                                #   in Loop: Header=BB6_16 Depth=1
	movq	out_fp(%rip), %rsi
	movq	%rbx, %rdi
	callq	fputs
.LBB6_40:                               #   in Loop: Header=BB6_16 Depth=1
	movq	-584(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	sete	%al
	movzbl	%al, %eax
	addl	%eax, %eax
	movl	%eax, -588(%rbp)
	jmp	.LBB6_16
.LBB6_44:                               #   in Loop: Header=BB6_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_45
# BB#46:                                #   in Loop: Header=BB6_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_47
.LBB6_45:                               #   in Loop: Header=BB6_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB6_47:                               #   in Loop: Header=BB6_16 Depth=1
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
	movq	needs(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_50
# BB#48:                                #   in Loop: Header=BB6_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_50
# BB#49:                                #   in Loop: Header=BB6_16 Depth=1
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
.LBB6_50:                               #   in Loop: Header=BB6_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
.LBB6_30:                               #   in Loop: Header=BB6_16 Depth=1
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_33
# BB#31:                                #   in Loop: Header=BB6_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_33
# BB#32:                                #   in Loop: Header=BB6_16 Depth=1
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
	jmp	.LBB6_33
.LBB6_21:                               #   in Loop: Header=BB6_16 Depth=1
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r15, %rsi
	callq	MakeWord
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB6_23
# BB#22:                                #   in Loop: Header=BB6_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_26
.LBB6_23:                               #   in Loop: Header=BB6_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB6_24
# BB#25:                                #   in Loop: Header=BB6_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB6_26
.LBB6_24:                               #   in Loop: Header=BB6_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB6_26:                               #   in Loop: Header=BB6_16 Depth=1
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
	movq	needs(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB6_29
# BB#27:                                #   in Loop: Header=BB6_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB6_29
# BB#28:                                #   in Loop: Header=BB6_16 Depth=1
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
.LBB6_29:                               #   in Loop: Header=BB6_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	jmp	.LBB6_30
.LBB6_51:
	movq	-64(%rbp), %rdi
	callq	DisposeObject
	movq	-584(%rbp), %rdi
	callq	fclose
	cmpl	$0, -592(%rbp)
	je	.LBB6_53
# BB#52:
	movl	$.L.str.27, %edi
	callq	remove
.LBB6_53:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, wordcount(%rip)
	addq	$576, %rsp              # imm = 0x240
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	PS_PrintGraphicInclude, .Lfunc_end6-PS_PrintGraphicInclude
	.cfi_endproc

	.align	16, 0x90
	.type	PS_CoordScale,@function
PS_CoordScale:                          # @PS_CoordScale
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
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movq	out_fp(%rip), %rdi
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	movl	$.L.str.34, %esi
	movb	$2, %al
	callq	fprintf
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	PS_CoordScale, .Lfunc_end7-PS_CoordScale
	.cfi_endproc

	.align	16, 0x90
	.type	strip_out,@function
strip_out:                              # @strip_out
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
	movq	%rdi, -16(%rbp)
	movl	$.L.str.35, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB8_2
# BB#1:
	movl	$1, -4(%rbp)
	jmp	.LBB8_5
.LBB8_2:
	movq	-16(%rbp), %rdi
	movl	$.L.str.36, %esi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB8_4
# BB#3:
	movl	$1, -4(%rbp)
	jmp	.LBB8_5
.LBB8_4:
	movl	$0, -4(%rbp)
.LBB8_5:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	strip_out, .Lfunc_end8-strip_out
	.cfi_endproc

	.globl	ConvertToPDFName
	.align	16, 0x90
	.type	ConvertToPDFName,@function
ConvertToPDFName:                       # @ConvertToPDFName
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
	pushq	%rbx
	subq	$24, %rsp
.Ltmp44:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	$ConvertToPDFName.buff, %edi
	movl	$.L.str.29, %esi
	callq	strcpy
	movl	$ConvertToPDFName.buff, %edi
	callq	strlen
	leaq	ConvertToPDFName.buff(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -32(%rbp)
	movl	$ConvertToPDFName.buff+199, %ebx
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_10:                               #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movb	(%rax), %al
	movq	-24(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -24(%rbp)
	movb	%al, (%rcx)
	incq	-32(%rbp)
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB9_12
# BB#2:                                 #   in Loop: Header=BB9_1 Depth=1
	cmpq	%rbx, -24(%rbp)
	jb	.LBB9_4
# BB#3:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	-16(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$49, %edi
	movl	$12, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB9_4:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$97, %eax
	jl	.LBB9_6
# BB#5:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$123, %eax
	jl	.LBB9_10
.LBB9_6:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$65, %eax
	jl	.LBB9_8
# BB#7:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$91, %eax
	jl	.LBB9_10
.LBB9_8:                                #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jl	.LBB9_11
# BB#9:                                 #   in Loop: Header=BB9_1 Depth=1
	movq	-32(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$57, %eax
	jle	.LBB9_10
.LBB9_11:                               #   in Loop: Header=BB9_1 Depth=1
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	$95, (%rax)
	incq	-32(%rbp)
	jmp	.LBB9_1
.LBB9_12:
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	$0, (%rax)
	movl	$ConvertToPDFName.buff, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	ConvertToPDFName, .Lfunc_end9-ConvertToPDFName
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintInitialize,@function
PS_PrintInitialize:                     # @PS_PrintInitialize
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rdi, out_fp(%rip)
	movl	$0, prologue_done(%rip)
	movl	$-1, gs_stack_top(%rip)
	movl	$0, currentfont(%rip)
	movl	$0, currentcolour(%rip)
	movl	$0, cpexists(%rip)
	movl	$0, pagecount(%rip)
	movl	$0, wordcount(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB10_5
.LBB10_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB10_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB10_5
.LBB10_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB10_5:
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
	movq	%rax, needs(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB10_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB10_10
.LBB10_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB10_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB10_10
.LBB10_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB10_10:
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
	movq	%rax, supplied(%rip)
	movl	$200, %edi
	callq	ltab_new
	movq	%rax, link_dest_tab(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB10_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB10_15
.LBB10_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB10_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB10_15
.LBB10_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB10_15:
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
	movq	%rax, link_source_list(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	PS_PrintInitialize, .Lfunc_end10-PS_PrintInitialize
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI11_0:
	.long	1141751808              # float 567
	.text
	.align	16, 0x90
	.type	PS_PrintLength,@function
PS_PrintLength:                         # @PS_PrintLength
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	-12(%rbp), %xmm0
	divss	.LCPI11_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.39, %esi
	movb	$1, %al
	callq	sprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	PS_PrintLength, .Lfunc_end11-PS_PrintLength
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintPageSetupForFont,@function
PS_PrintPageSetupForFont:               # @PS_PrintPageSetupForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
.Ltmp54:
	.cfi_offset %rbx, -48
.Ltmp55:
	.cfi_offset %r12, -40
.Ltmp56:
	.cfi_offset %r14, -32
.Ltmp57:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	out_fp(%rip), %rdi
	movq	-56(%rbp), %rdx
	movl	$.L.str.40, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-40(%rbp), %rax
	testb	$-128, 60(%rax)
	je	.LBB12_2
# BB#1:
	movq	-40(%rbp), %rax
	movzbl	60(%rax), %edi
	andl	$127, %edi
	movl	-44(%rbp), %esi
	callq	MapEnsurePrinted
	movq	out_fp(%rip), %r14
	movq	-56(%rbp), %r15
	movq	-64(%rbp), %r12
	movq	-40(%rbp), %rax
	movzbl	60(%rax), %edi
	andl	$127, %edi
	callq	MapEncodingName
	movq	%rax, %rbx
	movq	-56(%rbp), %r9
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rbx, %r8
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	$.L.str.42, %esi
	xorl	%eax, %eax
	movq	%rdx, %r8
	callq	fprintf
	jmp	.LBB12_3
.LBB12_2:
	movq	out_fp(%rip), %rdi
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	$.L.str.43, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB12_3:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	PS_PrintPageSetupForFont, .Lfunc_end12-PS_PrintPageSetupForFont
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintPageResourceForFont,@function
PS_PrintPageResourceForFont:            # @PS_PrintPageResourceForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	out_fp(%rip), %rdi
	movl	$.L.str.45, %edx
	testl	%esi, %esi
	jne	.LBB13_2
# BB#1:                                 # %select.mid
	movl	$.L.str.26, %edx
.LBB13_2:                               # %select.end
	movq	-8(%rbp), %rcx
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	PS_PrintPageResourceForFont, .Lfunc_end13-PS_PrintPageResourceForFont
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintMapping,@function
PS_PrintMapping:                        # @PS_PrintMapping
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
.Ltmp62:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp63:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp64:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	out_fp(%rip), %rdi
	movq	24(%rax), %rdx
	addq	$64, %rdx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdx
	addq	$64, %rdx
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, -28(%rbp)
	movl	$32, %ebx
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_2:                               #   in Loop: Header=BB14_1 Depth=1
	movq	out_fp(%rip), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx,%rax,8), %rdx
	addq	$64, %rdx
	leal	1(%rax), %ecx
	movl	%ecx, %esi
	sarl	$31, %esi
	shrl	$29, %esi
	leal	1(%rax,%rsi), %eax
	andl	$-8, %eax
	cmpl	%eax, %ecx
	movl	$10, %ecx
	cmovnel	%ebx, %ecx
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	callq	fprintf
	incl	-28(%rbp)
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -28(%rbp)
	jle	.LBB14_2
# BB#3:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.49, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	PS_PrintMapping, .Lfunc_end14-PS_PrintMapping
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.align	16, 0x90
	.type	PS_PrintBeforeFirstPage,@function
PS_PrintBeforeFirstPage:                # @PS_PrintBeforeFirstPage
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$576, %rsp              # imm = 0x240
.Ltmp68:
	.cfi_offset %rbx, -48
.Ltmp69:
	.cfi_offset %r12, -40
.Ltmp70:
	.cfi_offset %r14, -32
.Ltmp71:
	.cfi_offset %r15, -24
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	cmpl	$0, Encapsulated(%rip)
	je	.LBB15_2
# BB#1:
	movq	out_fp(%rip), %rsi
	movl	$.L.str.51, %edi
	jmp	.LBB15_3
.LBB15_2:
	movq	out_fp(%rip), %rsi
	movl	$.L.str.52, %edi
.LBB15_3:
	callq	fputs
	movq	out_fp(%rip), %rdi
	movl	$.L.str.53, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rbx
	callq	TimeString
	movq	%rax, %rcx
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movq	out_fp(%rip), %rsi
	movl	$.L.str.56, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.57, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.58, %edi
	callq	fputs
	movq	out_fp(%rip), %rbx
	movl	-36(%rbp), %edi
	movl	-40(%rbp), %esi
	callq	MediaName
	movq	%rax, %rdx
	movslq	-36(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$35, %rcx
	addl	%eax, %ecx
	movslq	-40(%rbp), %rax
	imulq	$1717986919, %rax, %r8  # imm = 0x66666667
	movq	%r8, %rax
	shrq	$63, %rax
	sarq	$35, %r8
	addl	%eax, %r8d
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	fprintf
	movq	out_fp(%rip), %rsi
	movl	$.L.str.60, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.61, %edi
	callq	fputs
	movq	out_fp(%rip), %rdi
	movslq	-36(%rbp), %rax
	imulq	$1717986919, %rax, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$35, %rdx
	addl	%eax, %edx
	movslq	-40(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rax
	shrq	$63, %rax
	sarq	$35, %rcx
	addl	%eax, %ecx
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rsi
	movl	$.L.str.63, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.64, %edi
	callq	fputs
	movq	out_fp(%rip), %rdi
	movl	$.L.str.65, %esi
	movl	$.L.str.66, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rsi
	movl	$.L.str.67, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.68, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.69, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.70, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.71, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.72, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.73, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.74, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.75, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.76, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.77, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.78, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.79, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.80, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.81, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.82, %edi
	callq	fputs
	movq	out_fp(%rip), %rdi
	movl	$.L.str.83, %esi
	movl	$1440, %edx             # imm = 0x5A0
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.84, %esi
	movl	$567, %edx              # imm = 0x237
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.85, %esi
	movl	$20, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.86, %esi
	movl	$120, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rsi
	movl	$.L.str.87, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.88, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.89, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.90, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.91, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.92, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.93, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.94, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.95, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.96, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.97, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.98, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.99, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.100, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.101, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.102, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.103, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.104, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.105, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.106, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.107, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.108, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.109, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.102, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.110, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.111, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.112, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.113, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.114, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.115, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.116, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.117, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.118, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.119, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.120, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.121, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.122, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.123, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.124, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.102, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.125, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.126, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.127, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.128, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.129, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.130, %edi
	callq	fputs
	movl	$6, %edi
	callq	FirstFile
	movw	%ax, -50(%rbp)
	leaq	-576(%rbp), %rbx
	leaq	-560(%rbp), %r14
	movb	$1, %r12b
	jmp	.LBB15_4
	.align	16, 0x90
.LBB15_27:                              #   in Loop: Header=BB15_4 Depth=1
	movzwl	-50(%rbp), %edi
	callq	NextFile
	movw	%ax, -50(%rbp)
.LBB15_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_24 Depth 2
	cmpw	$0, -50(%rbp)
	je	.LBB15_28
# BB#5:                                 #   in Loop: Header=BB15_4 Depth=1
	movzwl	-50(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -584(%rbp)
	testq	%rax, %rax
	je	.LBB15_6
# BB#8:                                 #   in Loop: Header=BB15_4 Depth=1
	movq	-584(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	je	.LBB15_9
# BB#10:                                #   in Loop: Header=BB15_4 Depth=1
	movl	$.L.str.134, %esi
	movq	%rbx, %rdi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB15_22
# BB#11:                                #   in Loop: Header=BB15_4 Depth=1
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r14, %rsi
	callq	MakeWord
	movq	%rax, -592(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r12b, %r12b
	jne	.LBB15_13
# BB#12:                                #   in Loop: Header=BB15_4 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_16
	.align	16, 0x90
.LBB15_6:                               #   in Loop: Header=BB15_4 Depth=1
	movzwl	-50(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r15
	movzwl	-50(%rbp), %edi
	callq	FileName
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$3, %esi
	movl	$.L.str.131, %edx
	jmp	.LBB15_7
	.align	16, 0x90
.LBB15_9:                               #   in Loop: Header=BB15_4 Depth=1
	movzwl	-50(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r15
	movzwl	-50(%rbp), %edi
	callq	FileName
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$4, %esi
	movl	$.L.str.133, %edx
.LBB15_7:                               #   in Loop: Header=BB15_4 Depth=1
	movl	$2, %ecx
	movl	$.L.str.132, %r9d
	xorl	%eax, %eax
	movq	%r15, %r8
	callq	Error
	jmp	.LBB15_27
.LBB15_22:                              #   in Loop: Header=BB15_4 Depth=1
	movzwl	-50(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r15
	movzwl	-50(%rbp), %edi
	callq	FileName
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$5, %esi
	movl	$.L.str.135, %edx
	movl	$2, %ecx
	movl	$.L.str.132, %r9d
	xorl	%eax, %eax
	movq	%r15, %r8
	callq	Error
	jmp	.LBB15_23
.LBB15_13:                              #   in Loop: Header=BB15_4 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_14
# BB#15:                                #   in Loop: Header=BB15_4 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_16
.LBB15_14:                              #   in Loop: Header=BB15_4 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB15_16:                              #   in Loop: Header=BB15_4 Depth=1
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
	movq	supplied(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_19
# BB#17:                                #   in Loop: Header=BB15_4 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB15_19
# BB#18:                                #   in Loop: Header=BB15_4 Depth=1
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
.LBB15_19:                              #   in Loop: Header=BB15_4 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-592(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_23
# BB#20:                                #   in Loop: Header=BB15_4 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB15_23
# BB#21:                                #   in Loop: Header=BB15_4 Depth=1
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
.LBB15_23:                              #   in Loop: Header=BB15_4 Depth=1
	movq	out_fp(%rip), %rsi
	movq	%rbx, %rdi
	callq	fputs
	movq	out_fp(%rip), %r15
	movzwl	-50(%rbp), %edi
	callq	FileName
	movq	%rax, %rcx
	movl	$.L.str.136, %esi
	movl	$.L.str.132, %edx
	xorl	%eax, %eax
	movq	%r15, %rdi
	callq	fprintf
	jmp	.LBB15_24
	.align	16, 0x90
.LBB15_25:                              #   in Loop: Header=BB15_24 Depth=2
	movq	out_fp(%rip), %rsi
	movq	%rbx, %rdi
	callq	fputs
.LBB15_24:                              #   Parent Loop BB15_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-584(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%rbx, %rdi
	callq	fgets
	testq	%rax, %rax
	jne	.LBB15_25
# BB#26:                                #   in Loop: Header=BB15_4 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$.L.str.1, %edi
	callq	fputs
	movq	-584(%rbp), %rdi
	callq	fclose
	jmp	.LBB15_27
.LBB15_28:
	movq	out_fp(%rip), %rsi
	movl	$.L.str.137, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.138, %edi
	callq	fputs
	xorl	%eax, %eax
	callq	MapPrintEncodings
	movq	out_fp(%rip), %rsi
	movl	$.L.str.139, %edi
	callq	fputs
	movq	out_fp(%rip), %rsi
	movl	$.L.str.140, %edi
	callq	fputs
	movq	out_fp(%rip), %rdi
	movl	$.L.str.141, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-48(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB15_29
	.align	16, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_29 Depth=1
	movq	-64(%rbp), %rax
	movzbl	(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rdi
	movq	out_fp(%rip), %rsi
	callq	fputs
	incq	-64(%rbp)
.LBB15_29:                              # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB15_30
# BB#31:
	movq	out_fp(%rip), %rdi
	movl	pagecount(%rip), %edx
	incl	%edx
	movl	%edx, pagecount(%rip)
	movl	$.L.str.142, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.143, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageResources
	movq	out_fp(%rip), %rdi
	movl	$.L.str.144, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageSetup
	callq	FontAdvanceCurrentPage
	movq	out_fp(%rip), %rdi
	movsd	.LCPI15_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.145, %esi
	movl	$10, %edx
	movb	$1, %al
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.146, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, prologue_done(%rip)
	addq	$576, %rsp              # imm = 0x240
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	PS_PrintBeforeFirstPage, .Lfunc_end15-PS_PrintBeforeFirstPage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4587366580439587226     # double 0.050000000000000003
	.text
	.align	16, 0x90
	.type	PS_PrintBetweenPages,@function
PS_PrintBetweenPages:                   # @PS_PrintBetweenPages
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	out_fp(%rip), %rdi
	movl	$.L.str.162, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, gs_stack_top(%rip)
	movl	$0, cpexists(%rip)
	movl	$0, currentfont(%rip)
	movl	$0, currentcolour(%rip)
	cmpl	$0, Encapsulated(%rip)
	je	.LBB16_2
# BB#1:
	callq	PS_PrintAfterLastPage
	movq	no_fpos(%rip), %r8
	movl	$49, %edi
	movl	$6, %esi
	movl	$.L.str.163, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB16_2:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.164, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB16_3
	.align	16, 0x90
.LBB16_4:                               #   in Loop: Header=BB16_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rdi
	movq	out_fp(%rip), %rsi
	callq	fputs
	incq	-24(%rbp)
.LBB16_3:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB16_4
# BB#5:
	movq	out_fp(%rip), %rdi
	movl	pagecount(%rip), %edx
	incl	%edx
	movl	%edx, pagecount(%rip)
	movl	$.L.str.142, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.143, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageResources
	movq	out_fp(%rip), %rdi
	movl	$.L.str.144, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageSetup
	callq	FontAdvanceCurrentPage
	movq	out_fp(%rip), %rdi
	movsd	.LCPI16_0(%rip), %xmm0  # xmm0 = mem[0],zero
	movl	$.L.str.145, %esi
	movl	$10, %edx
	movb	$1, %al
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.165, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, wordcount(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	PS_PrintBetweenPages, .Lfunc_end16-PS_PrintBetweenPages
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintAfterLastPage,@function
PS_PrintAfterLastPage:                  # @PS_PrintAfterLastPage
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	cmpl	$0, prologue_done(%rip)
	je	.LBB17_19
# BB#1:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.162, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.166, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	callq	FontNeeded
	movl	%eax, -20(%rbp)
	movq	needs(%rip), %rax
	jmp	.LBB17_2
	.align	16, 0x90
.LBB17_11:                              #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%rbp), %rcx
	addq	$64, %rcx
	movl	$.L.str.168, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, -20(%rbp)
	movq	-16(%rbp), %rax
.LBB17_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_4 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	needs(%rip), %rax
	je	.LBB17_12
# BB#3:                                 #   in Loop: Header=BB17_2 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB17_4
	.align	16, 0x90
.LBB17_5:                               #   in Loop: Header=BB17_4 Depth=2
	movq	-8(%rbp), %rax
.LBB17_4:                               #   Parent Loop BB17_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_5
# BB#6:                                 #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB17_9
# BB#7:                                 #   in Loop: Header=BB17_2 Depth=1
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB17_9
# BB#8:                                 #   in Loop: Header=BB17_2 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.167, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB17_9:                               #   in Loop: Header=BB17_2 Depth=1
	movq	out_fp(%rip), %rdi
	cmpl	$0, -20(%rbp)
	movl	$.L.str.18, %edx
	jne	.LBB17_11
# BB#10:                                # %select.mid
                                        #   in Loop: Header=BB17_2 Depth=1
	movl	$.L.str.26, %edx
	jmp	.LBB17_11
.LBB17_12:
	movq	out_fp(%rip), %rdi
	movl	$.L.str.169, %esi
	movl	$.L.str.66, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	supplied(%rip), %rax
	jmp	.LBB17_13
	.align	16, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_13 Depth=1
	movq	out_fp(%rip), %rdi
	movq	-8(%rbp), %rdx
	addq	$64, %rdx
	movl	$.L.str.170, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rax
.LBB17_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_15 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	supplied(%rip), %rax
	je	.LBB17_18
# BB#14:                                #   in Loop: Header=BB17_13 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB17_15
	.align	16, 0x90
.LBB17_16:                              #   in Loop: Header=BB17_15 Depth=2
	movq	-8(%rbp), %rax
.LBB17_15:                              #   Parent Loop BB17_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_16
	jmp	.LBB17_17
.LBB17_18:
	movq	out_fp(%rip), %rdi
	callq	MapPrintPSResources
	movq	out_fp(%rip), %rdi
	movl	pagecount(%rip), %edx
	movl	$.L.str.171, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	out_fp(%rip), %rdi
	movl	$.L.str.172, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB17_19:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	PS_PrintAfterLastPage, .Lfunc_end17-PS_PrintAfterLastPage
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintWord,@function
PS_PrintWord:                           # @PS_PrintWord
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$304, %rsp              # imm = 0x130
.Ltmp81:
	.cfi_offset %rbx, -32
.Ltmp82:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	incl	TotalWordCount(%rip)
	movq	-24(%rbp), %rax
	movl	$4095, %edi             # imm = 0xFFF
	movl	40(%rax), %eax
	andl	%edi, %eax
	cmpl	currentfont(%rip), %eax
	je	.LBB18_4
# BB#1:
	movq	-24(%rbp), %rax
	andl	40(%rax), %edi
	movl	%edi, currentfont(%rip)
	callq	FontHalfXHeight
	movw	%ax, currentxheight2(%rip)
	movq	out_fp(%rip), %r14
	movl	currentfont(%rip), %edi
	movq	-24(%rbp), %rsi
	callq	FontSize
	movl	%eax, %ebx
	movl	currentfont(%rip), %edi
	callq	FontName
	movq	%rax, %rcx
	movl	$.L.str.173, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movl	wordcount(%rip), %eax
	incl	%eax
	movl	%eax, wordcount(%rip)
	cmpl	$5, %eax
	jl	.LBB18_3
# BB#2:
	movq	out_fp(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	movl	$0, wordcount(%rip)
	jmp	.LBB18_4
.LBB18_3:
	movq	out_fp(%rip), %rsi
	movl	$32, %edi
	callq	_IO_putc
.LBB18_4:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB18_9
# BB#5:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, currentcolour(%rip)
	je	.LBB18_9
# BB#6:
	movq	out_fp(%rip), %rbx
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movl	wordcount(%rip), %eax
	incl	%eax
	movl	%eax, wordcount(%rip)
	cmpl	$5, %eax
	jl	.LBB18_8
# BB#7:
	movq	out_fp(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	movl	$0, wordcount(%rip)
	jmp	.LBB18_9
.LBB18_8:
	movq	out_fp(%rip), %rsi
	movl	$32, %edi
	callq	_IO_putc
.LBB18_9:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
	.align	16, 0x90
.LBB18_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_13 Depth 2
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_29 Depth 3
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	movq	-48(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -48(%rbp)
	movb	%al, (%rcx)
	movq	-72(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB18_24
# BB#11:                                #   in Loop: Header=BB18_10 Depth=1
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	je	.LBB18_24
# BB#12:                                #   in Loop: Header=BB18_10 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	leaq	256(%rax,%rcx), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB18_13
	.align	16, 0x90
.LBB18_30:                              #   in Loop: Header=BB18_13 Depth=2
	incq	-56(%rbp)
.LBB18_13:                              #   Parent Loop BB18_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB18_15 Depth 3
                                        #       Child Loop BB18_29 Depth 3
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	-1(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB18_24
# BB#14:                                #   in Loop: Header=BB18_13 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB18_15
	.align	16, 0x90
.LBB18_21:                              #   in Loop: Header=BB18_15 Depth=3
	incq	-56(%rbp)
	incq	-64(%rbp)
.LBB18_15:                              #   Parent Loop BB18_10 Depth=1
                                        #     Parent Loop BB18_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB18_16
# BB#17:                                #   in Loop: Header=BB18_15 Depth=3
	movq	-56(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB18_18
# BB#19:                                #   in Loop: Header=BB18_15 Depth=3
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	jmp	.LBB18_20
	.align	16, 0x90
.LBB18_16:                              #   in Loop: Header=BB18_15 Depth=3
	xorl	%eax, %eax
	jmp	.LBB18_20
.LBB18_18:                              #   in Loop: Header=BB18_15 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB18_20:                              #   in Loop: Header=BB18_15 Depth=3
	testb	%al, %al
	jne	.LBB18_21
# BB#22:                                #   in Loop: Header=BB18_13 Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB18_23
	.align	16, 0x90
.LBB18_29:                              #   Parent Loop BB18_10 Depth=1
                                        #     Parent Loop BB18_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	cmpb	$0, 1(%rax)
	jne	.LBB18_29
	jmp	.LBB18_30
.LBB18_23:                              #   in Loop: Header=BB18_10 Depth=1
	movq	-56(%rbp), %rax
	movb	(%rax), %al
	movq	-48(%rbp), %rcx
	movb	%al, -1(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	.align	16, 0x90
.LBB18_24:                              #   in Loop: Header=BB18_10 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB18_10
# BB#25:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	24(%rcx,%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	16(%rcx,%rax), %rax
	movq	%rax, -112(%rbp)
	movswl	currentxheight2(%rip), %eax
	subl	%eax, -32(%rbp)
	cmpl	$0, cpexists(%rip)
	je	.LBB18_36
# BB#26:
	movl	currenty(%rip), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB18_36
# BB#27:
	cmpl	$0, -28(%rbp)
	js	.LBB18_31
# BB#28:
	movl	-28(%rbp), %eax
	movl	%eax, -152(%rbp)
	jmp	.LBB18_32
.LBB18_36:
	movl	-32(%rbp), %eax
	movl	%eax, currenty(%rip)
	cmpl	$0, -28(%rbp)
	js	.LBB18_38
# BB#37:
	movl	-28(%rbp), %eax
	movl	%eax, -184(%rbp)
	jmp	.LBB18_39
.LBB18_38:
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -184(%rbp)
	movq	out_fp(%rip), %rsi
	movl	$45, %edi
	callq	_IO_putc
.LBB18_39:
	movl	$0, -180(%rbp)
	.align	16, 0x90
.LBB18_40:                              # =>This Inner Loop Header: Depth=1
	movslq	-184(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	$48, %eax
	movslq	-180(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -180(%rbp)
	movb	%al, -176(%rbp,%rcx)
	movslq	-184(%rbp), %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -184(%rbp)
	testl	%eax, %eax
	jg	.LBB18_40
	.align	16, 0x90
.LBB18_41:                              # =>This Inner Loop Header: Depth=1
	decl	-180(%rbp)
	movslq	-180(%rbp), %rax
	movsbl	-176(%rbp,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	cmpl	$0, -180(%rbp)
	jne	.LBB18_41
# BB#42:
	movq	out_fp(%rip), %rsi
	movl	$32, %edi
	callq	_IO_putc
	cmpl	$0, currenty(%rip)
	js	.LBB18_44
# BB#43:
	movl	currenty(%rip), %eax
	movl	%eax, -216(%rbp)
	jmp	.LBB18_45
.LBB18_44:
	xorl	%eax, %eax
	subl	currenty(%rip), %eax
	movl	%eax, -216(%rbp)
	movq	out_fp(%rip), %rsi
	movl	$45, %edi
	callq	_IO_putc
.LBB18_45:
	movl	$0, -212(%rbp)
	.align	16, 0x90
.LBB18_46:                              # =>This Inner Loop Header: Depth=1
	movslq	-216(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	$48, %eax
	movslq	-212(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -212(%rbp)
	movb	%al, -208(%rbp,%rcx)
	movslq	-216(%rbp), %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -216(%rbp)
	testl	%eax, %eax
	jg	.LBB18_46
	.align	16, 0x90
.LBB18_47:                              # =>This Inner Loop Header: Depth=1
	decl	-212(%rbp)
	movslq	-212(%rbp), %rax
	movsbl	-208(%rbp,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	cmpl	$0, -212(%rbp)
	jne	.LBB18_47
# BB#48:
	movq	-24(%rbp), %rax
	movl	$.L.str.177, %ecx
	movl	$.L.str.178, %edx
	btl	$22, 40(%rax)
	cmovbq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
	movl	$1, cpexists(%rip)
	jmp	.LBB18_49
.LBB18_31:
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -152(%rbp)
	movq	out_fp(%rip), %rsi
	movl	$45, %edi
	callq	_IO_putc
.LBB18_32:
	movl	$0, -148(%rbp)
	.align	16, 0x90
.LBB18_33:                              # =>This Inner Loop Header: Depth=1
	movslq	-152(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	$48, %eax
	movslq	-148(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -148(%rbp)
	movb	%al, -144(%rbp,%rcx)
	movslq	-152(%rbp), %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -152(%rbp)
	testl	%eax, %eax
	jg	.LBB18_33
	.align	16, 0x90
.LBB18_34:                              # =>This Inner Loop Header: Depth=1
	decl	-148(%rbp)
	movslq	-148(%rbp), %rax
	movsbl	-144(%rbp,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	cmpl	$0, -148(%rbp)
	jne	.LBB18_34
# BB#35:
	movq	-24(%rbp), %rax
	movl	$.L.str.175, %ecx
	movl	$.L.str.176, %edx
	btl	$22, 40(%rax)
	cmovbq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
.LBB18_49:
	movq	out_fp(%rip), %rsi
	movl	$40, %edi
	callq	_IO_putc
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	64(%rax), %eax
	movq	-112(%rbp), %rcx
	cmpw	$0, (%rcx,%rax,2)
	je	.LBB18_57
# BB#50:
	movq	out_fp(%rip), %rdi
	movq	-96(%rbp), %rdx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-112(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %eax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,2), %rdi
	movq	-24(%rbp), %rax
	movl	40(%rax), %esi
	shrl	$22, %esi
	andl	$1, %esi
	movq	out_fp(%rip), %rdx
	callq	PrintComposite
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	testl	%eax, %eax
	js	.LBB18_52
# BB#51:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	movl	%eax, -248(%rbp)
	jmp	.LBB18_53
.LBB18_57:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rdi
	movq	out_fp(%rip), %rsi
	callq	fputs
	jmp	.LBB18_58
.LBB18_52:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	negl	%eax
	movl	%eax, -248(%rbp)
	movq	out_fp(%rip), %rsi
	movl	$45, %edi
	callq	_IO_putc
.LBB18_53:
	movl	$0, -244(%rbp)
	.align	16, 0x90
.LBB18_54:                              # =>This Inner Loop Header: Depth=1
	movslq	-248(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	$48, %eax
	movslq	-244(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -244(%rbp)
	movb	%al, -240(%rbp,%rcx)
	movslq	-248(%rbp), %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -248(%rbp)
	testl	%eax, %eax
	jg	.LBB18_54
	.align	16, 0x90
.LBB18_55:                              # =>This Inner Loop Header: Depth=1
	decl	-244(%rbp)
	movslq	-244(%rbp), %rax
	movsbl	-240(%rbp,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	cmpl	$0, -244(%rbp)
	jne	.LBB18_55
# BB#56:
	movq	out_fp(%rip), %rsi
	movl	$40, %edi
	callq	_IO_putc
	movq	-24(%rbp), %rax
	movl	$.L.str.180, %ecx
	movl	$.L.str.181, %edx
	btl	$22, 40(%rax)
	cmovbq	%rcx, %rdx
	movq	%rdx, -96(%rbp)
.LBB18_58:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	40(%rcx,%rax), %rax
	movzbl	60(%rax), %eax
	andl	$127, %eax
	movl	%eax, -100(%rbp)
	movl	-100(%rbp), %eax
	movl	$2945, %ecx             # imm = 0xB81
	addq	MapTable(,%rax,8), %rcx
	movq	%rcx, -80(%rbp)
	incq	-40(%rbp)
	movl	$.L.str.183, %r14d
	movl	$.L.str.180, %ebx
	jmp	.LBB18_59
	.align	16, 0x90
.LBB18_77:                              #   in Loop: Header=BB18_59 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$40, %edi
	callq	_IO_putc
	movq	-24(%rbp), %rax
	btl	$22, 40(%rax)
	movl	$.L.str.181, %eax
	cmovbq	%rbx, %rax
	movq	%rax, -96(%rbp)
	incq	-40(%rbp)
.LBB18_59:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_63 Depth 2
                                        #     Child Loop BB18_75 Depth 2
                                        #     Child Loop BB18_76 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB18_79
# BB#60:                                #   in Loop: Header=BB18_59 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -252(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -256(%rbp)
	movslq	-252(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	64(%rdx,%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, -260(%rbp)
	je	.LBB18_61
# BB#62:                                #   in Loop: Header=BB18_59 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movq	%rax, -272(%rbp)
	movl	-260(%rbp), %eax
	movl	%eax, -264(%rbp)
	jmp	.LBB18_63
	.align	16, 0x90
.LBB18_64:                              #   in Loop: Header=BB18_63 Depth=2
	incl	-264(%rbp)
.LBB18_63:                              #   Parent Loop BB18_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-264(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	-256(%rbp), %eax
	jg	.LBB18_64
# BB#65:                                #   in Loop: Header=BB18_59 Depth=1
	movslq	-264(%rbp), %rax
	movq	-272(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	xorl	%eax, %eax
	cmpl	-256(%rbp), %ecx
	jne	.LBB18_67
# BB#66:                                #   in Loop: Header=BB18_59 Depth=1
	movslq	-264(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	80(%rdx,%rcx), %rsi
	movq	88(%rdx,%rcx), %rcx
	movzbl	(%rsi,%rax), %eax
	movswl	(%rcx,%rax,2), %eax
.LBB18_67:                              #   in Loop: Header=BB18_59 Depth=1
	movl	%eax, -84(%rbp)
	jmp	.LBB18_68
	.align	16, 0x90
.LBB18_61:                              #   in Loop: Header=BB18_59 Depth=1
	movl	$0, -84(%rbp)
.LBB18_68:                              #   in Loop: Header=BB18_59 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB18_70
# BB#69:                                #   in Loop: Header=BB18_59 Depth=1
	movq	out_fp(%rip), %rdi
	movq	-96(%rbp), %rdx
	xorl	%ecx, %ecx
	subl	-84(%rbp), %ecx
	movl	$.L.str.182, %esi
	xorl	%eax, %eax
	callq	fprintf
	incl	wordcount(%rip)
	movq	-24(%rbp), %rax
	btl	$22, 40(%rax)
	movl	$.L.str.184, %eax
	cmovbq	%r14, %rax
	movq	%rax, -96(%rbp)
.LBB18_70:                              #   in Loop: Header=BB18_59 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-112(%rbp), %rcx
	cmpw	$0, (%rcx,%rax,2)
	je	.LBB18_78
# BB#71:                                #   in Loop: Header=BB18_59 Depth=1
	movq	out_fp(%rip), %rdi
	movq	-96(%rbp), %rdx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-112(%rbp), %rcx
	movzwl	(%rcx,%rax,2), %eax
	movq	-120(%rbp), %rcx
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,2), %rdi
	movq	-24(%rbp), %rax
	movl	40(%rax), %esi
	shrl	$22, %esi
	andl	$1, %esi
	movq	out_fp(%rip), %rdx
	callq	PrintComposite
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	testl	%eax, %eax
	js	.LBB18_73
# BB#72:                                #   in Loop: Header=BB18_59 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	movl	%eax, -312(%rbp)
	jmp	.LBB18_74
	.align	16, 0x90
.LBB18_78:                              #   in Loop: Header=BB18_59 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rdi
	movq	out_fp(%rip), %rsi
	callq	fputs
	incq	-40(%rbp)
	jmp	.LBB18_59
	.align	16, 0x90
.LBB18_73:                              #   in Loop: Header=BB18_59 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	(%rdx,%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	movswl	6(%rcx,%rax,2), %eax
	negl	%eax
	movl	%eax, -312(%rbp)
	movq	out_fp(%rip), %rsi
	movl	$45, %edi
	callq	_IO_putc
.LBB18_74:                              #   in Loop: Header=BB18_59 Depth=1
	movl	$0, -308(%rbp)
	.align	16, 0x90
.LBB18_75:                              #   Parent Loop BB18_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-312(%rbp), %rax
	imulq	$1717986919, %rax, %rcx # imm = 0x66666667
	movq	%rcx, %rdx
	shrq	$63, %rdx
	sarq	$34, %rcx
	addl	%edx, %ecx
	addl	%ecx, %ecx
	leal	(%rcx,%rcx,4), %ecx
	subl	%ecx, %eax
	addl	$48, %eax
	movslq	-308(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -308(%rbp)
	movb	%al, -304(%rbp,%rcx)
	movslq	-312(%rbp), %rax
	imulq	$1717986919, %rax, %rax # imm = 0x66666667
	movq	%rax, %rcx
	shrq	$63, %rcx
	sarq	$34, %rax
	addl	%ecx, %eax
	movl	%eax, -312(%rbp)
	testl	%eax, %eax
	jg	.LBB18_75
	.align	16, 0x90
.LBB18_76:                              #   Parent Loop BB18_59 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	-308(%rbp)
	movslq	-308(%rbp), %rax
	movsbl	-304(%rbp,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	cmpl	$0, -308(%rbp)
	jne	.LBB18_76
	jmp	.LBB18_77
.LBB18_79:
	movl	wordcount(%rip), %eax
	incl	%eax
	movl	%eax, wordcount(%rip)
	cmpl	$5, %eax
	jl	.LBB18_81
# BB#80:
	movq	out_fp(%rip), %rdi
	movq	-96(%rbp), %rdx
	movl	$.L.str.185, %esi
	xorl	%eax, %eax
	callq	fprintf
	movl	$0, wordcount(%rip)
	jmp	.LBB18_82
.LBB18_81:
	movq	out_fp(%rip), %rdi
	movq	-96(%rbp), %rdx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB18_82:
	addq	$304, %rsp              # imm = 0x130
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	PS_PrintWord, .Lfunc_end18-PS_PrintWord
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintPlainGraphic,@function
PS_PrintPlainGraphic:                   # @PS_PrintPlainGraphic
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp83:
	.cfi_def_cfa_offset 16
.Ltmp84:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp85:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.189, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	PS_PrintPlainGraphic, .Lfunc_end19-PS_PrintPlainGraphic
	.cfi_endproc

	.align	16, 0x90
	.type	PS_PrintUnderline,@function
PS_PrintUnderline:                      # @PS_PrintUnderline
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp86:
	.cfi_def_cfa_offset 16
.Ltmp87:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp88:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp89:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	-16(%rbp), %eax
	cmpl	currentcolour(%rip), %eax
	je	.LBB20_5
# BB#1:
	movl	-16(%rbp), %eax
	movl	%eax, currentcolour(%rip)
	testl	%eax, %eax
	je	.LBB20_5
# BB#2:
	movq	out_fp(%rip), %rbx
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movl	wordcount(%rip), %eax
	incl	%eax
	movl	%eax, wordcount(%rip)
	cmpl	$5, %eax
	jl	.LBB20_4
# BB#3:
	movq	out_fp(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	movl	$0, wordcount(%rip)
	jmp	.LBB20_5
.LBB20_4:
	movq	out_fp(%rip), %rsi
	movl	$32, %edi
	callq	_IO_putc
.LBB20_5:
	movq	out_fp(%rip), %rdi
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-12(%rbp), %eax
	movq	finfo(%rip), %rsi
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movswl	56(%rsi,%rax), %ebx
	subl	%ebx, %r8d
	movswl	58(%rsi,%rax), %r9d
	movl	$.L.str.190, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	PS_PrintUnderline, .Lfunc_end20-PS_PrintUnderline
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI21_0:
	.long	1124073472              # float 128
	.text
	.align	16, 0x90
	.type	PS_CoordRotate,@function
PS_CoordRotate:                         # @PS_CoordRotate
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	out_fp(%rip), %rcx
	cvtsi2ssl	%edi, %xmm0
	divss	.LCPI21_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.191, %esi
	movb	$1, %al
	movq	%rcx, %rdi
	callq	fprintf
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	PS_CoordRotate, .Lfunc_end21-PS_CoordRotate
	.cfi_endproc

	.align	16, 0x90
	.type	PS_LinkSource,@function
PS_LinkSource:                          # @PS_LinkSource
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
.Ltmp96:
	.cfi_offset %rbx, -56
.Ltmp97:
	.cfi_offset %r12, -48
.Ltmp98:
	.cfi_offset %r13, -40
.Ltmp99:
	.cfi_offset %r14, -32
.Ltmp100:
	.cfi_offset %r15, -24
	movl	%r8d, %ebx
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%ebx, -64(%rbp)
	movq	out_fp(%rip), %r14
	movl	-52(%rbp), %r15d
	movl	-56(%rbp), %r12d
	movl	-60(%rbp), %r13d
	movq	-48(%rbp), %rdi
	callq	ConvertToPDFName
	movq	%rax, (%rsp)
	movl	$.L.str.192, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	movl	%r15d, %edx
	movl	%r13d, %r8d
	movl	%ebx, %r9d
	movl	%r12d, %ecx
	callq	fprintf
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB22_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB22_5
.LBB22_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB22_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB22_5
.LBB22_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB22_5:
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
	movq	link_source_list(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB22_8
# BB#6:
	cmpq	$0, zz_res(%rip)
	je	.LBB22_8
# BB#7:
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
.LBB22_8:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB22_11
# BB#9:
	cmpq	$0, zz_res(%rip)
	je	.LBB22_11
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
.LBB22_11:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	PS_LinkSource, .Lfunc_end22-PS_LinkSource
	.cfi_endproc

	.align	16, 0x90
	.type	PS_LinkDest,@function
PS_LinkDest:                            # @PS_LinkDest
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp101:
	.cfi_def_cfa_offset 16
.Ltmp102:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp103:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp104:
	.cfi_offset %rbx, -32
.Ltmp105:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%edx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%r8d, -40(%rbp)
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	link_dest_tab(%rip), %rsi
	callq	ltab_retrieve
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB23_1
# BB#2:
	movq	-24(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-48(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, (%rsp)
	movl	$49, %edi
	movl	$13, %esi
	movl	$.L.str.194, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB23_3
.LBB23_1:
	movq	out_fp(%rip), %rbx
	movq	-24(%rbp), %rdi
	callq	ConvertToPDFName
	movq	%rax, %rcx
	movl	$.L.str.193, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	fprintf
	movq	-24(%rbp), %rdi
	movl	$link_dest_tab, %esi
	callq	ltab_insert
.LBB23_3:
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end23:
	.size	PS_LinkDest, .Lfunc_end23-PS_LinkDest
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_new,@function
ltab_new:                               # @ltab_new
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp106:
	.cfi_def_cfa_offset 16
.Ltmp107:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp108:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rax
	leaq	8(,%rax,8), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB24_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$43, %edi
	movl	$1, %esi
	movl	$.L.str.38, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_2:
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB24_3
	.align	16, 0x90
.LBB24_4:                               #   in Loop: Header=BB24_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	$0, 8(%rcx,%rax,8)
	incl	-20(%rbp)
.LBB24_3:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jl	.LBB24_4
# BB#5:
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	ltab_new, .Lfunc_end24-ltab_new
	.cfi_endproc

	.align	16, 0x90
	.type	MediaName,@function
MediaName:                              # @MediaName
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp109:
	.cfi_def_cfa_offset 16
.Ltmp110:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp111:
	.cfi_def_cfa_register %rbp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	$MediaName.paper_map, -24(%rbp)
	jmp	.LBB25_1
	.align	16, 0x90
.LBB25_5:                               #   in Loop: Header=BB25_1 Depth=1
	addq	$16, -24(%rbp)
.LBB25_1:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB25_6
# BB#2:                                 #   in Loop: Header=BB25_1 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jne	.LBB25_5
# BB#3:                                 #   in Loop: Header=BB25_1 Depth=1
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jne	.LBB25_5
# BB#4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB25_7
.LBB25_6:
	movq	MediaName.user_defined(%rip), %rax
.LBB25_7:
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
.Lfunc_end25:
	.size	MediaName, .Lfunc_end25-MediaName
	.cfi_endproc

	.align	16, 0x90
	.type	PrintComposite,@function
PrintComposite:                         # @PrintComposite
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp112:
	.cfi_def_cfa_offset 16
.Ltmp113:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp114:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	jmp	.LBB26_1
	.align	16, 0x90
.LBB26_4:                               # %select.end
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$.L.str.186, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$6, -8(%rbp)
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB26_5
# BB#2:                                 #   in Loop: Header=BB26_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movswl	2(%rax), %edx
	movswl	4(%rax), %ecx
	movzbl	(%rax), %r8d
	cmpl	$0, -12(%rbp)
	movl	$.L.str.187, %r9d
	jne	.LBB26_4
# BB#3:                                 # %select.mid
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$.L.str.188, %r9d
	jmp	.LBB26_4
.LBB26_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	PrintComposite, .Lfunc_end26-PrintComposite
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_retrieve,@function
ltab_retrieve:                          # @ltab_retrieve
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp115:
	.cfi_def_cfa_offset 16
.Ltmp116:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp117:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB27_1
	.align	16, 0x90
.LBB27_2:                               #   in Loop: Header=BB27_1 Depth=1
	movq	-64(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -64(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -52(%rbp)
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB27_2
# BB#3:
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
	je	.LBB27_12
# BB#4:
	movq	-32(%rbp), %rax
	jmp	.LBB27_5
	.align	16, 0x90
.LBB27_11:                              #   in Loop: Header=BB27_5 Depth=1
	movq	-40(%rbp), %rax
.LBB27_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB27_7 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB27_12
# BB#6:                                 #   in Loop: Header=BB27_5 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB27_7
	.align	16, 0x90
.LBB27_8:                               #   in Loop: Header=BB27_7 Depth=2
	movq	-48(%rbp), %rax
.LBB27_7:                               #   Parent Loop BB27_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB27_8
# BB#9:                                 #   in Loop: Header=BB27_5 Depth=1
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB27_11
# BB#10:
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_13
.LBB27_12:
	movq	$0, -8(%rbp)
.LBB27_13:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	ltab_retrieve, .Lfunc_end27-ltab_retrieve
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_insert,@function
ltab_insert:                            # @ltab_insert
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp118:
	.cfi_def_cfa_offset 16
.Ltmp119:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp120:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
.Ltmp121:
	.cfi_offset %rbx, -32
.Ltmp122:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	(%rsi), %rax
	movl	(%rax), %ecx
	decl	%ecx
	cmpl	%ecx, 4(%rax)
	jne	.LBB28_2
# BB#1:
	movq	-32(%rbp), %rax
	movq	(%rax), %rdi
	movl	(%rdi), %esi
	addl	%esi, %esi
	callq	ltab_rehash
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB28_2:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -72(%rbp)
	leaq	65(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	64(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB28_3
	.align	16, 0x90
.LBB28_4:                               #   in Loop: Header=BB28_3 Depth=1
	movq	-72(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -36(%rbp)
.LBB28_3:                               # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB28_4
# BB#5:
	movl	-36(%rbp), %eax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	cltd
	idivl	(%rcx)
	movl	%edx, -36(%rbp)
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	jne	.LBB28_12
# BB#6:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB28_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB28_11
.LBB28_8:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB28_9
# BB#10:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB28_11
.LBB28_9:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB28_11:
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
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, 8(%rdx,%rcx,8)
.LBB28_12:
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_13
	.align	16, 0x90
.LBB28_19:                              #   in Loop: Header=BB28_13 Depth=1
	movq	-56(%rbp), %rax
.LBB28_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_15 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB28_20
# BB#14:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB28_15
	.align	16, 0x90
.LBB28_16:                              #   in Loop: Header=BB28_15 Depth=2
	movq	-64(%rbp), %rax
.LBB28_15:                              #   Parent Loop BB28_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB28_16
# BB#17:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-24(%rbp), %rdi
	addq	$64, %rdi
	movq	-64(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB28_19
# BB#18:                                #   in Loop: Header=BB28_13 Depth=1
	movq	-24(%rbp), %rbx
	leaq	32(%rbx), %r14
	addq	$64, %rbx
	movq	-64(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, (%rsp)
	movl	$43, %edi
	movl	$2, %esi
	movl	$.L.str.195, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB28_19
.LBB28_20:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB28_22
# BB#21:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB28_25
.LBB28_22:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB28_23
# BB#24:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB28_25
.LBB28_23:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB28_25:
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
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB28_28
# BB#26:
	cmpq	$0, zz_res(%rip)
	je	.LBB28_28
# BB#27:
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
.LBB28_28:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB28_31
# BB#29:
	cmpq	$0, zz_res(%rip)
	je	.LBB28_31
# BB#30:
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
.LBB28_31:
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	ltab_insert, .Lfunc_end28-ltab_insert
	.cfi_endproc

	.align	16, 0x90
	.type	ltab_rehash,@function
ltab_rehash:                            # @ltab_rehash
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
.Ltmp126:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%esi, %edi
	callq	ltab_new
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
	leaq	-32(%rbp), %rbx
	jmp	.LBB29_1
	.align	16, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_1 Depth=1
	incl	-36(%rbp)
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jg	.LBB29_5
# BB#2:                                 #   in Loop: Header=BB29_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	$0, 8(%rcx,%rax,8)
	je	.LBB29_4
# BB#3:                                 #   in Loop: Header=BB29_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rdi
	movq	%rbx, %rsi
	callq	ltab_insert
	jmp	.LBB29_4
.LBB29_5:
	movq	-16(%rbp), %rdi
	callq	free
	movq	-32(%rbp), %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	ltab_rehash, .Lfunc_end29-ltab_rehash
	.cfi_endproc

	.align	16, 0x90
	.type	PS_LinkCheck,@function
PS_LinkCheck:                           # @PS_LinkCheck
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	link_source_list(%rip), %rax
	jmp	.LBB30_1
	.align	16, 0x90
.LBB30_10:                              #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
.LBB30_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_3 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	link_source_list(%rip), %rax
	je	.LBB30_11
# BB#2:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB30_3
	.align	16, 0x90
.LBB30_4:                               #   in Loop: Header=BB30_3 Depth=2
	movq	-8(%rbp), %rax
.LBB30_3:                               #   Parent Loop BB30_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB30_4
# BB#5:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB30_8
# BB#6:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB30_8
# BB#7:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.196, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB30_8:                               #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	movq	link_dest_tab(%rip), %rsi
	callq	ltab_retrieve
	testq	%rax, %rax
	jne	.LBB30_10
# BB#9:                                 #   in Loop: Header=BB30_1 Depth=1
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$49, %edi
	movl	$14, %esi
	movl	$.L.str.197, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB30_10
.LBB30_11:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	PS_LinkCheck, .Lfunc_end30-PS_LinkCheck
	.cfi_endproc

	.type	out_fp,@object          # @out_fp
	.local	out_fp
	.comm	out_fp,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\ngrestore\n"
	.size	.L.str, 11

	.type	gs_stack_top,@object    # @gs_stack_top
	.local	gs_stack_top
	.comm	gs_stack_top,4,4
	.type	gs_stack,@object        # @gs_stack
	.local	gs_stack
	.comm	gs_stack,1000,16
	.type	currentfont,@object     # @currentfont
	.local	currentfont
	.comm	currentfont,4,4
	.type	currentcolour,@object   # @currentcolour
	.local	currentcolour
	.comm	currentcolour,4,4
	.type	cpexists,@object        # @cpexists
	.local	cpexists
	.comm	cpexists,4,4
	.type	currenty,@object        # @currenty
	.local	currenty
	.comm	currenty,4,4
	.type	currentxheight2,@object # @currentxheight2
	.local	currentxheight2
	.comm	currentxheight2,2,2
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	" "
	.size	.L.str.2, 2

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"error in left parameter of %s"
	.size	.L.str.3, 30

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"@Graphic"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"assert failed in %s"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"PrintGraphic: type(x) != GRAPHIC!"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%hd %s "
	.size	.L.str.7, 8

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%s "
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"%d %d %d %d %d %d %d LoutGraphic\n"
	.size	.L.str.9, 34

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%d %d %d %d %d %d %d %d %d LoutGr2\n"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"PrintGraphicInclude!"
	.size	.L.str.11, 21

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"PrintGraphicInclude: !incgraphic_ok(x)!"
	.size	.L.str.12, 40

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"PrintGraphicInclude: fp!"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%hd %s\n"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%s\n"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"BeginEPSF\n"
	.size	.L.str.16, 11

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%%%BeginDocument: %s\n"
	.size	.L.str.17, 23

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%%DocumentNeededResources:"
	.size	.L.str.18, 27

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"(atend)"
	.size	.L.str.19, 8

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"word is too long"
	.size	.L.str.20, 17

	.type	needs,@object           # @needs
	.local	needs
	.comm	needs,8,8
	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%%LanguageLevel:"
	.size	.L.str.21, 17

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"ignoring LanguageLevel comment in %s file %s"
	.size	.L.str.22, 45

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@IncludeGraphic"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"%%Extensions:"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"ignoring Extensions comment in %s file %s"
	.size	.L.str.25, 42

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%%+"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"lout.eps"
	.size	.L.str.27, 9

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\n%%%%EndDocument\nEndEPSF\n"
	.size	.L.str.28, 26

	.type	wordcount,@object       # @wordcount
	.local	wordcount
	.comm	wordcount,4,4
	.type	ConvertToPDFName.buff,@object # @ConvertToPDFName.buff
	.local	ConvertToPDFName.buff
	.comm	ConvertToPDFName.buff,200,16
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"LOUT"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"tag %s is too long"
	.size	.L.str.30, 19

	.type	ps_back,@object         # @ps_back
	.data
	.align	8
ps_back:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.37
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	PS_PrintInitialize
	.quad	PS_PrintLength
	.quad	PS_PrintPageSetupForFont
	.quad	PS_PrintPageResourceForFont
	.quad	PS_PrintMapping
	.quad	PS_PrintBeforeFirstPage
	.quad	PS_PrintBetweenPages
	.quad	PS_PrintAfterLastPage
	.quad	PS_PrintWord
	.quad	PS_PrintPlainGraphic
	.quad	PS_PrintUnderline
	.quad	PS_CoordTranslate
	.quad	PS_CoordRotate
	.quad	PS_CoordScale
	.quad	PS_SaveGraphicState
	.quad	PS_RestoreGraphicState
	.quad	PS_PrintGraphicObject
	.quad	PS_DefineGraphicNames
	.quad	PS_SaveTranslateDefineSave
	.quad	PS_PrintGraphicInclude
	.quad	PS_LinkSource
	.quad	PS_LinkDest
	.quad	PS_LinkCheck
	.size	ps_back, 232

	.type	PS_BackEnd,@object      # @PS_BackEnd
	.globl	PS_BackEnd
	.align	8
PS_BackEnd:
	.quad	ps_back
	.size	PS_BackEnd, 8

	.type	Encapsulated,@object    # @Encapsulated
	.comm	Encapsulated,4,4
	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"gsave\n"
	.size	.L.str.31, 7

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"rotations, graphics etc. too deeply nested (max is %d)"
	.size	.L.str.32, 55

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%d %d translate\n"
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"%.4f %.4f scale\n"
	.size	.L.str.34, 17

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%%EOF"
	.size	.L.str.35, 6

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"%%Trailer"
	.size	.L.str.36, 10

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"PostScript"
	.size	.L.str.37, 11

	.type	prologue_done,@object   # @prologue_done
	.local	prologue_done
	.comm	prologue_done,4,4
	.type	pagecount,@object       # @pagecount
	.local	pagecount
	.comm	pagecount,4,4
	.type	supplied,@object        # @supplied
	.local	supplied
	.comm	supplied,8,8
	.type	link_dest_tab,@object   # @link_dest_tab
	.local	link_dest_tab
	.comm	link_dest_tab,8,8
	.type	link_source_list,@object # @link_source_list
	.local	link_source_list
	.comm	link_source_list,8,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"run out of memory enlarging link dest table"
	.size	.L.str.38, 44

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"%.3fc"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"%%%%IncludeResource: font %s\n"
	.size	.L.str.40, 30

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"/%s%s %s /%s LoutRecode\n"
	.size	.L.str.41, 25

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"/%s { /%s%s LoutFont } def\n"
	.size	.L.str.42, 28

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"/%s { /%s LoutFont } def\n"
	.size	.L.str.43, 26

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%s font %s\n"
	.size	.L.str.44, 12

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"%%PageResources:"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"%%%%BeginResource: encoding %s\n"
	.size	.L.str.46, 32

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"/%s [\n"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"/%s%c"
	.size	.L.str.48, 6

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"] def\n"
	.size	.L.str.49, 7

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"%%%%EndResource\n\n"
	.size	.L.str.50, 18

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"%!PS-Adobe-3.0 EPSF-3.0\n"
	.size	.L.str.51, 25

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%!PS-Adobe-3.0\n"
	.size	.L.str.52, 16

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"%%%%Creator: %s\n"
	.size	.L.str.53, 17

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.54, 40

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"%%%%CreationDate: %s"
	.size	.L.str.55, 21

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"%%DocumentData: Binary\n"
	.size	.L.str.56, 24

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%%DocumentNeededResources: (atend)\n"
	.size	.L.str.57, 36

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"%%DocumentSuppliedResources: (atend)\n"
	.size	.L.str.58, 38

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"%%%%DocumentMedia: %s %d %d 0 white ()\n"
	.size	.L.str.59, 40

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%%PageOrder: Ascend\n"
	.size	.L.str.60, 21

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"%%Pages: (atend)\n"
	.size	.L.str.61, 18

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"%%%%BoundingBox: 0 0 %d %d\n"
	.size	.L.str.62, 28

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"%%EndComments\n\n"
	.size	.L.str.63, 16

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%%BeginProlog\n"
	.size	.L.str.64, 15

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"%%%%BeginResource: procset %s\n"
	.size	.L.str.65, 31

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"LoutStartUp"
	.size	.L.str.66, 12

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"/save_cp { currentpoint /cp_y exch def /cp_x exch def } def\n"
	.size	.L.str.67, 61

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"/restore_cp { cp_x cp_y moveto } def\n"
	.size	.L.str.68, 38

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"/outline { gsave 1 1 1 setrgbcolor dup show save_cp\n"
	.size	.L.str.69, 53

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"  grestore true charpath stroke restore_cp } bind def\n"
	.size	.L.str.70, 55

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"/m  { 3 1 roll moveto show } bind def\n"
	.size	.L.str.71, 39

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"/mo { 3 1 roll moveto outline } bind def\n"
	.size	.L.str.72, 42

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"/s  { exch currentpoint exch pop moveto show } bind def\n"
	.size	.L.str.73, 57

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"/so { exch currentpoint exch pop moveto outline } bind def\n"
	.size	.L.str.74, 60

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"/k  { exch neg 0 rmoveto show } bind def\n"
	.size	.L.str.75, 42

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"/ko { exch neg 0 rmoveto outline } bind def\n"
	.size	.L.str.76, 45

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"/r  { exch 0 rmoveto show } bind def\n"
	.size	.L.str.77, 38

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"/ro { exch 0 rmoveto outline } bind def\n"
	.size	.L.str.78, 41

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"/c  { gsave 3 1 roll rmoveto show grestore } bind def\n"
	.size	.L.str.79, 55

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"/co { gsave 3 1 roll rmoveto outline grestore } bind def\n"
	.size	.L.str.80, 58

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"/ul { gsave setlinewidth dup 3 1 roll\n"
	.size	.L.str.81, 39

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"      moveto lineto stroke grestore } bind def\n"
	.size	.L.str.82, 48

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"/in { %d mul } def\n"
	.size	.L.str.83, 20

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"/cm { %d mul } def\n"
	.size	.L.str.84, 20

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"/pt { %d mul } def\n"
	.size	.L.str.85, 20

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"/em { %d mul } def\n"
	.size	.L.str.86, 20

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"/sp { louts mul } def\n"
	.size	.L.str.87, 23

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"/vs { loutv mul } def\n"
	.size	.L.str.88, 23

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"/ft { loutf mul } def\n"
	.size	.L.str.89, 23

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"/dg {           } def\n\n"
	.size	.L.str.90, 24

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"/LoutGraphic {\n"
	.size	.L.str.91, 16

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"  /louts exch def\n"
	.size	.L.str.92, 19

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"  /loutv exch def\n"
	.size	.L.str.93, 19

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"  /loutf exch def\n"
	.size	.L.str.94, 19

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"  /ymark exch def\n"
	.size	.L.str.95, 19

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"  /xmark exch def\n"
	.size	.L.str.96, 19

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"  /ysize exch def\n"
	.size	.L.str.97, 19

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"  /xsize exch def\n} def\n\n"
	.size	.L.str.98, 26

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"/LoutGr2 { gsave translate LoutGraphic gsave } def\n\n"
	.size	.L.str.99, 53

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"/LoutFont\n"
	.size	.L.str.100, 11

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"{ findfont exch scalefont setfont\n"
	.size	.L.str.101, 35

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"} bind def\n\n"
	.size	.L.str.102, 13

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"/LoutRecode {\n"
	.size	.L.str.103, 15

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"  { findfont dup length dict begin\n"
	.size	.L.str.104, 36

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"    {1 index /FID ne {def} {pop pop} ifelse} forall\n"
	.size	.L.str.105, 53

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"    /Encoding exch def\n"
	.size	.L.str.106, 24

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"    currentdict end definefont pop\n"
	.size	.L.str.107, 36

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"  }\n"
	.size	.L.str.108, 5

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"  stopped pop\n"
	.size	.L.str.109, 15

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"/BeginEPSF {\n"
	.size	.L.str.110, 14

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"  /LoutEPSFState save def\n"
	.size	.L.str.111, 27

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"  /dict_count countdictstack def\n"
	.size	.L.str.112, 34

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"  /op_count count 1 sub def\n"
	.size	.L.str.113, 29

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"  userdict begin\n"
	.size	.L.str.114, 18

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"  /showpage { } def\n"
	.size	.L.str.115, 21

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"  0 setgray 0 setlinecap\n"
	.size	.L.str.116, 26

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"  1 setlinewidth 0 setlinejoin\n"
	.size	.L.str.117, 32

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"  10 setmiterlimit [] 0 setdash newpath\n"
	.size	.L.str.118, 41

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"  /languagelevel where\n"
	.size	.L.str.119, 24

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"  { pop languagelevel\n"
	.size	.L.str.120, 23

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"    1 ne\n"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"    { false setstrokeadjust false setoverprint\n"
	.size	.L.str.122, 48

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"    } if\n"
	.size	.L.str.123, 10

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"  } if\n"
	.size	.L.str.124, 8

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"/EndEPSF {\n"
	.size	.L.str.125, 12

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"  count op_count sub { pop } repeat\n"
	.size	.L.str.126, 37

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"  countdictstack dict_count sub { end } repeat\n"
	.size	.L.str.127, 48

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"  LoutEPSFState restore\n"
	.size	.L.str.128, 25

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"} bind def\n"
	.size	.L.str.129, 12

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"%%EndResource\n\n"
	.size	.L.str.130, 16

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"cannot open %s file %s"
	.size	.L.str.131, 23

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"@PrependGraphic"
	.size	.L.str.132, 16

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"%s file %s is empty"
	.size	.L.str.133, 20

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"%%BeginResource:"
	.size	.L.str.134, 17

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"%s file %s lacks PostScript BeginResource comment"
	.size	.L.str.135, 50

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"%% %s file %s\n"
	.size	.L.str.136, 15

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"%%EndProlog\n\n"
	.size	.L.str.137, 14

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"%%BeginSetup\n"
	.size	.L.str.138, 14

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"/pdfmark where {pop} {userdict /pdfmark /cleartomark load put} ifelse\n"
	.size	.L.str.139, 71

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"%%EndSetup\n\n"
	.size	.L.str.140, 13

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"%%%%Page: "
	.size	.L.str.141, 11

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	" %d\n"
	.size	.L.str.142, 5

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"%%%%BeginPageSetup\n"
	.size	.L.str.143, 20

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"/pgsave save def\n"
	.size	.L.str.144, 18

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"%.4f dup scale %d setlinewidth\n"
	.size	.L.str.145, 32

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"%%%%EndPageSetup\n\n"
	.size	.L.str.146, 19

	.type	MediaName.paper_map,@object # @MediaName.paper_map
	.section	.rodata,"a",@progbits
	.align	16
MediaName.paper_map:
	.quad	.L.str.147
	.long	12240                   # 0x2fd0
	.long	15840                   # 0x3de0
	.quad	.L.str.148
	.long	15840                   # 0x3de0
	.long	24480                   # 0x5fa0
	.quad	.L.str.149
	.long	24480                   # 0x5fa0
	.long	15840                   # 0x3de0
	.quad	.L.str.150
	.long	12240                   # 0x2fd0
	.long	20160                   # 0x4ec0
	.quad	.L.str.151
	.long	7920                    # 0x1ef0
	.long	12240                   # 0x2fd0
	.quad	.L.str.152
	.long	10800                   # 0x2a30
	.long	14400                   # 0x3840
	.quad	.L.str.153
	.long	16840                   # 0x41c8
	.long	23800                   # 0x5cf8
	.quad	.L.str.154
	.long	11900                   # 0x2e7c
	.long	16840                   # 0x41c8
	.quad	.L.str.155
	.long	8400                    # 0x20d0
	.long	11900                   # 0x2e7c
	.quad	.L.str.156
	.long	14580                   # 0x38f4
	.long	20640                   # 0x50a0
	.quad	.L.str.157
	.long	10320                   # 0x2850
	.long	14580                   # 0x38f4
	.quad	.L.str.158
	.long	12240                   # 0x2fd0
	.long	18720                   # 0x4920
	.quad	.L.str.159
	.long	12200                   # 0x2fa8
	.long	15600                   # 0x3cf0
	.quad	.L.str.160
	.long	14400                   # 0x3840
	.long	20160                   # 0x4ec0
	.zero	16
	.size	MediaName.paper_map, 240

	.type	.L.str.147,@object      # @.str.147
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.147:
	.asciz	"Letter"
	.size	.L.str.147, 7

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Tabloid"
	.size	.L.str.148, 8

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Ledger"
	.size	.L.str.149, 7

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Legal"
	.size	.L.str.150, 6

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Statement"
	.size	.L.str.151, 10

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Executive"
	.size	.L.str.152, 10

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"A3"
	.size	.L.str.153, 3

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"A4"
	.size	.L.str.154, 3

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"A5"
	.size	.L.str.155, 3

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"B4"
	.size	.L.str.156, 3

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"B5"
	.size	.L.str.157, 3

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Folio"
	.size	.L.str.158, 6

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Quarto"
	.size	.L.str.159, 7

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"10x14"
	.size	.L.str.160, 6

	.type	MediaName.user_defined,@object # @MediaName.user_defined
	.data
	.align	8
MediaName.user_defined:
	.quad	.L.str.161
	.size	MediaName.user_defined, 8

	.type	.L.str.161,@object      # @.str.161
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.161:
	.asciz	"Plain"
	.size	.L.str.161, 6

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"\npgsave restore\nshowpage\n"
	.size	.L.str.162, 26

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"truncating -EPS document at end of first page"
	.size	.L.str.163, 46

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"\n%%%%Page: "
	.size	.L.str.164, 12

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"%%%%EndPageSetup\n"
	.size	.L.str.165, 18

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"\n%%%%Trailer\n"
	.size	.L.str.166, 14

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"PrintAfterLast: needs!"
	.size	.L.str.167, 23

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"%s %s"
	.size	.L.str.168, 6

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"%%%%DocumentSuppliedResources: procset %s\n"
	.size	.L.str.169, 43

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"%%%%+ %s"
	.size	.L.str.170, 9

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"%%%%Pages: %d\n"
	.size	.L.str.171, 15

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"%%%%EOF\n"
	.size	.L.str.172, 9

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"%hd %s"
	.size	.L.str.173, 7

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"%s"
	.size	.L.str.174, 3

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"so"
	.size	.L.str.175, 3

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"s"
	.size	.L.str.176, 2

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"mo"
	.size	.L.str.177, 3

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"m"
	.size	.L.str.178, 2

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	")%s "
	.size	.L.str.179, 5

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"ro"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"r"
	.size	.L.str.181, 2

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	")%s %d("
	.size	.L.str.182, 8

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"ko"
	.size	.L.str.183, 3

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"k"
	.size	.L.str.184, 2

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	")%s\n"
	.size	.L.str.185, 5

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"%d %d (%c)%s "
	.size	.L.str.186, 14

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"co"
	.size	.L.str.187, 3

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"c"
	.size	.L.str.188, 2

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"PS_PrintPlainGraphic: this routine should never be called!"
	.size	.L.str.189, 59

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"%d %d %d %d ul\n"
	.size	.L.str.190, 16

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"%.4f rotate\n"
	.size	.L.str.191, 13

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"\n[ /Rect [%d %d %d %d] /Subtype /Link /Dest /%s /ANN pdfmark\n"
	.size	.L.str.192, 62

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"\n[ /Dest /%s /DEST pdfmark\n"
	.size	.L.str.193, 28

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"link destination %s ignored (there is already one at%s)"
	.size	.L.str.194, 56

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"link name %s used twice (first at%s)"
	.size	.L.str.195, 37

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	" PS_LinkCheck: !is_word(type(y))!"
	.size	.L.str.196, 34

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"link name %s has no destination point"
	.size	.L.str.197, 38


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
