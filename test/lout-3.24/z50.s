	.text
	.file	"z50.opt"
	.globl	PDF_PrintAfterLastPage
	.align	16, 0x90
	.type	PDF_PrintAfterLastPage,@function
PDF_PrintAfterLastPage:                 # @PDF_PrintAfterLastPage
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
	cmpl	$0, prologue_done(%rip)
	je	.LBB0_2
# BB#1:
	movq	out_fp(%rip), %rdi
	callq	PDFPage_Cleanup
	movq	out_fp(%rip), %rdi
	callq	PDFFile_Cleanup
.LBB0_2:
	popq	%rbp
	retq
.Lfunc_end0:
	.size	PDF_PrintAfterLastPage, .Lfunc_end0-PDF_PrintAfterLastPage
	.cfi_endproc

	.globl	PDF_SaveGraphicState
	.align	16, 0x90
	.type	PDF_SaveGraphicState,@function
PDF_SaveGraphicState:                   # @PDF_SaveGraphicState
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	out_fp(%rip), %rdi
	callq	PDFPage_Push
	movl	gs_stack_top(%rip), %eax
	incl	%eax
	movl	%eax, gs_stack_top(%rip)
	cmpl	$50, %eax
	jl	.LBB1_2
# BB#1:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$50, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	movl	$50, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
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
.Lfunc_end1:
	.size	PDF_SaveGraphicState, .Lfunc_end1-PDF_SaveGraphicState
	.cfi_endproc

	.globl	PDF_RestoreGraphicState
	.align	16, 0x90
	.type	PDF_RestoreGraphicState,@function
PDF_RestoreGraphicState:                # @PDF_RestoreGraphicState
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
	movq	out_fp(%rip), %rdi
	callq	PDFPage_Pop
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
.Lfunc_end2:
	.size	PDF_RestoreGraphicState, .Lfunc_end2-PDF_RestoreGraphicState
	.cfi_endproc

	.globl	PDF_PrintGraphicObject
	.align	16, 0x90
	.type	PDF_PrintGraphicObject,@function
