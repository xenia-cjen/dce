	.text
	.file	"z51.opt"
	.globl	Plain_PrintInitialize
	.align	16, 0x90
	.type	Plain_PrintInitialize,@function
Plain_PrintInitialize:                  # @Plain_PrintInitialize
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
	movq	%rdi, -8(%rbp)
	movq	%rdi, out_fp(%rip)
	movl	$0, prologue_done(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	Plain_PrintInitialize, .Lfunc_end0-Plain_PrintInitialize
	.cfi_endproc

	.globl	Plain_CoordTranslate
	.align	16, 0x90
	.type	Plain_CoordTranslate,@function
Plain_CoordTranslate:                   # @Plain_CoordTranslate
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	Plain_CoordTranslate, .Lfunc_end1-Plain_CoordTranslate
	.cfi_endproc

	.globl	Plain_CoordScale
	.align	16, 0x90
	.type	Plain_CoordScale,@function
Plain_CoordScale:                       # @Plain_CoordScale
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
	subq	$16, %rsp
	movss	%xmm0, -4(%rbp)
	movss	%xmm1, -8(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Plain_CoordScale, .Lfunc_end2-Plain_CoordScale
	.cfi_endproc

	.globl	Plain_SaveGraphicState
	.align	16, 0x90
	.type	Plain_SaveGraphicState,@function
Plain_SaveGraphicState:                 # @Plain_SaveGraphicState
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	Plain_SaveGraphicState, .Lfunc_end3-Plain_SaveGraphicState
	.cfi_endproc

	.globl	Plain_RestoreGraphicState
	.align	16, 0x90
	.type	Plain_RestoreGraphicState,@function
Plain_RestoreGraphicState:              # @Plain_RestoreGraphicState
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
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
	popq	%rbp
	retq
.Lfunc_end4:
	.size	Plain_RestoreGraphicState, .Lfunc_end4-Plain_RestoreGraphicState
	.cfi_endproc

	.globl	Plain_PrintGraphicObject
	.align	16, 0x90
	.type	Plain_PrintGraphicObject,@function
Plain_PrintGraphicObject:               # @Plain_PrintGraphicObject
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Plain_PrintGraphicObject, .Lfunc_end5-Plain_PrintGraphicObject
	.cfi_endproc

	.globl	Plain_DefineGraphicNames
	.align	16, 0x90
	.type	Plain_DefineGraphicNames,@function
Plain_DefineGraphicNames:               # @Plain_DefineGraphicNames
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	Plain_DefineGraphicNames, .Lfunc_end6-Plain_DefineGraphicNames
	.cfi_endproc

	.globl	Plain_SaveTranslateDefineSave
	.align	16, 0x90
	.type	Plain_SaveTranslateDefineSave,@function
Plain_SaveTranslateDefineSave:          # @Plain_SaveTranslateDefineSave
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	Plain_SaveTranslateDefineSave, .Lfunc_end7-Plain_SaveTranslateDefineSave
	.cfi_endproc

	.globl	Plain_PrintGraphicInclude
	.align	16, 0x90
	.type	Plain_PrintGraphicInclude,@function
Plain_PrintGraphicInclude:              # @Plain_PrintGraphicInclude
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	Plain_PrintGraphicInclude, .Lfunc_end8-Plain_PrintGraphicInclude
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintLength,@function
Plain_PrintLength:                      # @Plain_PrintLength
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	testl	%edx, %edx
	je	.LBB9_1
# BB#2:
	movq	-8(%rbp), %rdi
	cvtsi2ssl	-12(%rbp), %xmm0
	cvtsi2ssl	PlainCharHeight(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.11, %esi
	jmp	.LBB9_3
.LBB9_1:
	movq	-8(%rbp), %rdi
	cvtsi2ssl	-12(%rbp), %xmm0
	cvtsi2ssl	PlainCharWidth(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.10, %esi
.LBB9_3:
	movb	$1, %al
	callq	sprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	Plain_PrintLength, .Lfunc_end9-Plain_PrintLength
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintPageSetupForFont,@function
Plain_PrintPageSetupForFont:            # @Plain_PrintPageSetupForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Plain_PrintPageSetupForFont, .Lfunc_end10-Plain_PrintPageSetupForFont
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintPageResourceForFont,@function
Plain_PrintPageResourceForFont:         # @Plain_PrintPageResourceForFont
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Plain_PrintPageResourceForFont, .Lfunc_end11-Plain_PrintPageResourceForFont
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintMapping,@function
Plain_PrintMapping:                     # @Plain_PrintMapping
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Plain_PrintMapping, .Lfunc_end12-Plain_PrintMapping
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintBeforeFirstPage,@function
Plain_PrintBeforeFirstPage:             # @Plain_PrintBeforeFirstPage
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	-4(%rbp), %eax
	decl	%eax
	cltd
	idivl	PlainCharWidth(%rip)
	incl	%eax
	movl	%eax, hsize(%rip)
	movl	-8(%rbp), %eax
	decl	%eax
	cltd
	idivl	PlainCharHeight(%rip)
	incl	%eax
	movl	%eax, vsize(%rip)
	movslq	hsize(%rip), %rax
	movslq	vsize(%rip), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	%rax, page(%rip)
	movl	$0, -20(%rbp)
	jmp	.LBB13_1
	.align	16, 0x90
.LBB13_5:                               #   in Loop: Header=BB13_1 Depth=1
	incl	-20(%rbp)
.LBB13_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movl	-20(%rbp), %eax
	cmpl	vsize(%rip), %eax
	jge	.LBB13_6
# BB#2:                                 #   in Loop: Header=BB13_1 Depth=1
	movl	$0, -24(%rbp)
	jmp	.LBB13_3
	.align	16, 0x90
.LBB13_4:                               #   in Loop: Header=BB13_3 Depth=2
	movslq	-20(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-24(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movb	$32, (%rcx,%rax)
	incl	-24(%rbp)
.LBB13_3:                               #   Parent Loop BB13_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-24(%rbp), %eax
	cmpl	hsize(%rip), %eax
	jl	.LBB13_4
	jmp	.LBB13_5
.LBB13_6:
	movl	$1, prologue_done(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Plain_PrintBeforeFirstPage, .Lfunc_end13-Plain_PrintBeforeFirstPage
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintBetweenPages,@function
Plain_PrintBetweenPages:                # @Plain_PrintBetweenPages
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movl	vsize(%rip), %eax
	decl	%eax
	movl	%eax, -28(%rbp)
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_11:                              #   in Loop: Header=BB14_1 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	decl	-28(%rbp)
.LBB14_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_3 Depth 2
                                        #     Child Loop BB14_9 Depth 2
	cmpl	$0, -28(%rbp)
	js	.LBB14_12
# BB#2:                                 #   in Loop: Header=BB14_1 Depth=1
	movl	hsize(%rip), %eax
	decl	%eax
	movl	%eax, -36(%rbp)
	jmp	.LBB14_3
	.align	16, 0x90
.LBB14_7:                               #   in Loop: Header=BB14_3 Depth=2
	decl	-36(%rbp)
.LBB14_3:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -36(%rbp)
	js	.LBB14_4
# BB#5:                                 #   in Loop: Header=BB14_3 Depth=2
	movslq	-28(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-36(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$32, %eax
	sete	%al
	jmp	.LBB14_6
	.align	16, 0x90
.LBB14_4:                               #   in Loop: Header=BB14_3 Depth=2
	xorl	%eax, %eax
.LBB14_6:                               #   in Loop: Header=BB14_3 Depth=2
	testb	%al, %al
	jne	.LBB14_7
# BB#8:                                 #   in Loop: Header=BB14_1 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB14_9
	.align	16, 0x90
.LBB14_10:                              #   in Loop: Header=BB14_9 Depth=2
	movslq	-28(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movzbl	(%rcx,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	incl	-32(%rbp)
.LBB14_9:                               #   Parent Loop BB14_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jle	.LBB14_10
	jmp	.LBB14_11
.LBB14_12:
	cmpl	$0, PlainFormFeed(%rip)
	je	.LBB14_14
# BB#13:
	movq	out_fp(%rip), %rsi
	movl	$12, %edi
	callq	_IO_putc
.LBB14_14:
	movl	-4(%rbp), %eax
	decl	%eax
	cltd
	idivl	PlainCharWidth(%rip)
	incl	%eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	decl	%eax
	cltd
	idivl	PlainCharHeight(%rip)
	incl	%eax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	cmpl	hsize(%rip), %eax
	jne	.LBB14_16
# BB#15:
	movl	-24(%rbp), %eax
	cmpl	vsize(%rip), %eax
	je	.LBB14_17
.LBB14_16:
	movq	page(%rip), %rdi
	callq	free
	movl	-20(%rbp), %eax
	movl	%eax, hsize(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, vsize(%rip)
	movslq	hsize(%rip), %rax
	movslq	vsize(%rip), %rdi
	imulq	%rax, %rdi
	callq	malloc
	movq	%rax, page(%rip)
.LBB14_17:
	movl	$0, -28(%rbp)
	jmp	.LBB14_18
	.align	16, 0x90
.LBB14_22:                              #   in Loop: Header=BB14_18 Depth=1
	incl	-28(%rbp)
.LBB14_18:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_20 Depth 2
	movl	-28(%rbp), %eax
	cmpl	vsize(%rip), %eax
	jge	.LBB14_23
# BB#19:                                #   in Loop: Header=BB14_18 Depth=1
	movl	$0, -32(%rbp)
	jmp	.LBB14_20
	.align	16, 0x90
.LBB14_21:                              #   in Loop: Header=BB14_20 Depth=2
	movslq	-28(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-32(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movb	$32, (%rcx,%rax)
	incl	-32(%rbp)
.LBB14_20:                              #   Parent Loop BB14_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	hsize(%rip), %eax
	jl	.LBB14_21
	jmp	.LBB14_22
.LBB14_23:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	Plain_PrintBetweenPages, .Lfunc_end14-Plain_PrintBetweenPages
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintAfterLastPage,@function
Plain_PrintAfterLastPage:               # @Plain_PrintAfterLastPage
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
	cmpl	$0, prologue_done(%rip)
	je	.LBB15_13
# BB#1:
	movl	vsize(%rip), %eax
	decl	%eax
	movl	%eax, -4(%rbp)
	jmp	.LBB15_2
	.align	16, 0x90
.LBB15_12:                              #   in Loop: Header=BB15_2 Depth=1
	movq	out_fp(%rip), %rsi
	movl	$10, %edi
	callq	_IO_putc
	decl	-4(%rbp)
.LBB15_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_4 Depth 2
                                        #     Child Loop BB15_10 Depth 2
	cmpl	$0, -4(%rbp)
	js	.LBB15_13
# BB#3:                                 #   in Loop: Header=BB15_2 Depth=1
	movl	hsize(%rip), %eax
	decl	%eax
	movl	%eax, -12(%rbp)
	jmp	.LBB15_4
	.align	16, 0x90
.LBB15_8:                               #   in Loop: Header=BB15_4 Depth=2
	decl	-12(%rbp)
.LBB15_4:                               #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, -12(%rbp)
	js	.LBB15_5
# BB#6:                                 #   in Loop: Header=BB15_4 Depth=2
	movslq	-4(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-12(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$32, %eax
	sete	%al
	jmp	.LBB15_7
	.align	16, 0x90
.LBB15_5:                               #   in Loop: Header=BB15_4 Depth=2
	xorl	%eax, %eax
.LBB15_7:                               #   in Loop: Header=BB15_4 Depth=2
	testb	%al, %al
	jne	.LBB15_8
# BB#9:                                 #   in Loop: Header=BB15_2 Depth=1
	movl	$0, -8(%rbp)
	jmp	.LBB15_10
	.align	16, 0x90
.LBB15_11:                              #   in Loop: Header=BB15_10 Depth=2
	movslq	-4(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-8(%rbp), %rax
	addq	%rcx, %rax
	movq	page(%rip), %rcx
	movzbl	(%rcx,%rax), %edi
	movq	out_fp(%rip), %rsi
	callq	_IO_putc
	incl	-8(%rbp)
.LBB15_10:                              #   Parent Loop BB15_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.LBB15_11
	jmp	.LBB15_12
.LBB15_13:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Plain_PrintAfterLastPage, .Lfunc_end15-Plain_PrintAfterLastPage
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI16_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	Plain_PrintWord,@function
Plain_PrintWord:                        # @Plain_PrintWord
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
	pushq	%rbx
	subq	$56, %rsp
.Ltmp51:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	incl	TotalWordCount(%rip)
	cvtsi2ssl	-20(%rbp), %xmm0
	cvtsi2ssl	PlainCharWidth(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI16_0(%rip), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-24(%rbp), %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	PlainCharHeight(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -40(%rbp)
	js	.LBB16_15
# BB#1:
	movslq	-40(%rbp), %rbx
	movq	-16(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	addq	%rbx, %rax
	movslq	hsize(%rip), %rcx
	cmpq	%rcx, %rax
	jae	.LBB16_15
# BB#2:
	cmpl	$0, -44(%rbp)
	js	.LBB16_15
# BB#3:
	movl	-44(%rbp), %eax
	cmpl	vsize(%rip), %eax
	jge	.LBB16_15
# BB#4:
	cmpl	$0, -40(%rbp)
	jns	.LBB16_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_6:
	movl	-40(%rbp), %eax
	cmpl	hsize(%rip), %eax
	jl	.LBB16_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_8:
	cmpl	$0, -44(%rbp)
	jns	.LBB16_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_10:
	movl	-44(%rbp), %eax
	cmpl	vsize(%rip), %eax
	jl	.LBB16_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB16_12:
	movslq	-44(%rbp), %rax
	movslq	hsize(%rip), %rcx
	imulq	%rax, %rcx
	movslq	-40(%rbp), %rax
	addq	%rcx, %rax
	addq	page(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	jmp	.LBB16_13
	.align	16, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_13 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	64(%rcx,%rax), %al
	movq	-32(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movb	%al, (%rcx)
	incl	-36(%rbp)
.LBB16_13:                              # =>This Inner Loop Header: Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, 64(%rcx,%rax)
	jne	.LBB16_14
	jmp	.LBB16_16
.LBB16_15:
	movq	-16(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$51, %edi
	movl	$1, %esi
	movl	$.L.str.16, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB16_16:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end16:
	.size	Plain_PrintWord, .Lfunc_end16-Plain_PrintWord
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI17_0:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	Plain_PrintPlainGraphic,@function
Plain_PrintPlainGraphic:                # @Plain_PrintPlainGraphic
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp52:
	.cfi_def_cfa_offset 16
.Ltmp53:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp54:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB17_4
# BB#1:
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB17_4
# BB#2:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$51, %edi
	movl	$2, %esi
	movl	$.L.str.17, %edx
	jmp	.LBB17_3
.LBB17_4:
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB17_5
# BB#6:
	cvtsi2ssl	-12(%rbp), %xmm0
	cvtsi2ssl	PlainCharWidth(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI17_0(%rip), %xmm1  # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm0
	cvtsi2ssl	PlainCharHeight(%rip), %xmm2
	divss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -40(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-12(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	addl	56(%rax), %ecx
	xorps	%xmm2, %xmm2
	cvtsi2ssl	%ecx, %xmm2
	addss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtsi2ssl	PlainCharWidth(%rip), %xmm0
	divss	%xmm0, %xmm2
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	-16(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movl	52(%rax), %ecx
	addl	60(%rax), %ecx
	cvtsi2ssl	%ecx, %xmm1
	subss	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	cvtsi2ssl	PlainCharHeight(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	xorl	%edi, %edi
	callq	SetLengthDim
	movl	$1, %edi
	callq	SetLengthDim
	cmpl	$0, -36(%rbp)
	js	.LBB17_18
# BB#7:
	movl	-44(%rbp), %eax
	cmpl	hsize(%rip), %eax
	jge	.LBB17_18
# BB#8:
	cmpl	$0, -40(%rbp)
	js	.LBB17_18
# BB#9:
	movl	-48(%rbp), %eax
	cmpl	vsize(%rip), %eax
	jge	.LBB17_18
# BB#10:
	movl	$0, -28(%rbp)
	movl	-40(%rbp), %eax
	decl	%eax
	movl	%eax, -56(%rbp)
	jmp	.LBB17_11
	.align	16, 0x90
.LBB17_17:                              #   in Loop: Header=BB17_11 Depth=1
	decl	-56(%rbp)
.LBB17_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_13 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.LBB17_20
# BB#12:                                #   in Loop: Header=BB17_11 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB17_13
	.align	16, 0x90
.LBB17_16:                              #   in Loop: Header=BB17_13 Depth=2
	movslq	-28(%rbp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rcx
	movb	64(%rcx,%rax), %al
	movslq	-56(%rbp), %rcx
	movslq	hsize(%rip), %rdx
	imulq	%rcx, %rdx
	movslq	-52(%rbp), %rcx
	addq	%rdx, %rcx
	movq	page(%rip), %rdx
	movb	%al, (%rdx,%rcx)
	incl	-52(%rbp)
.LBB17_13:                              #   Parent Loop BB17_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	.LBB17_17
# BB#14:                                #   in Loop: Header=BB17_13 Depth=2
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	.LBB17_16
# BB#15:                                #   in Loop: Header=BB17_13 Depth=2
	movl	$0, -28(%rbp)
	jmp	.LBB17_16
.LBB17_18:
	movq	-8(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	-52(%rbp), %eax
	movl	-56(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$51, %edi
	movl	$4, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	jmp	.LBB17_19
.LBB17_5:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$51, %edi
	movl	$3, %esi
	movl	$.L.str.19, %edx
.LBB17_3:
	movl	$2, %ecx
	movl	$.L.str.18, %r9d
.LBB17_19:
	xorl	%eax, %eax
	callq	Error
.LBB17_20:
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	Plain_PrintPlainGraphic, .Lfunc_end17-Plain_PrintPlainGraphic
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_PrintUnderline,@function
Plain_PrintUnderline:                   # @Plain_PrintUnderline
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	Plain_PrintUnderline, .Lfunc_end18-Plain_PrintUnderline
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_CoordRotate,@function
Plain_CoordRotate:                      # @Plain_CoordRotate
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
	movl	%edi, -4(%rbp)
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	Plain_CoordRotate, .Lfunc_end19-Plain_CoordRotate
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_LinkSource,@function
Plain_LinkSource:                       # @Plain_LinkSource
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Plain_LinkSource, .Lfunc_end20-Plain_LinkSource
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_LinkDest,@function
Plain_LinkDest:                         # @Plain_LinkDest
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	Plain_LinkDest, .Lfunc_end21-Plain_LinkDest
	.cfi_endproc

	.align	16, 0x90
	.type	Plain_LinkCheck,@function
Plain_LinkCheck:                        # @Plain_LinkCheck
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
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Plain_LinkCheck, .Lfunc_end22-Plain_LinkCheck
	.cfi_endproc

	.type	out_fp,@object          # @out_fp
	.local	out_fp
	.comm	out_fp,8,8
	.type	prologue_done,@object   # @prologue_done
	.local	prologue_done
	.comm	prologue_done,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Plain_CoordTranslate: should never be called!"
	.size	.L.str.1, 46

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Plain_CoordScale: should never be called!"
	.size	.L.str.2, 42

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Plain_SaveGraphicState: should never be called!"
	.size	.L.str.3, 48

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Plain_RestoreGraphicState: should never be called!"
	.size	.L.str.4, 51

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Plain_PrintGraphicObject: should never be called!"
	.size	.L.str.5, 50

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Plain_DefineGraphicNames: should never be called!"
	.size	.L.str.6, 50

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Plain_SaveTranslateDefineSave: should never be called!"
	.size	.L.str.7, 55

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Plain_PrintGraphicInclude: should never be called!"
	.size	.L.str.8, 51

	.type	plain_back,@object      # @plain_back
	.data
	.align	8
plain_back:
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.9
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	Plain_PrintInitialize
	.quad	Plain_PrintLength
	.quad	Plain_PrintPageSetupForFont
	.quad	Plain_PrintPageResourceForFont
	.quad	Plain_PrintMapping
	.quad	Plain_PrintBeforeFirstPage
	.quad	Plain_PrintBetweenPages
	.quad	Plain_PrintAfterLastPage
	.quad	Plain_PrintWord
	.quad	Plain_PrintPlainGraphic
	.quad	Plain_PrintUnderline
	.quad	Plain_CoordTranslate
	.quad	Plain_CoordRotate
	.quad	Plain_CoordScale
	.quad	Plain_SaveGraphicState
	.quad	Plain_RestoreGraphicState
	.quad	Plain_PrintGraphicObject
	.quad	Plain_DefineGraphicNames
	.quad	Plain_SaveTranslateDefineSave
	.quad	Plain_PrintGraphicInclude
	.quad	Plain_LinkSource
	.quad	Plain_LinkDest
	.quad	Plain_LinkCheck
	.size	plain_back, 232

	.type	Plain_BackEnd,@object   # @Plain_BackEnd
	.globl	Plain_BackEnd
	.align	8
Plain_BackEnd:
	.quad	plain_back
	.size	Plain_BackEnd, 8

	.type	PlainCharWidth,@object  # @PlainCharWidth
	.comm	PlainCharWidth,4,4
	.type	PlainCharHeight,@object # @PlainCharHeight
	.comm	PlainCharHeight,4,4
	.type	PlainFormFeed,@object   # @PlainFormFeed
	.comm	PlainFormFeed,4,4
	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"PlainText"
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%.2fs"
	.size	.L.str.10, 6

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%.2ff"
	.size	.L.str.11, 6

	.type	hsize,@object           # @hsize
	.local	hsize
	.comm	hsize,4,4
	.type	vsize,@object           # @vsize
	.local	vsize
	.comm	vsize,4,4
	.type	page,@object            # @page
	.local	page
	.comm	page,8,8
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"PrintWord:  h < 0!"
	.size	.L.str.12, 19

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"PrintWord:  h >= hsize!"
	.size	.L.str.13, 24

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"PrintWord:  v < 0!"
	.size	.L.str.14, 19

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"PrintWord:  v >= vsize!"
	.size	.L.str.15, 24

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"word %s deleted (internal error, off page at %d,%d)"
	.size	.L.str.16, 52

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"left parameter of %s must be a simple word"
	.size	.L.str.17, 43

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"@PlainGraphic"
	.size	.L.str.18, 14

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"left parameter of %s must be a non-empty word"
	.size	.L.str.19, 46

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"fill %s deleted (internal error, off page at %d,%d)"
	.size	.L.str.20, 52

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Plain_CoordRotate: should never be called!"
	.size	.L.str.21, 43


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