PDF_PrintGraphicObject:                 # @PDF_PrintGraphicObject
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	leal	-11(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB3_1
# BB#23:
	movq	out_fp(%rip), %rdi
	movq	-8(%rbp), %rsi
	addq	$64, %rsi
	callq	PDFPage_WriteGraphic
	jmp	.LBB3_22
.LBB3_1:
	cmpl	$17, %eax
	jne	.LBB3_21
# BB#2:
	movq	-8(%rbp), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rdi
	callq	PDF_PrintGraphicObject
	movq	-24(%rbp), %rax
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB3_22
# BB#4:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB3_5
	.align	16, 0x90
.LBB3_6:                                #   in Loop: Header=BB3_5 Depth=2
	movq	-16(%rbp), %rax
.LBB3_5:                                #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_6
# BB#7:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB3_12
# BB#8:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	42(%rax), %eax
	testl	%eax, %eax
	jle	.LBB3_10
# BB#9:                                 #   in Loop: Header=BB3_3 Depth=1
	movq	out_fp(%rip), %rdi
	movl	$.L.str.1, %esi
	callq	PDFPage_Write
	movq	-24(%rbp), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_15
# BB#13:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB3_15
# BB#14:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB3_15
# BB#16:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$26, %eax
	je	.LBB3_20
# BB#17:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$119, %eax
	jl	.LBB3_19
# BB#18:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$139, %eax
	jl	.LBB3_20
.LBB3_19:                               #   in Loop: Header=BB3_3 Depth=1
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$50, %edi
	movl	$2, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_20
.LBB3_10:                               #   in Loop: Header=BB3_3 Depth=1
	movq	-16(%rbp), %rax
	movzbl	41(%rax), %eax
	testl	%eax, %eax
	jle	.LBB3_20
# BB#11:                                #   in Loop: Header=BB3_3 Depth=1
	movq	out_fp(%rip), %rdi
	movl	$.L.str.2, %esi
	callq	PDFPage_Write
	movq	-24(%rbp), %rax
	jmp	.LBB3_3
.LBB3_20:                               #   in Loop: Header=BB3_3 Depth=1
	movq	-24(%rbp), %rax
	jmp	.LBB3_3
.LBB3_21:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$50, %edi
	movl	$3, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_22:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	PDF_PrintGraphicObject, .Lfunc_end3-PDF_PrintGraphicObject
	.cfi_endproc

	.globl	PDF_DefineGraphicNames
	.align	16, 0x90
	.type	PDF_DefineGraphicNames,@function
PDF_DefineGraphicNames:                 # @PDF_DefineGraphicNames
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$288, %rsp              # imm = 0x120
.Ltmp15:
	.cfi_offset %rbx, -48
.Ltmp16:
	.cfi_offset %r12, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -40(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$97, %eax
	je	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.5, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	movq	-40(%rbp), %rcx
	movl	$4095, %eax             # imm = 0xFFF
	movl	76(%rcx), %ecx
	andl	%eax, %ecx
	cmpl	currentfont(%rip), %ecx
	je	.LBB4_5
# BB#3:
	movq	-40(%rbp), %rcx
	andl	76(%rcx), %eax
	movl	%eax, currentfont(%rip)
	je	.LBB4_5
# BB#4:
	movl	currentfont(%rip), %edi
	callq	FontHalfXHeight
	movw	%ax, currentxheight2(%rip)
	movq	out_fp(%rip), %r14
	movl	currentfont(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	FontSize
	movl	%eax, %ebx
	movl	currentfont(%rip), %edi
	callq	FontName
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	PDFFont_Set
.LBB4_5:
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB4_8
# BB#6:
	movq	-40(%rbp), %rax
	movl	76(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, currentcolour(%rip)
	je	.LBB4_8
# BB#7:
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	leaq	-304(%rbp), %rbx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	sprintf
	movq	out_fp(%rip), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
.LBB4_8:
	movq	-40(%rbp), %rax
	movl	48(%rax), %r15d
	movl	60(%rax), %r14d
	movl	56(%rax), %r12d
	addl	%r15d, %r12d
	movl	52(%rax), %ebx
	addl	%r14d, %ebx
	movl	$240, %r8d
	cmpl	$0, currentfont(%rip)
	je	.LBB4_10
# BB#9:
	movl	currentfont(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	FontSize
	movl	%eax, %r8d
.LBB4_10:
	movq	-40(%rbp), %rax
	movswl	66(%rax), %r9d
	movswl	70(%rax), %eax
	movl	%eax, (%rsp)
	movl	%r12d, %edi
	movl	%ebx, %esi
	movl	%r15d, %edx
	movl	%r14d, %ecx
	callq	PDFPage_SetVars
	addq	$288, %rsp              # imm = 0x120
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	PDF_DefineGraphicNames, .Lfunc_end4-PDF_DefineGraphicNames
	.cfi_endproc

	.globl	PDF_SaveTranslateDefineSave
	.align	16, 0x90
	.type	PDF_SaveTranslateDefineSave,@function
PDF_SaveTranslateDefineSave:            # @PDF_SaveTranslateDefineSave
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp21:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	PDF_SaveGraphicState
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	PDF_CoordTranslate
	movq	-8(%rbp), %rdi
	callq	PDF_DefineGraphicNames
	movq	-8(%rbp), %rdi
	callq	PDF_SaveGraphicState
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	PDF_SaveTranslateDefineSave, .Lfunc_end5-PDF_SaveTranslateDefineSave
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_CoordTranslate,@function
PDF_CoordTranslate:                     # @PDF_CoordTranslate
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB6_2
# BB#1:
	cmpl	$0, -8(%rbp)
	je	.LBB6_3
.LBB6_2:
	movq	out_fp(%rip), %rdi
	cvtsi2ssl	-4(%rbp), %xmm0
	cvtsi2ssl	-8(%rbp), %xmm1
	callq	PDFPage_Translate
.LBB6_3:
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	PDF_CoordTranslate, .Lfunc_end6-PDF_CoordTranslate
	.cfi_endproc

	.globl	PDF_PrintGraphicInclude
	.align	16, 0x90
	.type	PDF_PrintGraphicInclude,@function
PDF_PrintGraphicInclude:                # @PDF_PrintGraphicInclude
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_2:                                #   in Loop: Header=BB7_1 Depth=1
	movq	-24(%rbp), %rax
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB7_2
# BB#3:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	addq	$64, %r9
	movl	$50, %edi
	movl	$4, %esi
	movl	$.L.str.8, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	PDF_PrintGraphicInclude, .Lfunc_end7-PDF_PrintGraphicInclude
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintInitialize,@function
PDF_PrintInitialize:                    # @PDF_PrintInitialize
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
	jne	.LBB8_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_5
.LBB8_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_5
.LBB8_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_5:
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
	jne	.LBB8_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_10
.LBB8_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_10
.LBB8_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_10:
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
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	PDF_PrintInitialize, .Lfunc_end8-PDF_PrintInitialize
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI9_0:
	.long	1141751808              # float 567
	.text
	.align	16, 0x90
	.type	PDF_PrintLength,@function
PDF_PrintLength:                        # @PDF_PrintLength
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	cvtsi2ssl	-12(%rbp), %xmm0
	divss	.LCPI9_0(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.11, %esi
	movb	$1, %al
	callq	sprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	PDF_PrintLength, .Lfunc_end9-PDF_PrintLength
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintPageSetupForFont,@function
PDF_PrintPageSetupForFont:              # @PDF_PrintPageSetupForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -40(%rbp)
	movq	out_fp(%rip), %rdi
	movq	-24(%rbp), %rdx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rax
	testb	$-128, 60(%rax)
	je	.LBB10_2
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	60(%rax), %edi
	andl	$127, %edi
	movl	%edi, -44(%rbp)
	movl	$1, %esi
	callq	MapEnsurePrinted
	movl	-44(%rbp), %edi
	callq	MapEncodingName
	movq	%rax, -40(%rbp)
.LBB10_2:
	movq	out_fp(%rip), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	PDFFont_AddFont
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	PDF_PrintPageSetupForFont, .Lfunc_end10-PDF_PrintPageSetupForFont
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintPageResourceForFont,@function
PDF_PrintPageResourceForFont:           # @PDF_PrintPageResourceForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	PDF_PrintPageResourceForFont, .Lfunc_end11-PDF_PrintPageResourceForFont
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintMapping,@function
PDF_PrintMapping:                       # @PDF_PrintMapping
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp43:
	.cfi_offset %rbx, -24
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	out_fp(%rip), %rdi
	movq	24(%rax), %rsi
	addq	$64, %rsi
	callq	PDFFile_BeginFontEncoding
	movl	$0, -28(%rbp)
	movl	$32, %ebx
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_2:                               #   in Loop: Header=BB12_1 Depth=1
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
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	callq	fprintf
	incl	-28(%rbp)
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -28(%rbp)
	jle	.LBB12_2
# BB#3:
	movq	out_fp(%rip), %rdi
	callq	PDFFile_EndFontEncoding
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	PDF_PrintMapping, .Lfunc_end12-PDF_PrintMapping
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI13_0:
	.long	1028443341              # float 0.0500000007
	.text
	.align	16, 0x90
	.type	PDF_PrintBeforeFirstPage,@function
PDF_PrintBeforeFirstPage:               # @PDF_PrintBeforeFirstPage
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
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	out_fp(%rip), %rdi
	movslq	-4(%rbp), %rax
	imulq	$1717986919, %rax, %rsi # imm = 0x66666667
	movq	%rsi, %rax
	shrq	$63, %rax
	sarq	$35, %rsi
	addl	%eax, %esi
	movslq	-8(%rbp), %rax
	imulq	$1717986919, %rax, %rdx # imm = 0x66666667
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$35, %rdx
	addl	%eax, %edx
	movl	$120, (%rsp)
	movl	$1440, %ecx             # imm = 0x5A0
	movl	$567, %r8d              # imm = 0x237
	movl	$20, %r9d
	callq	PDFFile_Init
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageSetup
	movq	out_fp(%rip), %rdi
	movss	.LCPI13_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$10, %esi
	callq	PDFPage_Init
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageResources
	callq	FontAdvanceCurrentPage
	movl	$1, prologue_done(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	PDF_PrintBeforeFirstPage, .Lfunc_end13-PDF_PrintBeforeFirstPage
	.cfi_endproc

	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI14_0:
	.long	1028443341              # float 0.0500000007
	.text
	.align	16, 0x90
	.type	PDF_PrintBetweenPages,@function
PDF_PrintBetweenPages:                  # @PDF_PrintBetweenPages
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	out_fp(%rip), %rdi
	callq	PDFPage_Cleanup
	movq	out_fp(%rip), %rdi
	movss	.LCPI14_0(%rip), %xmm0  # xmm0 = mem[0],zero,zero,zero
	movl	$10, %esi
	callq	PDFPage_Init
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageResources
	movq	out_fp(%rip), %rdi
	callq	FontPrintPageSetup
	callq	FontAdvanceCurrentPage
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	PDF_PrintBetweenPages, .Lfunc_end14-PDF_PrintBetweenPages
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintWord,@function
PDF_PrintWord:                          # @PDF_PrintWord
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
	pushq	%r14
	pushq	%rbx
	subq	$384, %rsp              # imm = 0x180
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
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
	je	.LBB15_2
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
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	PDFFont_Set
.LBB15_2:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	cmpl	currentcolour(%rip), %eax
	je	.LBB15_5
# BB#3:
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$12, %eax
	andl	$1023, %eax             # imm = 0x3FF
	movl	%eax, currentcolour(%rip)
	je	.LBB15_5
# BB#4:
	movl	currentcolour(%rip), %edi
	callq	ColourCommand
	movq	%rax, %rcx
	leaq	-368(%rbp), %rbx
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%rcx, %rdx
	callq	sprintf
	movq	out_fp(%rip), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
.LBB15_5:
	movswl	currentxheight2(%rip), %eax
	subl	%eax, -32(%rbp)
	cmpl	$0, cpexists(%rip)
	je	.LBB15_9
# BB#6:
	movl	currenty(%rip), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB15_9
# BB#7:
	callq	PDFHasValidTextMatrix
	testl	%eax, %eax
	je	.LBB15_9
# BB#8:
	movq	$.L.str.14, -96(%rbp)
	jmp	.LBB15_10
.LBB15_9:
	movl	-32(%rbp), %eax
	movl	%eax, currenty(%rip)
	movq	$.L.str.15, -96(%rbp)
	movl	$1, cpexists(%rip)
.LBB15_10:
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
.LBB15_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_14 Depth 2
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_29 Depth 3
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
	je	.LBB15_25
# BB#12:                                #   in Loop: Header=BB15_11 Depth=1
	movq	-48(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	je	.LBB15_25
# BB#13:                                #   in Loop: Header=BB15_11 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-72(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	leaq	256(%rax,%rcx), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB15_14
	.align	16, 0x90
.LBB15_30:                              #   in Loop: Header=BB15_14 Depth=2
	incq	-56(%rbp)
.LBB15_14:                              #   Parent Loop BB15_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB15_16 Depth 3
                                        #       Child Loop BB15_29 Depth 3
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	movq	-40(%rbp), %rcx
	movzbl	-1(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_25
# BB#15:                                #   in Loop: Header=BB15_14 Depth=2
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB15_16
	.align	16, 0x90
.LBB15_22:                              #   in Loop: Header=BB15_16 Depth=3
	incq	-56(%rbp)
	incq	-64(%rbp)
.LBB15_16:                              #   Parent Loop BB15_11 Depth=1
                                        #     Parent Loop BB15_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-64(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB15_17
# BB#18:                                #   in Loop: Header=BB15_16 Depth=3
	movq	-56(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB15_19
# BB#20:                                #   in Loop: Header=BB15_16 Depth=3
	movq	-64(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	jmp	.LBB15_21
	.align	16, 0x90
.LBB15_17:                              #   in Loop: Header=BB15_16 Depth=3
	xorl	%eax, %eax
	jmp	.LBB15_21
.LBB15_19:                              #   in Loop: Header=BB15_16 Depth=3
	xorl	%eax, %eax
	.align	16, 0x90
.LBB15_21:                              #   in Loop: Header=BB15_16 Depth=3
	testb	%al, %al
	jne	.LBB15_22
# BB#23:                                #   in Loop: Header=BB15_14 Depth=2
	movq	-56(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB15_24
	.align	16, 0x90
.LBB15_29:                              #   Parent Loop BB15_11 Depth=1
                                        #     Parent Loop BB15_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	cmpb	$0, 1(%rax)
	jne	.LBB15_29
	jmp	.LBB15_30
.LBB15_24:                              #   in Loop: Header=BB15_11 Depth=1
	movq	-56(%rbp), %rax
	movb	(%rax), %al
	movq	-48(%rbp), %rcx
	movb	%al, -1(%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	.align	16, 0x90
.LBB15_25:                              #   in Loop: Header=BB15_11 Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB15_11
# BB#26:
	movq	-48(%rbp), %rax
	movb	$0, (%rax)
	movq	-96(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB15_27
# BB#31:
	movq	out_fp(%rip), %rdi
	movl	-28(%rbp), %esi
	subl	PDF_PrintWord.last_hpos(%rip), %esi
	callq	PDFText_OpenX
	jmp	.LBB15_32
.LBB15_27:
	cmpl	$109, %eax
	jne	.LBB15_33
# BB#28:
	movq	out_fp(%rip), %rdi
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edx
	callq	PDFText_OpenXY
.LBB15_32:
	movl	-28(%rbp), %eax
	movl	%eax, PDF_PrintWord.last_hpos(%rip)
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	addl	56(%rcx), %eax
	movl	%eax, PDF_PrintWord.next_hpos(%rip)
.LBB15_33:
	movq	-24(%rbp), %rax
	leaq	64(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movq	out_fp(%rip), %rdi
	movzbl	64(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rsi
	callq	PDFPage_Write
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
	jmp	.LBB15_34
	.align	16, 0x90
.LBB15_45:                              #   in Loop: Header=BB15_34 Depth=1
	movq	out_fp(%rip), %rdi
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	EightBitToPrintForm(,%rax,8), %rsi
	callq	PDFPage_Write
.LBB15_34:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_38 Depth 2
	incq	-40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB15_46
# BB#35:                                #   in Loop: Header=BB15_34 Depth=1
	movq	-40(%rbp), %rax
	movzbl	-1(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -372(%rbp)
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-80(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -376(%rbp)
	movslq	-372(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	48(%rdx,%rcx), %rcx
	movzwl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	64(%rdx,%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	movl	%eax, -380(%rbp)
	je	.LBB15_36
# BB#37:                                #   in Loop: Header=BB15_34 Depth=1
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	48(%rcx,%rax), %rax
	movzwl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	72(%rcx,%rax), %rax
	movq	%rax, -392(%rbp)
	movl	-380(%rbp), %eax
	movl	%eax, -384(%rbp)
	jmp	.LBB15_38
	.align	16, 0x90
.LBB15_39:                              #   in Loop: Header=BB15_38 Depth=2
	incl	-384(%rbp)
.LBB15_38:                              #   Parent Loop BB15_34 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-384(%rbp), %rax
	movq	-392(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	-376(%rbp), %eax
	jg	.LBB15_39
# BB#40:                                #   in Loop: Header=BB15_34 Depth=1
	movslq	-384(%rbp), %rax
	movq	-392(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	xorl	%eax, %eax
	cmpl	-376(%rbp), %ecx
	jne	.LBB15_42
# BB#41:                                #   in Loop: Header=BB15_34 Depth=1
	movslq	-384(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	movq	finfo(%rip), %rdx
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	48(%rdx,%rcx), %rcx
	movzwl	40(%rcx), %ecx
	andl	$4095, %ecx             # imm = 0xFFF
	leaq	(%rcx,%rcx,2), %rcx
	shlq	$5, %rcx
	movq	80(%rdx,%rcx), %rsi
	movq	88(%rdx,%rcx), %rcx
	movzbl	(%rsi,%rax), %eax
	movswl	(%rcx,%rax,2), %eax
.LBB15_42:                              #   in Loop: Header=BB15_34 Depth=1
	movl	%eax, -84(%rbp)
	jmp	.LBB15_43
	.align	16, 0x90
.LBB15_36:                              #   in Loop: Header=BB15_34 Depth=1
	movl	$0, -84(%rbp)
.LBB15_43:                              #   in Loop: Header=BB15_34 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB15_45
# BB#44:                                #   in Loop: Header=BB15_34 Depth=1
	movq	out_fp(%rip), %rdi
	movl	-84(%rbp), %esi
	callq	PDFText_Kern
	jmp	.LBB15_45
.LBB15_46:
	movq	out_fp(%rip), %rdi
	callq	PDFText_Close
	addq	$384, %rsp              # imm = 0x180
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end15:
	.size	PDF_PrintWord, .Lfunc_end15-PDF_PrintWord
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintPlainGraphic,@function
PDF_PrintPlainGraphic:                  # @PDF_PrintPlainGraphic
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
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
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	PDF_PrintPlainGraphic, .Lfunc_end16-PDF_PrintPlainGraphic
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_PrintUnderline,@function
PDF_PrintUnderline:                     # @PDF_PrintUnderline
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movq	out_fp(%rip), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	-4(%rbp), %eax
	movq	finfo(%rip), %r9
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movswl	56(%r9,%rax), %ecx
	subl	%ecx, %r8d
	movswl	58(%r9,%rax), %eax
	movl	%r8d, %ecx
	movl	%eax, %r8d
	callq	PDFPage_PrintUnderline
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	PDF_PrintUnderline, .Lfunc_end17-PDF_PrintUnderline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI18_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI18_1:
	.quad	4640537203540230144     # double 180
	.text
	.align	16, 0x90
	.type	PDF_CoordRotate,@function
PDF_CoordRotate:                        # @PDF_CoordRotate
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%edi, %eax
	sarl	$31, %eax
	shrl	$25, %eax
	addl	%edi, %eax
	sarl	$7, %eax
	cltq
	imulq	$-1240768329, %rax, %rcx # imm = 0xFFFFFFFFB60B60B7
	shrq	$32, %rcx
	movl	%eax, %edx
	addl	%ecx, %edx
	movl	%edx, %ecx
	shrl	$31, %ecx
	sarl	$8, %edx
	addl	%ecx, %edx
	imull	$360, %edx, %ecx        # imm = 0x168
	subl	%ecx, %eax
	movl	%eax, -8(%rbp)
	je	.LBB18_2
# BB#1:
	movq	out_fp(%rip), %rdi
	cvtsi2sdl	-8(%rbp), %xmm0
	mulsd	.LCPI18_0(%rip), %xmm0
	divsd	.LCPI18_1(%rip), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	callq	PDFPage_Rotate
.LBB18_2:
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	PDF_CoordRotate, .Lfunc_end18-PDF_CoordRotate
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI19_0:
	.quad	-4616189618054758400    # double -1
.LCPI19_2:
	.quad	4576918229304087675     # double 0.01
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI19_1:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.align	16, 0x90
	.type	PDF_CoordScale,@function
PDF_CoordScale:                         # @PDF_CoordScale
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp66:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI19_0(%rip), %xmm0
	andpd	.LCPI19_1(%rip), %xmm0
	ucomisd	.LCPI19_2(%rip), %xmm0
	ja	.LBB19_2
# BB#1:
	movss	-8(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI19_0(%rip), %xmm0
	andpd	.LCPI19_1(%rip), %xmm0
	ucomisd	.LCPI19_2(%rip), %xmm0
	jbe	.LBB19_3
.LBB19_2:
	movq	out_fp(%rip), %rdi
	movss	-4(%rbp), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8(%rbp), %xmm1         # xmm1 = mem[0],zero,zero,zero
	callq	PDFPage_Scale
.LBB19_3:
	movl	$0, cpexists(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	PDF_CoordScale, .Lfunc_end19-PDF_CoordScale
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_LinkSource,@function
PDF_LinkSource:                         # @PDF_LinkSource
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp67:
	.cfi_def_cfa_offset 16
.Ltmp68:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp69:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	PDF_LinkSource, .Lfunc_end20-PDF_LinkSource
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_LinkDest,@function
PDF_LinkDest:                           # @PDF_LinkDest
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp70:
	.cfi_def_cfa_offset 16
.Ltmp71:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp72:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	PDF_LinkDest, .Lfunc_end21-PDF_LinkDest
	.cfi_endproc

	.align	16, 0x90
	.type	PDF_LinkCheck,@function
PDF_LinkCheck:                          # @PDF_LinkCheck
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp73:
	.cfi_def_cfa_offset 16
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp75:
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	PDF_LinkCheck, .Lfunc_end22-PDF_LinkCheck
	.cfi_endproc

	.type	prologue_done,@object   # @prologue_done
	.local	prologue_done
	.comm	prologue_done,4,4
	.type	out_fp,@object          # @out_fp
	.local	out_fp
	.comm	out_fp,8,8
	.type	gs_stack_top,@object    # @gs_stack_top
	.local	gs_stack_top
	.comm	gs_stack_top,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rotations, graphics etc. too deeply nested (max is %d)"
	.size	.L.str, 55

	.type	currentfont,@object     # @currentfont
	.local	currentfont
	.comm	currentfont,4,4
	.type	gs_stack,@object        # @gs_stack
	.local	gs_stack
	.comm	gs_stack,1000,16
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
	.asciz	"%s "
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"cannot include EPS file in PDF output; EPS file %s ignored"
	.size	.L.str.8, 59

	.type	pdf_back,@object        # @pdf_back
	.data
	.align	8
pdf_back:
	.long	1                       # 0x1
	.zero	4
	.quad	.L.str.9
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.quad	PDF_PrintInitialize
	.quad	PDF_PrintLength
	.quad	PDF_PrintPageSetupForFont
	.quad	PDF_PrintPageResourceForFont
	.quad	PDF_PrintMapping
	.quad	PDF_PrintBeforeFirstPage
	.quad	PDF_PrintBetweenPages
	.quad	PDF_PrintAfterLastPage
	.quad	PDF_PrintWord
	.quad	PDF_PrintPlainGraphic
	.quad	PDF_PrintUnderline
	.quad	PDF_CoordTranslate
	.quad	PDF_CoordRotate
	.quad	PDF_CoordScale
	.quad	PDF_SaveGraphicState
	.quad	PDF_RestoreGraphicState
	.quad	PDF_PrintGraphicObject
	.quad	PDF_DefineGraphicNames
	.quad	PDF_SaveTranslateDefineSave
	.quad	PDF_PrintGraphicInclude
	.quad	PDF_LinkSource
	.quad	PDF_LinkDest
	.quad	PDF_LinkCheck
	.size	pdf_back, 232

	.type	PDF_BackEnd,@object     # @PDF_BackEnd
	.globl	PDF_BackEnd
	.align	8
PDF_BackEnd:
	.quad	pdf_back
	.size	PDF_BackEnd, 8

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"PDF"
	.size	.L.str.9, 4

	.type	pagecount,@object       # @pagecount
	.local	pagecount
	.comm	pagecount,4,4
	.type	wordcount,@object       # @wordcount
	.local	wordcount
	.comm	wordcount,4,4
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"word is too long"
	.size	.L.str.10, 17

	.type	needs,@object           # @needs
	.local	needs
	.comm	needs,8,8
	.type	supplied,@object        # @supplied
	.local	supplied
	.comm	supplied,8,8
	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.3fc"
	.size	.L.str.11, 6

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%%%%IncludeResource: font %s\n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"/%s%c"
	.size	.L.str.13, 6

	.type	PDF_PrintWord.last_hpos,@object # @PDF_PrintWord.last_hpos
	.local	PDF_PrintWord.last_hpos
	.comm	PDF_PrintWord.last_hpos,4,4
	.type	PDF_PrintWord.next_hpos,@object # @PDF_PrintWord.next_hpos
	.data
	.align	4
PDF_PrintWord.next_hpos:
	.long	4294967295              # 0xffffffff
	.size	PDF_PrintWord.next_hpos, 4

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"s"
	.size	.L.str.14, 2

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"m"
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"PDF_PrintPlainGraphic: this routine should never be called!"
	.size	.L.str.16, 60


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
