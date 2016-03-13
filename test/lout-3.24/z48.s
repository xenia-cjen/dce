	.text
	.file	"z48.opt"
	.globl	PDFHasValidTextMatrix
	.align	16, 0x90
	.type	PDFHasValidTextMatrix,@function
PDFHasValidTextMatrix:                  # @PDFHasValidTextMatrix
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
	movl	g_valid_text_matrix(%rip), %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	PDFHasValidTextMatrix, .Lfunc_end0-PDFHasValidTextMatrix
	.cfi_endproc

	.globl	PDFFile_BeginFontEncoding
	.align	16, 0x90
	.type	PDFFile_BeginFontEncoding,@function
PDFFile_BeginFontEncoding:              # @PDFFile_BeginFontEncoding
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
	movq	%rsi, -16(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB1_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB1_2:
	movq	-8(%rbp), %rdi
	callq	PDFObject_WriteNewObj
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	$.L.str.1, %edi
	callq	fputs
	movl	$24, %edi
	callq	malloc
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	jne	.LBB1_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_4:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-32(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB1_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$3, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_6:
	movq	g_font_encoding_list(%rip), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-20(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movq	-32(%rbp), %rax
	movq	%rax, g_font_encoding_list(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PDFFile_BeginFontEncoding, .Lfunc_end1-PDFFile_BeginFontEncoding
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_WriteNewObj,@function
PDFObject_WriteNewObj:                  # @PDFObject_WriteNewObj
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
	movq	%rdi, -8(%rbp)
	callq	PDFObject_New
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	PDFObject_WriteNewObj, .Lfunc_end2-PDFObject_WriteNewObj
	.cfi_endproc

	.globl	PDFFile_EndFontEncoding
	.align	16, 0x90
	.type	PDFFile_EndFontEncoding,@function
PDFFile_EndFontEncoding:                # @PDFFile_EndFontEncoding
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
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	fputs
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	PDFFile_EndFontEncoding, .Lfunc_end3-PDFFile_EndFontEncoding
	.cfi_endproc

	.globl	PDFFont_AddFont
	.align	16, 0x90
	.type	PDFFont_AddFont,@function
PDFFont_AddFont:                        # @PDFFont_AddFont
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
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-40(%rbp), %rdi
	callq	PDFFont_FindListEntry
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rbx
	movq	-40(%rbp), %r14
	movq	-48(%rbp), %rdi
	callq	PDFFont_FindFontEncoding
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%eax, %edx
	callq	PDFFont_NewListEntry
	movq	%rax, -56(%rbp)
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	PDFFont_AddFont, .Lfunc_end4-PDFFont_AddFont
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_FindListEntry,@function
PDFFont_FindListEntry:                  # @PDFFont_FindListEntry
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_3:                                #   in Loop: Header=BB5_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB5_4
# BB#2:                                 #   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB5_3
.LBB5_4:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	PDFFont_FindListEntry, .Lfunc_end5-PDFFont_FindListEntry
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_NewListEntry,@function
PDFFont_NewListEntry:                   # @PDFFont_NewListEntry
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp23:
	.cfi_offset %rbx, -32
.Ltmp24:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_2:                                #   in Loop: Header=BB6_1 Depth=1
	incl	-40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB6_2
# BB#3:
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	%xmm0, -80(%rbp)
	movaps	%xmm0, -96(%rbp)
	movaps	%xmm0, -112(%rbp)
	movw	$17967, -112(%rbp)      # imm = 0x462F
	movl	$48, %edi
	callq	malloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	jne	.LBB6_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$4, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_5:
	movl	-40(%rbp), %edx
	leaq	-144(%rbp), %r14
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	movq	%r14, %rdi
	callq	sprintf
	leaq	-112(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcat
	movq	%rbx, %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-48(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB6_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$5, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_7:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	-112(%rbp), %rsi
	callq	strcpy
	movq	-24(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB6_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$6, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_9:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movq	-32(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-48(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-48(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB6_11
# BB#10:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$7, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_11:
	movq	-48(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcpy
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movq	-48(%rbp), %rax
	movl	$0, 36(%rax)
	movq	-48(%rbp), %rax
	movl	$0, 40(%rax)
	movq	g_font_list(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, g_font_list(%rip)
	movq	-48(%rbp), %rax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	PDFFont_NewListEntry, .Lfunc_end6-PDFFont_NewListEntry
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_FindFontEncoding,@function
PDFFont_FindFontEncoding:               # @PDFFont_FindFontEncoding
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
	movq	%rdi, -16(%rbp)
	movq	g_font_encoding_list(%rip), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB7_2
# BB#1:
	movl	$0, -4(%rbp)
	jmp	.LBB7_8
	.align	16, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB7_5
# BB#3:                                 #   in Loop: Header=BB7_2 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB7_4
.LBB7_5:
	xorl	%eax, %eax
	cmpq	$0, -24(%rbp)
	je	.LBB7_7
# BB#6:
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
.LBB7_7:
	movl	%eax, -4(%rbp)
.LBB7_8:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	PDFFont_FindFontEncoding, .Lfunc_end7-PDFFont_FindFontEncoding
	.cfi_endproc

	.globl	PDFPage_SetVars
	.align	16, 0x90
	.type	PDFPage_SetVars,@function
PDFPage_SetVars:                        # @PDFPage_SetVars
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
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	%r8d, -20(%rbp)
	movl	%r9d, -24(%rbp)
	movl	%eax, -28(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, g_graphics_vars(%rip)
	movl	-8(%rbp), %eax
	movl	%eax, g_graphics_vars+4(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, g_graphics_vars+8(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, g_graphics_vars+12(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, g_units+16(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, g_units+20(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, g_units+24(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	PDFPage_SetVars, .Lfunc_end8-PDFPage_SetVars
	.cfi_endproc

	.globl	PDFPage_Write
	.align	16, 0x90
	.type	PDFPage_Write,@function
PDFPage_Write:                          # @PDFPage_Write
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpb	$0, (%rsi)
	je	.LBB9_10
# BB#1:
	movq	-8(%rbp), %rdi
	callq	PDFPage_Begin
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB9_5
# BB#2:
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, -20(%rbp)
	addl	g_buffer_pos(%rip), %eax
	cmpl	$1024, %eax             # imm = 0x400
	jb	.LBB9_4
# BB#3:
	movq	-8(%rbp), %rdi
	callq	PDFPage_FlushBuffer
	jmp	.LBB9_9
.LBB9_5:
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB9_7
# BB#6:
	movl	$0, g_TJ_pending(%rip)
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %esi
	callq	PDFPage_WriteStream
.LBB9_7:
	cmpl	$0, g_ET_pending(%rip)
	je	.LBB9_9
# BB#8:
	movl	$0, g_ET_pending(%rip)
	movq	-8(%rbp), %rdi
	movl	$.L.str.6, %esi
	callq	PDFPage_WriteStream
	movl	$0, g_valid_text_matrix(%rip)
.LBB9_9:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	PDFPage_WriteStream
	jmp	.LBB9_10
.LBB9_4:
	movl	g_buffer_pos(%rip), %eax
	leaq	g_buffer(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
	movl	-20(%rbp), %eax
	addl	%eax, g_buffer_pos(%rip)
.LBB9_10:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	PDFPage_Write, .Lfunc_end9-PDFPage_Write
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_Begin,@function
PDFPage_Begin:                          # @PDFPage_Begin
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
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
.Ltmp37:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	cmpl	$0, g_page_contents_obj_num(%rip)
	jne	.LBB10_4
# BB#1:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB10_3
# BB#2:
	movq	-16(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB10_3:
	movq	-16(%rbp), %rdi
	callq	PDFObject_WriteNewObj
	movl	%eax, g_page_contents_obj_num(%rip)
	callq	PDFObject_New
	movl	%eax, g_page_length_obj_num(%rip)
	movq	-16(%rbp), %rsi
	movl	$.L.str.72, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	g_page_length_obj_num(%rip), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rsi
	movl	$.L.str.73, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	callq	ftell
	movl	%eax, g_page_start_offset(%rip)
	movss	g_page_h_scale_factor(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	g_page_v_scale_factor(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	-528(%rbp), %rbx
	movl	$.L.str.13, %esi
	movb	$2, %al
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_WriteStream
	movl	g_page_line_width(%rip), %edx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_WriteStream
.LBB10_4:
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end10:
	.size	PDFPage_Begin, .Lfunc_end10-PDFPage_Begin
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_FlushBuffer,@function
PDFPage_FlushBuffer:                    # @PDFPage_FlushBuffer
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
	movq	%rdi, -8(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB11_5
# BB#1:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB11_2
	.align	16, 0x90
.LBB11_3:                               #   in Loop: Header=BB11_2 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -16(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-16(%rbp), %rdi
	callq	free
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB11_3
# BB#4:
	movq	-8(%rbp), %rdi
	movl	$g_buffer, %esi
	callq	PDFPage_WriteStream
.LBB11_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	PDFPage_FlushBuffer, .Lfunc_end11-PDFPage_FlushBuffer
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_WriteStream,@function
PDFPage_WriteStream:                    # @PDFPage_WriteStream
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpb	$0, (%rsi)
	je	.LBB12_2
# BB#1:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
.LBB12_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	PDFPage_WriteStream, .Lfunc_end12-PDFPage_WriteStream
	.cfi_endproc

	.globl	PDFPage_Push
	.align	16, 0x90
	.type	PDFPage_Push,@function
PDFPage_Push:                           # @PDFPage_Push
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
	movq	%rdi, -8(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB13_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$14, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB13_2:
	movl	g_page_h_origin(%rip), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movl	g_page_v_origin(%rip), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	g_qsave_stack(%rip), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	%rax, g_qsave_stack(%rip)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB13_6
# BB#3:
	movl	$16, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB13_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$15, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB13_5:
	movq	g_qsave_marking_stack(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	g_buffer_pos(%rip), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
.LBB13_6:
	movq	-8(%rbp), %rdi
	movl	$.L.str.8, %esi
	callq	PDFPage_Write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	PDFPage_Push, .Lfunc_end13-PDFPage_Push
	.cfi_endproc

	.globl	PDFPage_Pop
	.align	16, 0x90
	.type	PDFPage_Pop,@function
PDFPage_Pop:                            # @PDFPage_Pop
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
	movq	%rdi, -8(%rbp)
	movq	g_qsave_stack(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	8(%rax), %eax
	movl	%eax, g_page_h_origin(%rip)
	movq	-16(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, g_page_v_origin(%rip)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, g_qsave_stack(%rip)
	movq	-16(%rbp), %rdi
	callq	free
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB14_2
# BB#1:
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-24(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, g_buffer_pos(%rip)
	movl	g_buffer_pos(%rip), %eax
	movb	$0, g_buffer(%rax)
	movq	-24(%rbp), %rdi
	callq	free
	jmp	.LBB14_3
.LBB14_2:
	cmpq	$0, g_qsave_marking_stack(%rip)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-8(%rbp), %rdi
	movl	$.L.str.9, %esi
	callq	PDFPage_Write
.LBB14_3:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	PDFPage_Pop, .Lfunc_end14-PDFPage_Pop
	.cfi_endproc

	.align	16, 0x90
	.type	Assert,@function
Assert:                                 # @Assert
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB15_3
# BB#1:
	cmpl	$0, -4(%rbp)
	jne	.LBB15_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB15_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Assert, .Lfunc_end15-Assert
	.cfi_endproc

	.globl	PDFFont_Set
	.align	16, 0x90
	.type	PDFFont_Set,@function
PDFFont_Set:                            # @PDFFont_Set
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp53:
	.cfi_def_cfa_offset 16
.Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp55:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rdx, %rdi
	callq	PDFFont_FindListEntry_Short
	movq	%rax, -552(%rbp)
	testq	%rax, %rax
	jne	.LBB16_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$48, %edi
	movl	$42, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB16_2:
	movq	-552(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-12(%rbp), %ecx
	leaq	-544(%rbp), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	sprintf
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB16_4
# BB#3:
	movl	$0, g_TJ_pending(%rip)
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %esi
	callq	PDFPage_WriteStream
.LBB16_4:
	movl	g_ET_pending(%rip), %eax
	movl	%eax, -556(%rbp)
	movl	$0, g_ET_pending(%rip)
	movq	-8(%rbp), %rdi
	leaq	-544(%rbp), %rsi
	callq	PDFPage_Write
	movl	-556(%rbp), %eax
	movl	%eax, g_ET_pending(%rip)
	movq	-552(%rbp), %rax
	movl	$1, 44(%rax)
	movl	$1, g_page_uses_fonts(%rip)
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end16:
	.size	PDFFont_Set, .Lfunc_end16-PDFFont_Set
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_FindListEntry_Short,@function
PDFFont_FindListEntry_Short:            # @PDFFont_FindListEntry_Short
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB17_1
	.align	16, 0x90
.LBB17_3:                               #   in Loop: Header=BB17_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB17_4
# BB#2:                                 #   in Loop: Header=BB17_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB17_3
.LBB17_4:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	PDFFont_FindListEntry_Short, .Lfunc_end17-PDFFont_FindListEntry_Short
	.cfi_endproc

	.globl	PDFText_OpenXY
	.align	16, 0x90
	.type	PDFText_OpenXY,@function
PDFText_OpenXY:                         # @PDFText_OpenXY
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	PDFText_MoveToXYAndOpen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	PDFText_OpenXY, .Lfunc_end18-PDFText_OpenXY
	.cfi_endproc

	.align	16, 0x90
	.type	PDFText_OpenBT,@function
PDFText_OpenBT:                         # @PDFText_OpenBT
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	PDFPage_FlushBuffer
	movl	$1, g_page_has_text(%rip)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB19_2
# BB#1:
	movl	$0, g_TJ_pending(%rip)
	movq	-8(%rbp), %rdi
	movl	$.L.str.5, %esi
	callq	PDFPage_WriteStream
.LBB19_2:
	cmpl	$0, g_ET_pending(%rip)
	je	.LBB19_4
# BB#3:
	movl	$0, g_ET_pending(%rip)
	jmp	.LBB19_5
.LBB19_4:
	movq	-8(%rbp), %rdi
	movl	$.L.str.76, %esi
	callq	PDFPage_Write
	movl	$1, g_valid_text_matrix(%rip)
.LBB19_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	PDFText_OpenBT, .Lfunc_end19-PDFText_OpenBT
	.cfi_endproc

	.align	16, 0x90
	.type	PDFText_MoveToXYAndOpen,@function
PDFText_MoveToXYAndOpen:                # @PDFText_MoveToXYAndOpen
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp68:
	.cfi_offset %rbx, -24
	movl	%edx, %ecx
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-20(%rbp), %edx
	leaq	-544(%rbp), %rbx
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	movq	-16(%rbp), %rdi
	callq	PDFText_OpenString
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	PDFText_MoveToXYAndOpen, .Lfunc_end20-PDFText_MoveToXYAndOpen
	.cfi_endproc

	.globl	PDFText_OpenX
	.align	16, 0x90
	.type	PDFText_OpenX,@function
PDFText_OpenX:                          # @PDFText_OpenX
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	PDFText_MoveToXAndOpen
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	PDFText_OpenX, .Lfunc_end21-PDFText_OpenX
	.cfi_endproc

	.align	16, 0x90
	.type	PDFText_MoveToXAndOpen,@function
PDFText_MoveToXAndOpen:                 # @PDFText_MoveToXAndOpen
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp75:
	.cfi_offset %rbx, -24
	movl	%esi, %ecx
	movq	%rdi, -16(%rbp)
	movl	%ecx, -20(%rbp)
	leaq	-544(%rbp), %rbx
	movl	$.L.str.78, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	movq	-16(%rbp), %rdi
	callq	PDFText_OpenString
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	PDFText_MoveToXAndOpen, .Lfunc_end22-PDFText_MoveToXAndOpen
	.cfi_endproc

	.globl	PDFText_Open
	.align	16, 0x90
	.type	PDFText_Open,@function
PDFText_Open:                           # @PDFText_Open
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp76:
	.cfi_def_cfa_offset 16
.Ltmp77:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp78:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB23_2
# BB#1:
	cmpl	$1, g_ET_pending(%rip)
	movl	$0, g_TJ_pending(%rip)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movl	$0, g_ET_pending(%rip)
	jmp	.LBB23_3
.LBB23_2:
	movq	-8(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-8(%rbp), %rdi
	callq	PDFText_OpenString
.LBB23_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	PDFText_Open, .Lfunc_end23-PDFText_Open
	.cfi_endproc

	.align	16, 0x90
	.type	PDFText_OpenString,@function
PDFText_OpenString:                     # @PDFText_OpenString
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB24_2
# BB#1:
	movl	$0, g_TJ_pending(%rip)
	jmp	.LBB24_3
.LBB24_2:
	movq	-8(%rbp), %rdi
	movl	$.L.str.79, %esi
	callq	PDFPage_Write
.LBB24_3:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	PDFText_OpenString, .Lfunc_end24-PDFText_OpenString
	.cfi_endproc

	.globl	PDFText_Kern
	.align	16, 0x90
	.type	PDFText_Kern,@function
PDFText_Kern:                           # @PDFText_Kern
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp85:
	.cfi_offset %rbx, -24
	movl	%esi, %ecx
	movq	%rdi, -16(%rbp)
	movl	%ecx, -20(%rbp)
	negl	%ecx
	leaq	-544(%rbp), %rbx
	movl	$.L.str.12, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%ecx, %edx
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end25:
	.size	PDFText_Kern, .Lfunc_end25-PDFText_Kern
	.cfi_endproc

	.globl	PDFText_Close
	.align	16, 0x90
	.type	PDFText_Close,@function
PDFText_Close:                          # @PDFText_Close
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
	subq	$16, %rsp
	cmpl	$0, g_page_contents_obj_num(%rip)
	movq	%rdi, -8(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movl	$1, g_TJ_pending(%rip)
	movl	$1, g_ET_pending(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	PDFText_Close, .Lfunc_end26-PDFText_Close
	.cfi_endproc

	.globl	PDFPage_Scale
	.align	16, 0x90
	.type	PDFPage_Scale,@function
PDFPage_Scale:                          # @PDFPage_Scale
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp89:
	.cfi_def_cfa_offset 16
.Ltmp90:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp91:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp92:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	-544(%rbp), %rbx
	movl	$.L.str.13, %esi
	movb	$2, %al
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	movss	g_page_h_scale_factor(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	mulss	-20(%rbp), %xmm0
	movss	%xmm0, g_page_h_scale_factor(%rip)
	movss	g_page_v_scale_factor(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	mulss	-24(%rbp), %xmm0
	movss	%xmm0, g_page_v_scale_factor(%rip)
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	PDFPage_Scale, .Lfunc_end27-PDFPage_Scale
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI28_0:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.globl	PDFPage_Rotate
	.align	16, 0x90
	.type	PDFPage_Rotate,@function
PDFPage_Rotate:                         # @PDFPage_Rotate
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp96:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	cos
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	sin
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, -28(%rbp)
	movss	-24(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm1
	xorps	.LCPI28_0(%rip), %xmm2
	cvtss2sd	%xmm2, %xmm2
	leaq	-544(%rbp), %rbx
	movl	$.L.str.14, %esi
	movb	$4, %al
	movq	%rbx, %rdi
	movaps	%xmm0, %xmm3
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	PDFPage_Rotate, .Lfunc_end28-PDFPage_Rotate
	.cfi_endproc

	.globl	PDFPage_Translate
	.align	16, 0x90
	.type	PDFPage_Translate,@function
PDFPage_Translate:                      # @PDFPage_Translate
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp97:
	.cfi_def_cfa_offset 16
.Ltmp98:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp99:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp100:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movss	%xmm0, -20(%rbp)
	movss	%xmm1, -24(%rbp)
	movss	-20(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	-24(%rbp), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	-544(%rbp), %rbx
	movl	$.L.str.15, %esi
	movb	$2, %al
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	xorps	%xmm0, %xmm0
	cvtsi2ssl	g_page_h_origin(%rip), %xmm0
	addss	-20(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, g_page_h_origin(%rip)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	g_page_v_origin(%rip), %xmm0
	addss	-24(%rbp), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, g_page_v_origin(%rip)
	addq	$536, %rsp              # imm = 0x218
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	PDFPage_Translate, .Lfunc_end29-PDFPage_Translate
	.cfi_endproc

	.globl	PDFPage_WriteGraphic
	.align	16, 0x90
	.type	PDFPage_WriteGraphic,@function
PDFPage_WriteGraphic:                   # @PDFPage_WriteGraphic
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
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp104:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rsi, -552(%rbp)
	leaq	-544(%rbp), %rax
	movq	%rax, -560(%rbp)
	movq	-552(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB30_31
# BB#1:
	cmpl	$0, g_expr_depth(%rip)
	je	.LBB30_4
# BB#2:
	movq	-552(%rbp), %rdi
	leaq	-564(%rbp), %rsi
	leaq	-568(%rbp), %rdx
	callq	PDFPage_CollectExpr
	movq	%rax, -552(%rbp)
	cmpl	$0, -564(%rbp)
	je	.LBB30_4
# BB#3:
	movq	-560(%rbp), %rdi
	movss	-568(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	movb	$1, %al
	callq	sprintf
	movq	-560(%rbp), %rdi
	callq	strlen
	addq	%rax, -560(%rbp)
.LBB30_4:
	cmpl	$0, g_link_depth(%rip)
	je	.LBB30_7
.LBB30_5:
	movq	-552(%rbp), %rdi
	callq	PDFPage_CollectLink
.LBB30_6:
	movq	%rax, -552(%rbp)
	jmp	.LBB30_7
	.align	16, 0x90
.LBB30_29:                              #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -552(%rbp)
	movb	(%rax), %al
	movq	-560(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -560(%rbp)
	movb	%al, (%rcx)
.LBB30_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB30_21 Depth 2
	movq	-552(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB30_30
# BB#8:                                 #   in Loop: Header=BB30_7 Depth=1
	leaq	-32(%rbp), %rax
	cmpq	%rax, -560(%rbp)
	sbbl	%edi, %edi
	andl	$1, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB30_29
# BB#9:                                 #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB30_29
# BB#10:                                #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -552(%rbp)
	movl	$4, %edi
	movl	$g_graphic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -572(%rbp)
	testl	%eax, %eax
	js	.LBB30_12
# BB#11:                                #   in Loop: Header=BB30_7 Depth=1
	movslq	-572(%rbp), %rax
	movq	g_graphic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -552(%rbp)
	movq	-560(%rbp), %rdi
	movslq	-572(%rbp), %rax
	movl	g_graphics_vars(,%rax,4), %edx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	sprintf
.LBB30_27:                              #   in Loop: Header=BB30_7 Depth=1
	movq	-560(%rbp), %rdi
	callq	strlen
	addq	%rax, -560(%rbp)
	jmp	.LBB30_7
.LBB30_12:                              #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rdx
	movl	$5, %edi
	movl	$g_link_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -572(%rbp)
	testl	%eax, %eax
	jns	.LBB30_13
# BB#17:                                #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rdx
	movl	$4, %edi
	movl	$g_doc_info_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -572(%rbp)
	testl	%eax, %eax
	jns	.LBB30_18
# BB#19:                                #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rdx
	movl	$7, %edi
	movl	$g_arithmetic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -572(%rbp)
	testl	%eax, %eax
	js	.LBB30_28
# BB#20:                                #   in Loop: Header=BB30_7 Depth=1
	movslq	-572(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rsi
	movl	$g_expr, %edi
	callq	strcpy
	movslq	-572(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -552(%rbp)
	jmp	.LBB30_21
	.align	16, 0x90
.LBB30_22:                              #   in Loop: Header=BB30_21 Depth=2
	incq	-552(%rbp)
.LBB30_21:                              #   Parent Loop BB30_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-552(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB30_22
# BB#23:                                #   in Loop: Header=BB30_7 Depth=1
	movq	-552(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$40, %eax
	je	.LBB30_25
# BB#24:                                #   in Loop: Header=BB30_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$36, %esi
	movl	$.L.str.18, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB30_25:                              #   in Loop: Header=BB30_7 Depth=1
	movl	$g_expr, %edi
	movl	$.L.str.19, %esi
	callq	strcat
	movl	$g_expr, %edi
	callq	strlen
	movl	%eax, g_expr_index(%rip)
	incl	g_expr_depth(%rip)
	movq	-552(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -552(%rbp)
	leaq	-580(%rbp), %rsi
	leaq	-576(%rbp), %rdx
	callq	PDFPage_CollectExpr
	movq	%rax, -552(%rbp)
	cmpl	$0, -580(%rbp)
	je	.LBB30_7
# BB#26:                                #   in Loop: Header=BB30_7 Depth=1
	movq	-560(%rbp), %rdi
	movss	-576(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	movb	$1, %al
	callq	sprintf
	jmp	.LBB30_27
.LBB30_28:                              #   in Loop: Header=BB30_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$37, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-560(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -560(%rbp)
	movb	$95, (%rax)
	movq	-560(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -560(%rbp)
	movb	$95, (%rax)
	jmp	.LBB30_7
.LBB30_13:
	movslq	-572(%rbp), %rax
	movq	g_link_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -552(%rbp)
	jmp	.LBB30_14
	.align	16, 0x90
.LBB30_15:                              #   in Loop: Header=BB30_14 Depth=1
	incq	-552(%rbp)
.LBB30_14:                              # =>This Inner Loop Header: Depth=1
	movq	-552(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB30_15
# BB#16:
	movl	$0, g_link_index(%rip)
	incl	g_link_depth(%rip)
	movl	-572(%rbp), %eax
	movl	%eax, g_link_keyword(%rip)
	jmp	.LBB30_5
.LBB30_30:
	movq	-560(%rbp), %rax
	movb	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	PDFPage_FlushBuffer
	movq	-16(%rbp), %rdi
	leaq	-544(%rbp), %rsi
	callq	PDFPage_Write
.LBB30_31:
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.LBB30_18:
	movslq	-572(%rbp), %rax
	movq	g_doc_info_keywords(,%rax,8), %rdi
	callq	strlen
	addq	-552(%rbp), %rax
	movq	%rax, -552(%rbp)
	movl	-572(%rbp), %esi
	movq	%rax, %rdi
	callq	PDFPage_ProcessDocInfoKeyword
	jmp	.LBB30_6
.Lfunc_end30:
	.size	PDFPage_WriteGraphic, .Lfunc_end30-PDFPage_WriteGraphic
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_CollectExpr,@function
PDFPage_CollectExpr:                    # @PDFPage_CollectExpr
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB31_1
	.align	16, 0x90
.LBB31_5:                               #   in Loop: Header=BB31_1 Depth=1
	incl	g_expr_depth(%rip)
.LBB31_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB31_9
# BB#2:                                 #   in Loop: Header=BB31_1 Depth=1
	movslq	g_expr_index(%rip), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB31_4
# BB#3:                                 #   in Loop: Header=BB31_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$34, %esi
	movl	$.L.str.80, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB31_4:                               #   in Loop: Header=BB31_1 Depth=1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %al
	movb	%al, -25(%rbp)
	movslq	g_expr_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_expr_index(%rip)
	movb	%al, g_expr(%rcx)
	movzbl	-25(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB31_5
# BB#6:                                 #   in Loop: Header=BB31_1 Depth=1
	movzbl	-25(%rbp), %eax
	cmpl	$41, %eax
	jne	.LBB31_1
# BB#7:                                 #   in Loop: Header=BB31_1 Depth=1
	cmpl	$0, g_expr_depth(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	decl	g_expr_depth(%rip)
	jne	.LBB31_1
# BB#8:
	movslq	g_expr_index(%rip), %rax
	movb	$0, g_expr(%rax)
	movq	-24(%rbp), %rsi
	movl	$g_expr, %edi
	callq	PDFPage_EvalExpr
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
.LBB31_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	PDFPage_CollectExpr, .Lfunc_end31-PDFPage_CollectExpr
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_CollectLink,@function
PDFPage_CollectLink:                    # @PDFPage_CollectLink
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	jmp	.LBB32_1
	.align	16, 0x90
.LBB32_6:                               #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %al
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	incl	g_link_depth(%rip)
.LBB32_1:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB32_11
# BB#2:                                 #   in Loop: Header=BB32_1 Depth=1
	movslq	g_link_index(%rip), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB32_4
# BB#3:                                 #   in Loop: Header=BB32_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$35, %esi
	movl	$.L.str.94, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB32_4:                               #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %al
	movb	%al, -9(%rbp)
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	movzbl	-9(%rbp), %eax
	cmpl	$60, %eax
	jne	.LBB32_7
# BB#5:                                 #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$60, %eax
	je	.LBB32_6
.LBB32_7:                               #   in Loop: Header=BB32_1 Depth=1
	movzbl	-9(%rbp), %eax
	cmpl	$62, %eax
	jne	.LBB32_1
# BB#8:                                 #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$62, %eax
	jne	.LBB32_1
# BB#9:                                 #   in Loop: Header=BB32_1 Depth=1
	cmpl	$0, g_link_depth(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	decl	g_link_depth(%rip)
	je	.LBB32_10
# BB#12:                                #   in Loop: Header=BB32_1 Depth=1
	movq	-8(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -8(%rbp)
	movb	(%rax), %al
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	jmp	.LBB32_1
.LBB32_10:
	movslq	g_link_index(%rip), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, g_link_index(%rip)
	movb	$0, g_link-1(%rax)
	callq	PDFPage_ProcessLinkKeyword
	incq	-8(%rbp)
.LBB32_11:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	PDFPage_CollectLink, .Lfunc_end32-PDFPage_CollectLink
	.cfi_endproc

	.align	16, 0x90
	.type	PDFKeyword_Find,@function
PDFKeyword_Find:                        # @PDFKeyword_Find
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB33_1
	.align	16, 0x90
.LBB33_3:                               #   in Loop: Header=BB33_1 Depth=1
	incl	-28(%rbp)
.LBB33_1:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jae	.LBB33_4
# BB#2:                                 #   in Loop: Header=BB33_1 Depth=1
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	strlen
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-24(%rbp), %rsi
	movl	-32(%rbp), %edx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB33_3
.LBB33_4:
	movl	-28(%rbp), %ecx
	movl	$-1, %eax
	cmpl	-4(%rbp), %ecx
	jae	.LBB33_6
# BB#5:
	movl	-28(%rbp), %eax
.LBB33_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	PDFKeyword_Find, .Lfunc_end33-PDFKeyword_Find
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_ProcessDocInfoKeyword,@function
PDFPage_ProcessDocInfoKeyword:          # @PDFPage_ProcessDocInfoKeyword
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp117:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	cmpq	$3, %rax
	ja	.LBB34_24
# BB#1:
	jmpq	*.LJTI34_0(,%rax,8)
.LBB34_2:
	cmpq	$0, g_doc_author(%rip)
	je	.LBB34_4
# BB#3:
	movq	g_doc_author(%rip), %rdi
	callq	free
.LBB34_4:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_author(%rip)
	testq	%rax, %rax
	je	.LBB34_5
# BB#7:
	movq	g_doc_author(%rip), %rdi
	jmp	.LBB34_23
.LBB34_8:
	cmpq	$0, g_doc_title(%rip)
	je	.LBB34_10
# BB#9:
	movq	g_doc_title(%rip), %rdi
	callq	free
.LBB34_10:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_title(%rip)
	testq	%rax, %rax
	je	.LBB34_11
# BB#12:
	movq	g_doc_title(%rip), %rdi
	jmp	.LBB34_23
.LBB34_13:
	cmpq	$0, g_doc_subject(%rip)
	je	.LBB34_15
# BB#14:
	movq	g_doc_subject(%rip), %rdi
	callq	free
.LBB34_15:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_subject(%rip)
	testq	%rax, %rax
	je	.LBB34_16
# BB#17:
	movq	g_doc_subject(%rip), %rdi
	jmp	.LBB34_23
.LBB34_18:
	cmpq	$0, g_doc_keywords(%rip)
	je	.LBB34_20
# BB#19:
	movq	g_doc_keywords(%rip), %rdi
	callq	free
.LBB34_20:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_keywords(%rip)
	testq	%rax, %rax
	je	.LBB34_21
# BB#22:
	movq	g_doc_keywords(%rip), %rdi
.LBB34_23:
	movq	-16(%rbp), %rsi
	callq	strcpy
	jmp	.LBB34_24
.LBB34_5:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$26, %esi
	movl	$.L.str.122, %edx
	jmp	.LBB34_6
.LBB34_11:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$27, %esi
	movl	$.L.str.123, %edx
	jmp	.LBB34_6
.LBB34_16:
	movq	no_fpos(%rip), %r8
	movl	$47, %edi
	movl	$28, %esi
	movl	$.L.str.124, %edx
	jmp	.LBB34_6
.LBB34_21:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$29, %esi
	movl	$.L.str.125, %edx
.LBB34_6:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB34_24:
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	PDFPage_ProcessDocInfoKeyword, .Lfunc_end34-PDFPage_ProcessDocInfoKeyword
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI34_0:
	.quad	.LBB34_2
	.quad	.LBB34_8
	.quad	.LBB34_13
	.quad	.LBB34_18

	.text
	.globl	PDFPage_PrintUnderline
	.align	16, 0x90
	.type	PDFPage_PrintUnderline,@function
PDFPage_PrintUnderline:                 # @PDFPage_PrintUnderline
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
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp121:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	PDFPage_FlushBuffer
	movl	-32(%rbp), %edx
	movl	-20(%rbp), %ecx
	movl	-28(%rbp), %r8d
	movl	-24(%rbp), %r9d
	movl	%r8d, (%rsp)
	leaq	-544(%rbp), %rbx
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-16(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	PDFPage_PrintUnderline, .Lfunc_end35-PDFPage_PrintUnderline
	.cfi_endproc

	.globl	PDFPage_Init
	.align	16, 0x90
	.type	PDFPage_Init,@function
PDFPage_Init:                           # @PDFPage_Init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp122:
	.cfi_def_cfa_offset 16
.Ltmp123:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp124:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movss	%xmm0, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	$0, g_page_uses_fonts(%rip)
	movl	$0, g_page_has_text(%rip)
	movl	$0, g_page_has_graphics(%rip)
	movl	$0, g_page_contents_obj_num(%rip)
	movl	$0, g_page_length_obj_num(%rip)
	movl	$0, g_page_start_offset(%rip)
	movss	-12(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, g_page_v_scale_factor(%rip)
	movss	%xmm0, g_page_h_scale_factor(%rip)
	movl	$0, g_page_v_origin(%rip)
	movl	$0, g_page_h_origin(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, g_page_line_width(%rip)
	movl	$0, g_graphics_vars(%rip)
	movl	$0, g_graphics_vars+4(%rip)
	movl	$0, g_graphics_vars+8(%rip)
	movl	$0, g_graphics_vars+12(%rip)
	movl	$0, g_units+16(%rip)
	movl	$0, g_units+20(%rip)
	movl	$0, g_units+24(%rip)
	movl	$0, g_ET_pending(%rip)
	movl	$0, g_TJ_pending(%rip)
	movl	$0, g_valid_text_matrix(%rip)
	movq	g_font_list(%rip), %rax
	jmp	.LBB36_1
	.align	16, 0x90
.LBB36_2:                               #   in Loop: Header=BB36_1 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB36_2
# BB#3:
	movq	$0, g_qsave_stack(%rip)
	movq	$0, g_qsave_marking_stack(%rip)
	movl	$0, g_buffer_pos(%rip)
	movb	$0, g_buffer(%rip)
	movl	$0, g_in_buffering_mode(%rip)
	movl	$1, g_in_buffering_mode(%rip)
	incl	g_page_count(%rip)
	callq	PDFObject_New
	movl	%eax, g_page_object_num(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	PDFPage_Init, .Lfunc_end36-PDFPage_Init
	.cfi_endproc

	.globl	PDFPage_Cleanup
	.align	16, 0x90
	.type	PDFPage_Cleanup,@function
PDFPage_Cleanup:                        # @PDFPage_Cleanup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp125:
	.cfi_def_cfa_offset 16
.Ltmp126:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp127:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, g_qsave_stack(%rip)
	movl	$0, -12(%rbp)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	cmpl	$0, g_page_contents_obj_num(%rip)
	je	.LBB37_6
# BB#1:
	movq	-8(%rbp), %rdi
	callq	PDFPage_End
	movl	%eax, -16(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB37_3
# BB#2:
	movq	-8(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB37_3:
	movq	-8(%rbp), %rdi
	movl	g_page_length_obj_num(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-8(%rbp), %rdi
	movl	-16(%rbp), %edx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	g_font_list(%rip), %rax
	jmp	.LBB37_4
	.align	16, 0x90
.LBB37_5:                               #   in Loop: Header=BB37_4 Depth=1
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	PDFFont_WriteFontResource
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
.LBB37_4:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB37_5
.LBB37_6:
	movq	g_source_annot_list(%rip), %rax
	jmp	.LBB37_7
	.align	16, 0x90
.LBB37_10:                              #   in Loop: Header=BB37_7 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB37_11
# BB#8:                                 #   in Loop: Header=BB37_7 Depth=1
	movq	-32(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	g_page_object_num(%rip), %eax
	jne	.LBB37_10
# BB#9:                                 #   in Loop: Header=BB37_7 Depth=1
	movl	$1, -12(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	PDFSourceAnnot_Write
	jmp	.LBB37_10
.LBB37_11:
	movl	g_page_count(%rip), %eax
	decl	%eax
	shrl	$6, %eax
	movl	%eax, -36(%rbp)
	movl	g_page_count(%rip), %eax
	decl	%eax
	andl	$63, %eax
	movl	%eax, -40(%rbp)
	movq	g_cur_page_block(%rip), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB37_12
# BB#18:
	cmpq	$0, -48(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	jmp	.LBB37_19
.LBB37_12:
	movl	$264, %edi              # imm = 0x108
	callq	malloc
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	jne	.LBB37_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$38, %esi
	movl	$.L.str.24, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB37_14:
	cmpl	$0, -36(%rbp)
	je	.LBB37_15
# BB#16:
	cmpq	$0, g_cur_page_block(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-48(%rbp), %rax
	movq	g_cur_page_block(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB37_17
.LBB37_15:
	cmpq	$0, g_page_block_list(%rip)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-48(%rbp), %rax
	movq	%rax, g_page_block_list(%rip)
.LBB37_17:
	movq	-48(%rbp), %rax
	movq	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, g_cur_page_block(%rip)
.LBB37_19:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB37_21
# BB#20:
	movq	-8(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB37_21:
	movl	g_page_object_num(%rip), %eax
	movl	-40(%rbp), %ecx
	movq	-48(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,4)
	movq	-8(%rbp), %rdi
	movl	g_page_object_num(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-8(%rbp), %rsi
	movl	$.L.str.26, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movl	g_doc_h_bound(%rip), %edx
	movl	g_doc_v_bound(%rip), %ecx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rsi
	movl	$.L.str.28, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movl	g_pages_root(%rip), %esi
	callq	PDFObject_WriteRef
	movq	-8(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
	cmpl	$0, g_page_contents_obj_num(%rip)
	je	.LBB37_23
# BB#22:
	movq	-8(%rbp), %rsi
	movl	$.L.str.30, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movl	g_page_contents_obj_num(%rip), %esi
	callq	PDFObject_WriteRef
	movq	-8(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB37_23:
	cmpl	$0, g_page_uses_fonts(%rip)
	jne	.LBB37_26
# BB#24:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB37_26
# BB#25:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB37_27
.LBB37_26:
	movq	-8(%rbp), %rsi
	movl	$.L.str.31, %edi
	callq	fputs
.LBB37_27:
	cmpl	$0, g_page_uses_fonts(%rip)
	je	.LBB37_34
# BB#28:
	movq	g_font_list(%rip), %rax
	movq	%rax, -56(%rbp)
	movq	-8(%rbp), %rsi
	movl	$.L.str.32, %edi
	callq	fputs
	jmp	.LBB37_29
	.align	16, 0x90
.LBB37_32:                              #   in Loop: Header=BB37_29 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB37_29:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB37_33
# BB#30:                                #   in Loop: Header=BB37_29 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB37_32
# BB#31:                                #   in Loop: Header=BB37_29 Depth=1
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	PDFFont_WriteObjectRef
	jmp	.LBB37_32
.LBB37_33:
	movq	-8(%rbp), %rsi
	movl	$.L.str.34, %edi
	callq	fputs
.LBB37_34:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB37_36
# BB#35:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB37_39
.LBB37_36:
	movq	-8(%rbp), %rsi
	movl	$.L.str.35, %edi
	callq	fputs
	cmpl	$0, g_page_has_text(%rip)
	je	.LBB37_38
# BB#37:
	movq	-8(%rbp), %rsi
	movl	$.L.str.36, %edi
	callq	fputs
.LBB37_38:
	movq	-8(%rbp), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
.LBB37_39:
	cmpl	$0, g_page_uses_fonts(%rip)
	jne	.LBB37_42
# BB#40:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB37_42
# BB#41:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB37_43
.LBB37_42:
	movq	-8(%rbp), %rsi
	movl	$.L.str.38, %edi
	callq	fputs
.LBB37_43:
	cmpl	$0, -12(%rbp)
	je	.LBB37_55
# BB#44:
	movq	g_source_annot_list(%rip), %rax
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	-8(%rbp), %rsi
	movl	$.L.str.39, %edi
	callq	fputs
	jmp	.LBB37_45
	.align	16, 0x90
.LBB37_53:                              #   in Loop: Header=BB37_45 Depth=1
	movq	-64(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
.LBB37_45:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -64(%rbp)
	je	.LBB37_54
# BB#46:                                #   in Loop: Header=BB37_45 Depth=1
	movq	-64(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	g_page_object_num(%rip), %eax
	jne	.LBB37_53
# BB#47:                                #   in Loop: Header=BB37_45 Depth=1
	movq	-8(%rbp), %rsi
	movl	$.L.str.40, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-64(%rbp), %rax
	movl	48(%rax), %esi
	callq	PDFObject_WriteRef
	movq	-64(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB37_53
# BB#48:                                #   in Loop: Header=BB37_45 Depth=1
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	g_source_annot_list(%rip), %rax
	cmpq	-64(%rbp), %rax
	jne	.LBB37_50
# BB#49:                                #   in Loop: Header=BB37_45 Depth=1
	movq	-80(%rbp), %rax
	movq	%rax, g_source_annot_list(%rip)
.LBB37_50:                              #   in Loop: Header=BB37_45 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB37_52
# BB#51:                                #   in Loop: Header=BB37_45 Depth=1
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB37_52:                              #   in Loop: Header=BB37_45 Depth=1
	movq	-64(%rbp), %rdi
	callq	PDFSourceAnnot_Dispose
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	jmp	.LBB37_45
.LBB37_54:
	movq	-8(%rbp), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
.LBB37_55:
	movq	-8(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	PDFPage_Cleanup, .Lfunc_end37-PDFPage_Cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_End,@function
PDFPage_End:                            # @PDFPage_End
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp128:
	.cfi_def_cfa_offset 16
.Ltmp129:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp130:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB38_2
# BB#1:
	movl	$0, g_buffer_pos(%rip)
	movb	$0, g_buffer(%rip)
	movq	-8(%rbp), %rdi
	callq	PDFPage_FlushBuffer
.LBB38_2:
	cmpl	$0, g_page_contents_obj_num(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-8(%rbp), %rdi
	callq	ftell
	subl	g_page_start_offset(%rip), %eax
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rsi
	movl	$.L.str.134, %edi
	callq	fputs
	movl	-12(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	PDFPage_End, .Lfunc_end38-PDFPage_End
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_WriteObj,@function
PDFObject_WriteObj:                     # @PDFObject_WriteObj
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp131:
	.cfi_def_cfa_offset 16
.Ltmp132:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp133:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	leaq	-16(%rbp), %rax
	movl	%esi, %edi
	movq	%rax, %rsi
	callq	PDFObject_FindOffsetBlock
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %ecx
	cmpl	$0, 8(%rax,%rcx,4)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-8(%rbp), %rdi
	callq	ftell
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,4)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %edx
	movl	$.L.str.135, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	PDFObject_WriteObj, .Lfunc_end39-PDFObject_WriteObj
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_WriteFontResource,@function
PDFFont_WriteFontResource:              # @PDFFont_WriteFontResource
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp134:
	.cfi_def_cfa_offset 16
.Ltmp135:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp136:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, 40(%rsi)
	jne	.LBB40_6
# BB#1:
	movq	-16(%rbp), %rax
	movl	$1, 40(%rax)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB40_3
# BB#2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movl	$.L.str.136, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB40_3:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	PDFFont_WriteObject
	movq	-8(%rbp), %rsi
	movl	$.L.str.137, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movl	$.L.str.139, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	callq	PDFFont_IsOneOfTheBase14Fonts
	movq	-16(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB40_5
# BB#4:
	movq	-8(%rbp), %rsi
	movl	$.L.str.140, %edi
	callq	fputs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %esi
	callq	PDFObject_WriteRef
	movq	-8(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB40_5:
	movq	-8(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
.LBB40_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	PDFFont_WriteFontResource, .Lfunc_end40-PDFFont_WriteFontResource
	.cfi_endproc

	.align	16, 0x90
	.type	PDFSourceAnnot_Write,@function
PDFSourceAnnot_Write:                   # @PDFSourceAnnot_Write
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp137:
	.cfi_def_cfa_offset 16
.Ltmp138:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp139:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	testq	%rsi, %rsi
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB41_2
# BB#1:
	cmpq	$0, -24(%rbp)
	je	.LBB41_24
.LBB41_2:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB41_4
# BB#3:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	52(%rax), %edx
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.155, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB41_4:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	48(%rax), %esi
	callq	PDFObject_WriteObj
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r8d
	movl	44(%rax), %r9d
	movl	$.L.str.156, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$2, %eax
	je	.LBB41_22
# BB#5:
	cmpl	$1, %eax
	jne	.LBB41_6
# BB#21:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rax), %rcx
	movl	$.L.str.167, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB41_23
.LBB41_22:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movl	$.L.str.168, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB41_23
.LBB41_6:
	testl	%eax, %eax
	jne	.LBB41_23
# BB#7:
	movq	-8(%rbp), %rdi
	movl	$.L.str.157, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movl	16(%rax), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rax
	movl	56(%rax), %eax
	cmpq	$7, %rax
	jbe	.LBB41_8
# BB#19:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$18, %esi
	movl	$.L.str.166, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB41_20
.LBB41_8:
	jmpq	*.LJTI41_0(,%rax,8)
.LBB41_9:
	movq	-8(%rbp), %rdi
	movl	$.L.str.158, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB41_10:
	movq	-8(%rbp), %rdi
	movl	$.L.str.159, %esi
	jmp	.LBB41_11
.LBB41_12:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movl	$.L.str.160, %esi
	jmp	.LBB41_13
.LBB41_14:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	$.L.str.161, %esi
	jmp	.LBB41_13
.LBB41_15:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	24(%rax), %ecx
	movl	28(%rax), %r8d
	movl	32(%rax), %r9d
	movl	$.L.str.162, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB41_20
.LBB41_16:
	movq	-8(%rbp), %rdi
	movl	$.L.str.163, %esi
.LBB41_11:
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB41_20
.LBB41_17:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	32(%rax), %edx
	movl	$.L.str.164, %esi
	jmp	.LBB41_13
.LBB41_18:
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	20(%rax), %edx
	movl	$.L.str.165, %esi
.LBB41_13:
	xorl	%eax, %eax
	callq	fprintf
.LBB41_20:
	movq	-8(%rbp), %rdi
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB41_23:
	movq	-8(%rbp), %rdi
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rax
	movl	$1, 64(%rax)
.LBB41_24:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	PDFSourceAnnot_Write, .Lfunc_end41-PDFSourceAnnot_Write
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI41_0:
	.quad	.LBB41_9
	.quad	.LBB41_10
	.quad	.LBB41_12
	.quad	.LBB41_14
	.quad	.LBB41_15
	.quad	.LBB41_16
	.quad	.LBB41_17
	.quad	.LBB41_18

	.text
	.align	16, 0x90
	.type	PDFObject_WriteRef,@function
PDFObject_WriteRef:                     # @PDFObject_WriteRef
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp140:
	.cfi_def_cfa_offset 16
.Ltmp141:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp142:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%esi, %ecx
	movq	%rdi, -8(%rbp)
	movl	%ecx, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	movl	%ecx, %edx
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end42:
	.size	PDFObject_WriteRef, .Lfunc_end42-PDFObject_WriteRef
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_WriteObjectRef,@function
PDFFont_WriteObjectRef:                 # @PDFFont_WriteObjectRef
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp143:
	.cfi_def_cfa_offset 16
.Ltmp144:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp145:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, 36(%rsi)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	callq	PDFObject_WriteRef
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	PDFFont_WriteObjectRef, .Lfunc_end43-PDFFont_WriteObjectRef
	.cfi_endproc

	.align	16, 0x90
	.type	PDFSourceAnnot_Dispose,@function
PDFSourceAnnot_Dispose:                 # @PDFSourceAnnot_Dispose
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp146:
	.cfi_def_cfa_offset 16
.Ltmp147:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp148:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	(%rdi), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB44_2
# BB#1:
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB44_2:
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB44_4
# BB#3:
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB44_4:
	movq	-8(%rbp), %rdi
	callq	free
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	PDFSourceAnnot_Dispose, .Lfunc_end44-PDFSourceAnnot_Dispose
	.cfi_endproc

	.globl	PDFFile_Init
	.align	16, 0x90
	.type	PDFFile_Init,@function
PDFFile_Init:                           # @PDFFile_Init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp149:
	.cfi_def_cfa_offset 16
.Ltmp150:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp151:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movq	-8(%rbp), %rsi
	movl	$.L.str.42, %edi
	callq	fputs
	movq	-8(%rbp), %rsi
	movl	$.L.str.43, %edi
	callq	fputs
	movl	$0, g_PDF_debug(%rip)
	movl	$1, g_next_objnum(%rip)
	movq	$0, g_obj_offset_list(%rip)
	movq	$0, g_cur_obj_offset_block(%rip)
	movq	$0, g_font_list(%rip)
	movq	$0, g_font_encoding_list(%rip)
	movl	$0, g_page_count(%rip)
	movq	$0, g_page_block_list(%rip)
	movq	$0, g_cur_page_block(%rip)
	callq	PDFObject_New
	movl	%eax, g_pages_root(%rip)
	movl	-12(%rbp), %eax
	movl	%eax, g_doc_h_bound(%rip)
	movl	-16(%rbp), %eax
	movl	%eax, g_doc_v_bound(%rip)
	movq	$0, g_doc_author(%rip)
	movq	$0, g_doc_title(%rip)
	movq	$0, g_doc_subject(%rip)
	movq	$0, g_doc_keywords(%rip)
	movq	$0, g_target_annot_list(%rip)
	movl	$0, g_has_exported_targets(%rip)
	movq	$0, g_source_annot_list(%rip)
	movl	-20(%rbp), %eax
	movl	%eax, g_units(%rip)
	movl	-24(%rbp), %eax
	movl	%eax, g_units+4(%rip)
	movl	-28(%rbp), %eax
	movl	%eax, g_units+8(%rip)
	movl	-32(%rbp), %eax
	movl	%eax, g_units+12(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	PDFFile_Init, .Lfunc_end45-PDFFile_Init
	.cfi_endproc

	.globl	PDFFile_Cleanup
	.align	16, 0x90
	.type	PDFFile_Cleanup,@function
PDFFile_Cleanup:                        # @PDFFile_Cleanup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp152:
	.cfi_def_cfa_offset 16
.Ltmp153:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp154:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp155:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	g_source_annot_list(%rip), %rax
	jmp	.LBB46_1
	.align	16, 0x90
.LBB46_4:                               #   in Loop: Header=BB46_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB46_5
# BB#2:                                 #   in Loop: Header=BB46_1 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-40(%rbp), %rax
	movq	16(%rax), %rdi
	callq	PDFTargetAnnot_Find
	movq	%rax, -48(%rbp)
	testq	%rax, %rax
	je	.LBB46_4
# BB#3:                                 #   in Loop: Header=BB46_1 Depth=1
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	PDFSourceAnnot_Write
	jmp	.LBB46_4
.LBB46_5:
	movq	-16(%rbp), %rdi
	callq	PDFFile_WritePagesObject
	cmpl	$0, g_has_exported_targets(%rip)
	je	.LBB46_14
# BB#6:
	movq	g_target_annot_list(%rip), %rax
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB46_8
# BB#7:
	movq	-16(%rbp), %rdi
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_8:
	movq	-16(%rbp), %rdi
	callq	PDFObject_WriteNewObj
	movl	%eax, -32(%rbp)
	movq	-16(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	jmp	.LBB46_9
	.align	16, 0x90
.LBB46_12:                              #   in Loop: Header=BB46_9 Depth=1
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB46_9:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB46_13
# BB#10:                                #   in Loop: Header=BB46_9 Depth=1
	movq	-56(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB46_12
# BB#11:                                #   in Loop: Header=BB46_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movl	16(%rax), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rdi
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB46_12
.LBB46_13:
	movq	-16(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
.LBB46_14:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB46_16
# BB#15:
	movq	-16(%rbp), %rdi
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_16:
	movq	-16(%rbp), %rdi
	callq	PDFObject_WriteNewObj
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.49, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.50, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	g_pages_root(%rip), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
	cmpl	$0, g_has_exported_targets(%rip)
	je	.LBB46_18
# BB#17:
	movq	-16(%rbp), %rsi
	movl	$.L.str.51, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB46_18:
	movq	-16(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB46_20
# BB#19:
	movq	-16(%rbp), %rdi
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_20:
	movq	-16(%rbp), %rdi
	callq	PDFObject_WriteNewObj
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	$.L.str.53, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	$.L.str.55, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	time
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdi
	callq	localtime
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rdi
	movl	$1900, %edx             # imm = 0x76C
	addl	20(%rax), %edx
	movl	16(%rax), %ecx
	incl	%ecx
	movl	12(%rax), %r8d
	movl	8(%rax), %r9d
	movl	(%rax), %esi
	movl	4(%rax), %eax
	movl	%esi, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$.L.str.56, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpq	$0, g_doc_author(%rip)
	je	.LBB46_22
# BB#21:
	movq	-16(%rbp), %rdi
	movq	g_doc_author(%rip), %rdx
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_22:
	cmpq	$0, g_doc_title(%rip)
	je	.LBB46_24
# BB#23:
	movq	-16(%rbp), %rdi
	movq	g_doc_title(%rip), %rdx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_24:
	cmpq	$0, g_doc_subject(%rip)
	je	.LBB46_26
# BB#25:
	movq	-16(%rbp), %rdi
	movq	g_doc_subject(%rip), %rdx
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_26:
	cmpq	$0, g_doc_keywords(%rip)
	je	.LBB46_28
# BB#27:
	movq	-16(%rbp), %rdi
	movq	g_doc_keywords(%rip), %rdx
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB46_28:
	movq	-16(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	callq	PDFFile_WriteXREF
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	movl	$.L.str.61, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	g_next_objnum(%rip), %edx
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rsi
	movl	$.L.str.63, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rsi
	movl	$.L.str.64, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	PDFObject_WriteRef
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %edx
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rsi
	movl	$.L.str.66, %edi
	callq	fputs
	jmp	.LBB46_29
	.align	16, 0x90
.LBB46_30:                              #   in Loop: Header=BB46_29 Depth=1
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -80(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_obj_offset_list(%rip)
	movq	-80(%rbp), %rdi
	callq	free
.LBB46_29:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_obj_offset_list(%rip)
	jne	.LBB46_30
	jmp	.LBB46_31
	.align	16, 0x90
.LBB46_32:                              #   in Loop: Header=BB46_31 Depth=1
	movq	g_font_encoding_list(%rip), %rax
	movq	%rax, -88(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_font_encoding_list(%rip)
	movq	-88(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	-88(%rbp), %rdi
	callq	free
.LBB46_31:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_font_encoding_list(%rip)
	jne	.LBB46_32
	jmp	.LBB46_33
	.align	16, 0x90
.LBB46_34:                              #   in Loop: Header=BB46_33 Depth=1
	movq	g_font_list(%rip), %rax
	movq	%rax, -96(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_font_list(%rip)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-96(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	-96(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
	movq	-96(%rbp), %rdi
	callq	free
.LBB46_33:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_font_list(%rip)
	jne	.LBB46_34
	jmp	.LBB46_36
	.align	16, 0x90
.LBB46_35:                              #   in Loop: Header=BB46_36 Depth=1
	movq	g_page_block_list(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_page_block_list(%rip)
	movq	-104(%rbp), %rdi
	callq	free
.LBB46_36:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_page_block_list(%rip)
	jne	.LBB46_35
# BB#37:
	leaq	-624(%rbp), %rbx
	jmp	.LBB46_38
	.align	16, 0x90
.LBB46_41:                              #   in Loop: Header=BB46_38 Depth=1
	movq	-112(%rbp), %rdi
	callq	PDFSourceAnnot_Dispose
	movq	%rax, g_source_annot_list(%rip)
.LBB46_38:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_source_annot_list(%rip)
	je	.LBB46_42
# BB#39:                                #   in Loop: Header=BB46_38 Depth=1
	movq	g_source_annot_list(%rip), %rax
	movq	%rax, -112(%rbp)
	cmpq	$0, 8(%rax)
	jne	.LBB46_41
# BB#40:                                #   in Loop: Header=BB46_38 Depth=1
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	-112(%rbp), %rax
	movq	16(%rax), %rsi
	movq	%rbx, %rdi
	callq	strcat
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$40, %esi
	movl	$.L.str.68, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB46_41
	.align	16, 0x90
.LBB46_43:                              #   in Loop: Header=BB46_42 Depth=1
	movq	g_target_annot_list(%rip), %rax
	movq	%rax, -632(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_target_annot_list(%rip)
	movq	-632(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-632(%rbp), %rdi
	callq	free
.LBB46_42:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_target_annot_list(%rip)
	jne	.LBB46_43
# BB#44:
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end46:
	.size	PDFFile_Cleanup, .Lfunc_end46-PDFFile_Cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	PDFTargetAnnot_Find,@function
PDFTargetAnnot_Find:                    # @PDFTargetAnnot_Find
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	g_target_annot_list(%rip), %rax
	jmp	.LBB47_1
	.align	16, 0x90
.LBB47_3:                               #   in Loop: Header=BB47_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB47_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB47_4
# BB#2:                                 #   in Loop: Header=BB47_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB47_3
.LBB47_4:
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	PDFTargetAnnot_Find, .Lfunc_end47-PDFTargetAnnot_Find
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFile_WritePagesObject,@function
PDFFile_WritePagesObject:               # @PDFFile_WritePagesObject
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	g_page_block_list(%rip), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB48_2
# BB#1:
	movq	-8(%rbp), %rdi
	movl	$.L.str.170, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB48_2:
	movq	-8(%rbp), %rdi
	movl	g_pages_root(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-8(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-8(%rbp), %rsi
	movl	$.L.str.171, %edi
	callq	fputs
	movq	-8(%rbp), %rsi
	movl	$.L.str.172, %edi
	callq	fputs
	movl	$0, -12(%rbp)
	jmp	.LBB48_3
	.align	16, 0x90
.LBB48_6:                               #   in Loop: Header=BB48_3 Depth=1
	movq	-8(%rbp), %rsi
	movl	$.L.str.40, %edi
	callq	fputs
	incl	-12(%rbp)
.LBB48_3:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	g_page_count(%rip), %eax
	jae	.LBB48_7
# BB#4:                                 #   in Loop: Header=BB48_3 Depth=1
	movl	-12(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx,%rax,4), %esi
	callq	PDFObject_WriteRef
	cmpl	$63, -28(%rbp)
	jne	.LBB48_6
# BB#5:                                 #   in Loop: Header=BB48_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB48_6
.LBB48_7:
	movq	-8(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.173, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	g_doc_h_bound(%rip), %edx
	movl	g_doc_v_bound(%rip), %ecx
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	PDFFile_WritePagesObject, .Lfunc_end48-PDFFile_WritePagesObject
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFile_WriteXREF,@function
PDFFile_WriteXREF:                      # @PDFFile_WriteXREF
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp165:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB49_2
# BB#1:
	movq	-16(%rbp), %rdi
	movl	$.L.str.175, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB49_2:
	movq	-16(%rbp), %rdi
	callq	ftell
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	$.L.str.176, %edi
	callq	fputs
	movq	-16(%rbp), %rdi
	movl	g_next_objnum(%rip), %edx
	movl	$.L.str.177, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rsi
	movl	$.L.str.178, %edi
	callq	fputs
	movb	$1, %al
	cmpl	$1, g_next_objnum(%rip)
	je	.LBB49_4
# BB#3:
	cmpq	$0, -32(%rbp)
	setne	%al
.LBB49_4:
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movl	$1, -20(%rbp)
	leaq	-560(%rbp), %rbx
	jmp	.LBB49_5
	.align	16, 0x90
.LBB49_10:                              #   in Loop: Header=BB49_5 Depth=1
	incl	-20(%rbp)
.LBB49_5:                               # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	g_next_objnum(%rip), %eax
	jae	.LBB49_11
# BB#6:                                 #   in Loop: Header=BB49_5 Depth=1
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	leal	-1(%rax,%rcx), %ecx
	andl	$-256, %ecx
	negl	%ecx
	leal	-1(%rax,%rcx), %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	8(%rcx,%rax,4), %edx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
	movslq	-36(%rbp), %rax
	movq	-32(%rbp), %rcx
	cmpl	$0, 8(%rcx,%rax,4)
	jne	.LBB49_8
# BB#7:                                 #   in Loop: Header=BB49_5 Depth=1
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	leaq	-560(%rbp,%rax), %rdi
	movl	-20(%rbp), %edx
	movl	$.L.str.70, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$39, %esi
	movl	$.L.str.68, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r9
	callq	Error
.LBB49_8:                               #   in Loop: Header=BB49_5 Depth=1
	cmpl	$255, -36(%rbp)
	jne	.LBB49_10
# BB#9:                                 #   in Loop: Header=BB49_5 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB49_10
.LBB49_11:
	movl	-24(%rbp), %eax
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end49:
	.size	PDFFile_WriteXREF, .Lfunc_end49-PDFFile_WriteXREF
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI50_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI50_1:
	.quad	4640537203540230144     # double 180
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI50_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.text
	.align	16, 0x90
	.type	PDFPage_EvalExpr,@function
PDFPage_EvalExpr:                       # @PDFPage_EvalExpr
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp166:
	.cfi_def_cfa_offset 16
.Ltmp167:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp168:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$56, %rsp
.Ltmp169:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB50_1
	.align	16, 0x90
.LBB50_2:                               #   in Loop: Header=BB50_1 Depth=1
	incq	-40(%rbp)
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB50_2
	jmp	.LBB50_3
	.align	16, 0x90
.LBB50_4:                               #   in Loop: Header=BB50_3 Depth=1
	incq	-40(%rbp)
.LBB50_3:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$95, %eax
	je	.LBB50_4
	jmp	.LBB50_5
	.align	16, 0x90
.LBB50_6:                               #   in Loop: Header=BB50_5 Depth=1
	incq	-40(%rbp)
.LBB50_5:                               # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	je	.LBB50_6
# BB#7:
	movq	-40(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	jne	.LBB50_9
# BB#8:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB50_10
.LBB50_9:
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	PDFPage_GetFloat
	movq	%rax, -40(%rbp)
	jmp	.LBB50_47
.LBB50_10:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB50_12
# BB#11:
	movq	-40(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	leaq	-44(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -40(%rbp)
	movss	-44(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI50_2(%rip), %xmm0
	jmp	.LBB50_39
.LBB50_12:
	movq	-40(%rbp), %rdx
	movl	$7, %edi
	movl	$g_arithmetic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -28(%rbp)
	testl	%eax, %eax
	js	.LBB50_42
# BB#13:
	movslq	-28(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -40(%rbp)
	jmp	.LBB50_14
	.align	16, 0x90
.LBB50_15:                              #   in Loop: Header=BB50_14 Depth=1
	incq	-40(%rbp)
.LBB50_14:                              # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB50_15
# BB#16:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$40, %eax
	je	.LBB50_18
# BB#17:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$30, %esi
	movl	$.L.str.81, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB50_18:
	movq	-40(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	leaq	-48(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -40(%rbp)
	cmpl	$4, -28(%rbp)
	jl	.LBB50_20
# BB#19:
	cmpl	$6, -28(%rbp)
	jne	.LBB50_29
.LBB50_20:
	cmpl	$6, -28(%rbp)
	jne	.LBB50_22
# BB#21:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	jmp	.LBB50_23
.LBB50_42:
	movq	-40(%rbp), %rdx
	movl	$4, %edi
	movl	$g_graphic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -28(%rbp)
	testl	%eax, %eax
	js	.LBB50_44
# BB#43:
	movslq	-28(%rbp), %rax
	movq	g_graphic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	cvtsi2ssl	g_graphics_vars(,%rax,4), %xmm0
	jmp	.LBB50_39
.LBB50_44:
	movq	-40(%rbp), %rdx
	movl	$7, %edi
	movl	$g_unit_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -28(%rbp)
	testl	%eax, %eax
	js	.LBB50_46
# BB#45:
	movslq	-28(%rbp), %rax
	movq	g_unit_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -40(%rbp)
	movslq	-28(%rbp), %rax
	cvtsi2ssl	g_units(,%rax,4), %xmm0
	jmp	.LBB50_39
.LBB50_22:
	movl	$1, -56(%rbp)
.LBB50_23:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$44, %eax
	je	.LBB50_25
# BB#24:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$31, %esi
	movl	$.L.str.82, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB50_25:                              # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -40(%rbp)
	leaq	-52(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -40(%rbp)
	cmpl	$1, -56(%rbp)
	je	.LBB50_28
# BB#26:                                #   in Loop: Header=BB50_25 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$44, %eax
	jne	.LBB50_28
# BB#27:                                #   in Loop: Header=BB50_25 Depth=1
	incq	-40(%rbp)
.LBB50_28:                              #   in Loop: Header=BB50_25 Depth=1
	decl	-56(%rbp)
	jne	.LBB50_25
.LBB50_29:
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$41, %eax
	je	.LBB50_31
# BB#30:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$32, %esi
	movl	$.L.str.83, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB50_31:
	incq	-40(%rbp)
	movl	-28(%rbp), %eax
	cmpq	$6, %rax
	ja	.LBB50_47
# BB#32:
	jmpq	*.LJTI50_0(,%rax,8)
.LBB50_33:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-52(%rbp), %xmm0
	jmp	.LBB50_39
.LBB50_46:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$33, %esi
	movl	$.L.str.84, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB50_47
.LBB50_34:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-52(%rbp), %xmm0
	jmp	.LBB50_39
.LBB50_35:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-52(%rbp), %xmm0
	jmp	.LBB50_39
.LBB50_36:
	xorps	%xmm0, %xmm0
	cmpneqss	-52(%rbp), %xmm0
	movd	%xmm0, %edi
	andl	$1, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-52(%rbp), %xmm0
	jmp	.LBB50_39
.LBB50_37:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI50_0(%rip), %xmm0
	divsd	.LCPI50_1(%rip), %xmm0
	callq	sin
	jmp	.LBB50_38
.LBB50_40:
	movss	-48(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI50_0(%rip), %xmm0
	divsd	.LCPI50_1(%rip), %xmm0
	callq	cos
.LBB50_38:
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB50_39
.LBB50_41:
	movss	-52(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB50_39:
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
.LBB50_47:
	movq	-40(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end50:
	.size	PDFPage_EvalExpr, .Lfunc_end50-PDFPage_EvalExpr
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI50_0:
	.quad	.LBB50_33
	.quad	.LBB50_34
	.quad	.LBB50_35
	.quad	.LBB50_36
	.quad	.LBB50_37
	.quad	.LBB50_40
	.quad	.LBB50_41

	.text
	.align	16, 0x90
	.type	PDFPage_GetFloat,@function
PDFPage_GetFloat:                       # @PDFPage_GetFloat
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp170:
	.cfi_def_cfa_offset 16
.Ltmp171:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp172:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp173:
	.cfi_offset %rbx, -24
	movq	%rsi, %rcx
	movq	%rdi, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	movq	%rcx, %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB51_1
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$21, %esi
	movl	$.L.str.86, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB51_10
	.align	16, 0x90
.LBB51_2:                               #   in Loop: Header=BB51_1 Depth=1
	incq	-16(%rbp)
.LBB51_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB51_2
# BB#3:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB51_5
# BB#4:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	jne	.LBB51_6
.LBB51_5:
	incq	-16(%rbp)
.LBB51_6:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %ecx
	movb	$1, %al
	testb	$8, %ch
	jne	.LBB51_8
# BB#7:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	sete	%al
.LBB51_8:
	testb	%al, %al
	jne	.LBB51_5
.LBB51_10:
	movq	-16(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end51:
	.size	PDFPage_GetFloat, .Lfunc_end51-PDFPage_GetFloat
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_ProcessLinkKeyword,@function
PDFPage_ProcessLinkKeyword:             # @PDFPage_ProcessLinkKeyword
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp177:
	.cfi_offset %rbx, -24
	movq	$g_link, -16(%rbp)
	movl	g_link_keyword(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	jmp	.LBB52_1
	.align	16, 0x90
.LBB52_10:                              #   in Loop: Header=BB52_1 Depth=1
	incl	-24(%rbp)
	incq	-16(%rbp)
.LBB52_1:                               # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB52_2
# BB#3:                                 #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	je	.LBB52_4
# BB#5:                                 #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB52_6
# BB#7:                                 #   in Loop: Header=BB52_1 Depth=1
	movq	-16(%rbp), %rax
	movzbl	2(%rax), %eax
	cmpl	$95, %eax
	sete	%al
	jmp	.LBB52_8
	.align	16, 0x90
.LBB52_2:                               #   in Loop: Header=BB52_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB52_9
	.align	16, 0x90
.LBB52_4:                               #   in Loop: Header=BB52_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB52_8
.LBB52_6:                               #   in Loop: Header=BB52_1 Depth=1
	xorl	%eax, %eax
.LBB52_8:                               #   in Loop: Header=BB52_1 Depth=1
	xorb	$1, %al
.LBB52_9:                               #   in Loop: Header=BB52_1 Depth=1
	testb	%al, %al
	jne	.LBB52_10
# BB#11:
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB52_13
# BB#12:
	movq	-16(%rbp), %rax
	incq	%rax
	movq	%rax, -16(%rbp)
	movq	%rax, -40(%rbp)
	jmp	.LBB52_13
	.align	16, 0x90
.LBB52_14:                              #   in Loop: Header=BB52_13 Depth=1
	incq	-16(%rbp)
.LBB52_13:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB52_14
# BB#15:
	cmpl	$0, -24(%rbp)
	je	.LBB52_16
# BB#18:
	cvtsi2ssl	g_page_h_origin(%rip), %xmm0
	mulss	g_page_h_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -44(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	g_page_v_origin(%rip), %xmm0
	mulss	g_page_v_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -48(%rbp)
	movl	g_page_h_origin(%rip), %eax
	addl	g_graphics_vars(%rip), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	g_page_h_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	movl	g_page_v_origin(%rip), %eax
	addl	g_graphics_vars+4(%rip), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	g_page_v_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movl	-20(%rbp), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB52_30
# BB#19:
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB52_20
# BB#39:
	movq	-32(%rbp), %rdi
	movl	-24(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	-48(%rbp), %ecx
	movl	-52(%rbp), %r8d
	movl	-56(%rbp), %r9d
	cmpl	$4, -20(%rbp)
	sete	%al
	movzbl	%al, %eax
	movl	%eax, (%rsp)
	callq	PDFTargetAnnot_New
	jmp	.LBB52_40
.LBB52_16:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$22, %esi
	movl	$.L.str.95, %edx
	movl	$2, %ecx
.LBB52_17:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB52_40
.LBB52_30:
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	callq	PDFSourceAnnot_New
	movq	%rax, -72(%rbp)
	cmpl	$1, -20(%rbp)
	jne	.LBB52_40
# BB#31:
	movl	$0, -24(%rbp)
	cmpq	$0, -40(%rbp)
	je	.LBB52_34
# BB#32:
	movq	-40(%rbp), %rdx
	movl	$1, %edi
	movl	$g_external_file_spec_keyword, %esi
	callq	PDFKeyword_Find
	movl	%eax, -76(%rbp)
	testl	%eax, %eax
	jne	.LBB52_34
# BB#33:
	movq	g_external_file_spec_keyword(%rip), %rdi
	callq	strlen
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, -24(%rbp)
.LBB52_34:
	cmpl	$0, -24(%rbp)
	je	.LBB52_35
# BB#36:
	movl	-24(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-72(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-72(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB52_38
# BB#37:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$25, %esi
	movl	$.L.str.97, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB52_38:
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	strcpy
	jmp	.LBB52_40
.LBB52_20:
	testl	%eax, %eax
	jne	.LBB52_40
# BB#21:
	cmpq	$0, -40(%rbp)
	je	.LBB52_28
# BB#22:
	movq	-16(%rbp), %rdx
	movl	$8, %edi
	movl	$g_dest_link_options, %esi
	callq	PDFKeyword_Find
	movl	%eax, -60(%rbp)
	testl	%eax, %eax
	js	.LBB52_24
# BB#23:
	movslq	-60(%rbp), %rax
	movq	g_dest_link_options(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -16(%rbp)
	jmp	.LBB52_29
.LBB52_35:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$24, %esi
	movl	$.L.str.96, %edx
	movl	$1, %ecx
	jmp	.LBB52_17
.LBB52_28:
	movl	$0, -60(%rbp)
	jmp	.LBB52_29
.LBB52_24:
	movl	$0, -60(%rbp)
	jmp	.LBB52_25
	.align	16, 0x90
.LBB52_26:                              #   in Loop: Header=BB52_25 Depth=1
	incq	-16(%rbp)
.LBB52_25:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB52_26
# BB#27:
	movl	-16(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB52_29:
	movl	-20(%rbp), %edi
	movq	-32(%rbp), %rsi
	movl	-24(%rbp), %edx
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	movl	-52(%rbp), %r9d
	movl	-56(%rbp), %eax
	movl	-60(%rbp), %ebx
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	callq	PDFSourceAnnot_New
.LBB52_40:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end52:
	.size	PDFPage_ProcessLinkKeyword, .Lfunc_end52-PDFPage_ProcessLinkKeyword
	.cfi_endproc

	.align	16, 0x90
	.type	PDFSourceAnnot_New,@function
PDFSourceAnnot_New:                     # @PDFSourceAnnot_New
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	24(%rbp), %r10d
	movl	16(%rbp), %eax
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	%r8d, -28(%rbp)
	movl	%r9d, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	%r10d, -40(%rbp)
	movq	$0, -48(%rbp)
	movl	$72, %edi
	callq	malloc
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	jne	.LBB53_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$19, %esi
	movl	$.L.str.106, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB53_2:
	movl	-24(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-28(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movl	-32(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-36(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 44(%rcx)
	callq	PDFObject_New
	movq	-56(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	g_page_object_num(%rip), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-4(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 60(%rcx)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB53_4
# BB#3:
	cmpl	$8, -40(%rbp)
	setb	%al
.LBB53_4:
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movl	-40(%rbp), %eax
	movq	-56(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-56(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-56(%rbp), %rax
	movl	$0, 64(%rax)
	cmpl	$0, -4(%rbp)
	jne	.LBB53_6
# BB#5:
	movq	-16(%rbp), %rdi
	callq	PDFTargetAnnot_Find
	movq	%rax, -48(%rbp)
.LBB53_6:
	cmpq	$0, -48(%rbp)
	je	.LBB53_8
# BB#7:
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-56(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.LBB53_11
.LBB53_8:
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-20(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-56(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-56(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB53_10
# BB#9:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$20, %esi
	movl	$.L.str.106, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB53_10:
	movq	-56(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rsi
	movl	-20(%rbp), %edx
	callq	memcpy
	movl	-20(%rbp), %eax
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	$0, (%rcx,%rax)
.LBB53_11:
	movq	g_source_annot_list(%rip), %rax
	movq	-56(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	movq	%rax, g_source_annot_list(%rip)
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end53:
	.size	PDFSourceAnnot_New, .Lfunc_end53-PDFSourceAnnot_New
	.cfi_endproc

	.align	16, 0x90
	.type	PDFTargetAnnot_New,@function
PDFTargetAnnot_New:                     # @PDFTargetAnnot_New
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movl	%r9d, -28(%rbp)
	movl	%eax, -32(%rbp)
	movl	$40, %edi
	callq	malloc
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	jne	.LBB54_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$16, %esi
	movl	$.L.str.108, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB54_2:
	movl	-12(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-40(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB54_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$17, %esi
	movl	$.L.str.108, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB54_4:
	movq	-40(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-8(%rbp), %rsi
	movl	-12(%rbp), %edx
	callq	memcpy
	movl	-12(%rbp), %eax
	movq	-40(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	cmpl	$0, g_page_contents_obj_num(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movl	g_page_object_num(%rip), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-16(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movl	-20(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-24(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-28(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-32(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	g_target_annot_list(%rip), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, g_target_annot_list(%rip)
	cmpl	$0, -32(%rbp)
	je	.LBB54_6
# BB#5:
	movl	-32(%rbp), %eax
	movl	%eax, g_has_exported_targets(%rip)
.LBB54_6:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	PDFTargetAnnot_New, .Lfunc_end54-PDFTargetAnnot_New
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_New,@function
PDFObject_New:                          # @PDFObject_New
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	g_next_objnum(%rip), %eax
	decl	%eax
	shrl	$8, %eax
	movl	%eax, -4(%rbp)
	movl	g_next_objnum(%rip), %eax
	decl	%eax
	movzbl	%al, %eax
	movl	%eax, -8(%rbp)
	movq	g_cur_obj_offset_block(%rip), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, -8(%rbp)
	je	.LBB55_1
# BB#7:
	cmpq	$0, -16(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	jmp	.LBB55_8
.LBB55_1:
	movl	$1032, %edi             # imm = 0x408
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB55_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$1, %esi
	movl	$.L.str.133, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB55_3:
	cmpl	$0, -4(%rbp)
	je	.LBB55_4
# BB#5:
	cmpq	$0, g_cur_obj_offset_block(%rip)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-16(%rbp), %rax
	movq	g_cur_obj_offset_block(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB55_6
.LBB55_4:
	cmpq	$0, g_obj_offset_list(%rip)
	sete	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-16(%rbp), %rax
	movq	%rax, g_obj_offset_list(%rip)
.LBB55_6:
	movq	-16(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, g_cur_obj_offset_block(%rip)
.LBB55_8:
	movslq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$0, 8(%rcx,%rax,4)
	movl	g_next_objnum(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, g_next_objnum(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	PDFObject_New, .Lfunc_end55-PDFObject_New
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_FindOffsetBlock,@function
PDFObject_FindOffsetBlock:              # @PDFObject_FindOffsetBlock
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-4(%rbp), %eax
	decl	%eax
	shrl	$8, %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %eax
	decl	%eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB56_1
# BB#2:
	movl	-4(%rbp), %eax
	cmpl	g_next_objnum(%rip), %eax
	setb	%al
	jmp	.LBB56_3
.LBB56_1:
	xorl	%eax, %eax
.LBB56_3:
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	jmp	.LBB56_4
	.align	16, 0x90
.LBB56_5:                               #   in Loop: Header=BB56_4 Depth=1
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	decl	-20(%rbp)
.LBB56_4:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB56_5
# BB#6:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %edi
	movq	no_fpos(%rip), %rsi
	callq	Assert
	cmpq	$0, -16(%rbp)
	je	.LBB56_8
# BB#7:
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB56_8:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	PDFObject_FindOffsetBlock, .Lfunc_end56-PDFObject_FindOffsetBlock
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_WriteObject,@function
PDFFont_WriteObject:                    # @PDFFont_WriteObject
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpl	$0, 36(%rsi)
	jne	.LBB57_2
# BB#1:
	callq	PDFObject_New
	movq	-16(%rbp), %rcx
	movl	%eax, 36(%rcx)
.LBB57_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	callq	PDFObject_WriteObj
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	PDFFont_WriteObject, .Lfunc_end57-PDFFont_WriteObject
	.cfi_endproc

	.align	16, 0x90
	.type	PDFFont_IsOneOfTheBase14Fonts,@function
PDFFont_IsOneOfTheBase14Fonts:          # @PDFFont_IsOneOfTheBase14Fonts
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	jmp	.LBB58_1
	.align	16, 0x90
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	incl	-20(%rbp)
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$13, -20(%rbp)
	jg	.LBB58_5
# BB#2:                                 #   in Loop: Header=BB58_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	g_standard_base_14_fonts(,%rax,8), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB58_4
# BB#3:
	movl	$1, -4(%rbp)
	jmp	.LBB58_6
.LBB58_5:
	movl	$0, -4(%rbp)
.LBB58_6:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	PDFFont_IsOneOfTheBase14Fonts, .Lfunc_end58-PDFFont_IsOneOfTheBase14Fonts
	.cfi_endproc

	.type	g_valid_text_matrix,@object # @g_valid_text_matrix
	.local	g_valid_text_matrix
	.comm	g_valid_text_matrix,4,4
	.type	g_PDF_debug,@object     # @g_PDF_debug
	.local	g_PDF_debug
	.comm	g_PDF_debug,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%%\n%% font encoding '%s':\n%%\n"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"<<\n/Type /Encoding\n/Differences [ 0\n"
	.size	.L.str.1, 37

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"PDFFile_BeginFontEncoding: run out of memory"
	.size	.L.str.2, 45

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"PDFFile_BeginFontEncoding: out of memory"
	.size	.L.str.3, 41

	.type	g_font_encoding_list,@object # @g_font_encoding_list
	.local	g_font_encoding_list
	.comm	g_font_encoding_list,8,8
	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"]\n>>\nendobj\n"
	.size	.L.str.4, 13

	.type	g_graphics_vars,@object # @g_graphics_vars
	.local	g_graphics_vars
	.comm	g_graphics_vars,16,16
	.type	g_units,@object         # @g_units
	.local	g_units
	.comm	g_units,28,16
	.type	g_in_buffering_mode,@object # @g_in_buffering_mode
	.local	g_in_buffering_mode
	.comm	g_in_buffering_mode,4,4
	.type	g_buffer_pos,@object    # @g_buffer_pos
	.local	g_buffer_pos
	.comm	g_buffer_pos,4,4
	.type	g_buffer,@object        # @g_buffer
	.local	g_buffer
	.comm	g_buffer,1024,16
	.type	g_TJ_pending,@object    # @g_TJ_pending
	.local	g_TJ_pending
	.comm	g_TJ_pending,4,4
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	")]TJ\n"
	.size	.L.str.5, 6

	.type	g_ET_pending,@object    # @g_ET_pending
	.local	g_ET_pending
	.comm	g_ET_pending,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"ET\n"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"PDFPage_Push: run out of memory"
	.size	.L.str.7, 32

	.type	g_page_h_origin,@object # @g_page_h_origin
	.local	g_page_h_origin
	.comm	g_page_h_origin,4,4
	.type	g_page_v_origin,@object # @g_page_v_origin
	.local	g_page_v_origin
	.comm	g_page_v_origin,4,4
	.type	g_qsave_stack,@object   # @g_qsave_stack
	.local	g_qsave_stack
	.comm	g_qsave_stack,8,8
	.type	g_qsave_marking_stack,@object # @g_qsave_marking_stack
	.local	g_qsave_marking_stack
	.comm	g_qsave_marking_stack,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"q\n"
	.size	.L.str.8, 3

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\nQ\n"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cannot find font entry for name %s"
	.size	.L.str.10, 35

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%s %u Tf\n"
	.size	.L.str.11, 10

	.type	g_page_uses_fonts,@object # @g_page_uses_fonts
	.local	g_page_uses_fonts
	.comm	g_page_uses_fonts,4,4
	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	")%d("
	.size	.L.str.12, 5

	.type	g_page_contents_obj_num,@object # @g_page_contents_obj_num
	.local	g_page_contents_obj_num
	.comm	g_page_contents_obj_num,4,4
	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%.2f 0 0 %.2f 0 0 cm\n"
	.size	.L.str.13, 22

	.type	g_page_h_scale_factor,@object # @g_page_h_scale_factor
	.local	g_page_h_scale_factor
	.comm	g_page_h_scale_factor,4,4
	.type	g_page_v_scale_factor,@object # @g_page_v_scale_factor
	.local	g_page_v_scale_factor
	.comm	g_page_v_scale_factor,4,4
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%.2f %.2f %.2f %.2f 0 0 cm\n"
	.size	.L.str.14, 28

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"1 0 0 1 %.2f %.2f cm\n"
	.size	.L.str.15, 22

	.type	g_expr_depth,@object    # @g_expr_depth
	.local	g_expr_depth
	.comm	g_expr_depth,4,4
	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%.2f"
	.size	.L.str.16, 5

	.type	g_link_depth,@object    # @g_link_depth
	.local	g_link_depth
	.comm	g_link_depth,4,4
	.type	g_graphic_keywords,@object # @g_graphic_keywords
	.data
	.align	16
g_graphic_keywords:
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.size	g_graphic_keywords, 32

	.type	.L.str.17,@object       # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"%d"
	.size	.L.str.17, 3

	.type	g_link_keywords,@object # @g_link_keywords
	.data
	.align	16
g_link_keywords:
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.size	g_link_keywords, 40

	.type	g_link_index,@object    # @g_link_index
	.local	g_link_index
	.comm	g_link_index,4,4
	.type	g_link_keyword,@object  # @g_link_keyword
	.local	g_link_keyword
	.comm	g_link_keyword,4,4
	.type	g_doc_info_keywords,@object # @g_doc_info_keywords
	.align	16
g_doc_info_keywords:
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.size	g_doc_info_keywords, 32

	.type	g_arithmetic_keywords,@object # @g_arithmetic_keywords
	.align	16
g_arithmetic_keywords:
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.size	g_arithmetic_keywords, 56

	.type	g_expr,@object          # @g_expr
	.local	g_expr
	.comm	g_expr,512,16
	.type	.L.str.18,@object       # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"PDFPage_WriteGraphic: '(' expected"
	.size	.L.str.18, 35

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"("
	.size	.L.str.19, 2

	.type	g_expr_index,@object    # @g_expr_index
	.local	g_expr_index
	.comm	g_expr_index,4,4
	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"PDFPage_WriteGraphic: '__' encountered while processing @Graphic"
	.size	.L.str.20, 65

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"q %d w %d %d m %d %d l s Q\n"
	.size	.L.str.21, 28

	.type	g_page_has_text,@object # @g_page_has_text
	.local	g_page_has_text
	.comm	g_page_has_text,4,4
	.type	g_page_has_graphics,@object # @g_page_has_graphics
	.local	g_page_has_graphics
	.comm	g_page_has_graphics,4,4
	.type	g_page_length_obj_num,@object # @g_page_length_obj_num
	.local	g_page_length_obj_num
	.comm	g_page_length_obj_num,4,4
	.type	g_page_start_offset,@object # @g_page_start_offset
	.local	g_page_start_offset
	.comm	g_page_start_offset,4,4
	.type	g_page_line_width,@object # @g_page_line_width
	.local	g_page_line_width
	.comm	g_page_line_width,4,4
	.type	g_font_list,@object     # @g_font_list
	.local	g_font_list
	.comm	g_font_list,8,8
	.type	g_page_count,@object    # @g_page_count
	.local	g_page_count
	.comm	g_page_count,4,4
	.type	g_page_object_num,@object # @g_page_object_num
	.local	g_page_object_num
	.comm	g_page_object_num,4,4
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%%\n%% length object for page %u:\n%%\n"
	.size	.L.str.22, 37

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%u\nendobj\n"
	.size	.L.str.23, 11

	.type	g_source_annot_list,@object # @g_source_annot_list
	.local	g_source_annot_list
	.comm	g_source_annot_list,8,8
	.type	g_cur_page_block,@object # @g_cur_page_block
	.local	g_cur_page_block
	.comm	g_cur_page_block,8,8
	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"PDFPage_Cleanup: run out of memory"
	.size	.L.str.24, 35

	.type	g_page_block_list,@object # @g_page_block_list
	.local	g_page_block_list
	.comm	g_page_block_list,8,8
	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"%%\n%% page number %u:\n%%\n"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"<<\n/Type /Page\n"
	.size	.L.str.26, 16

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"/CropBox [ 0 0 %u %u ]\n"
	.size	.L.str.27, 24

	.type	g_doc_h_bound,@object   # @g_doc_h_bound
	.local	g_doc_h_bound
	.comm	g_doc_h_bound,4,4
	.type	g_doc_v_bound,@object   # @g_doc_v_bound
	.local	g_doc_v_bound
	.comm	g_doc_v_bound,4,4
	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"/Parent "
	.size	.L.str.28, 9

	.type	g_pages_root,@object    # @g_pages_root
	.local	g_pages_root
	.comm	g_pages_root,4,4
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\n"
	.size	.L.str.29, 2

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"/Contents "
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"/Resources\n<<\n"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"/Font <<"
	.size	.L.str.32, 9

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	" %s "
	.size	.L.str.33, 5

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	" >>\n"
	.size	.L.str.34, 5

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"/ProcSet [ /PDF"
	.size	.L.str.35, 16

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	" /Text"
	.size	.L.str.36, 7

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	" ]\n"
	.size	.L.str.37, 4

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	">>\n"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/Annots ["
	.size	.L.str.39, 10

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	" "
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	">>\nendobj\n"
	.size	.L.str.41, 11

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"%PDF-1.2\n"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"%\342\343\317\323\n"
	.size	.L.str.43, 7

	.type	g_next_objnum,@object   # @g_next_objnum
	.local	g_next_objnum
	.comm	g_next_objnum,4,4
	.type	g_obj_offset_list,@object # @g_obj_offset_list
	.local	g_obj_offset_list
	.comm	g_obj_offset_list,8,8
	.type	g_cur_obj_offset_block,@object # @g_cur_obj_offset_block
	.local	g_cur_obj_offset_block
	.comm	g_cur_obj_offset_block,8,8
	.type	g_doc_author,@object    # @g_doc_author
	.local	g_doc_author
	.comm	g_doc_author,8,8
	.type	g_doc_title,@object     # @g_doc_title
	.local	g_doc_title
	.comm	g_doc_title,8,8
	.type	g_doc_subject,@object   # @g_doc_subject
	.local	g_doc_subject
	.comm	g_doc_subject,8,8
	.type	g_doc_keywords,@object  # @g_doc_keywords
	.local	g_doc_keywords
	.comm	g_doc_keywords,8,8
	.type	g_target_annot_list,@object # @g_target_annot_list
	.local	g_target_annot_list
	.comm	g_target_annot_list,8,8
	.type	g_has_exported_targets,@object # @g_has_exported_targets
	.local	g_has_exported_targets
	.comm	g_has_exported_targets,4,4
	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"%%\n%% /Dests dictionary (exported links):\n%%\n"
	.size	.L.str.44, 46

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"<<\n"
	.size	.L.str.45, 4

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"/%s [ "
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	" /XYZ null null null ]\n"
	.size	.L.str.47, 24

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"%%\n%% catalog:\n%%\n"
	.size	.L.str.48, 19

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"/Type /Catalog\n"
	.size	.L.str.49, 16

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"/Pages "
	.size	.L.str.50, 8

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"/Dests "
	.size	.L.str.51, 8

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"%%\n%% Info object:\n%%\n"
	.size	.L.str.52, 23

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"/Creator (%s)\n"
	.size	.L.str.53, 15

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.54, 40

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"/Producer (%s)\n"
	.size	.L.str.55, 16

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"/CreationDate (D:%.4d%.2d%.2d%.2d%.2d%.2d)\n"
	.size	.L.str.56, 44

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"/Author (%s)\n"
	.size	.L.str.57, 14

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"/Title (%s)\n"
	.size	.L.str.58, 13

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"/Subject (%s)\n"
	.size	.L.str.59, 15

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"/Keywords (%s)\n"
	.size	.L.str.60, 16

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"trailer\n<<\n"
	.size	.L.str.61, 12

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"/Size %u\n"
	.size	.L.str.62, 10

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"/Root "
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\n/Info "
	.size	.L.str.64, 8

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	" >>\nstartxref\n%u\n"
	.size	.L.str.65, 18

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"%%EOF\n"
	.size	.L.str.66, 7

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"PDFFile_Cleanup: unresolved link annotation named "
	.size	.L.str.67, 51

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"%s"
	.size	.L.str.68, 3

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"PDFFont_NewListEntry: run out of memory"
	.size	.L.str.69, 40

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"%u"
	.size	.L.str.70, 3

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"%%\n%% page %u's contents:\n%%\n"
	.size	.L.str.71, 30

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"<< /Length "
	.size	.L.str.72, 12

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	" >>\nstream\n"
	.size	.L.str.73, 12

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"%u w\n"
	.size	.L.str.74, 6

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"assert failed in %s"
	.size	.L.str.75, 20

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"BT\n"
	.size	.L.str.76, 4

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"1 0 0 1 %d %d Tm\n"
	.size	.L.str.77, 18

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"%d 0 Td\n"
	.size	.L.str.78, 9

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"[("
	.size	.L.str.79, 3

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"PDFPage_CollectExpr: expression too long (max. 512 chars)"
	.size	.L.str.80, 58

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"PDFPage_EvalExpr: '(' expected"
	.size	.L.str.81, 31

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"PDFPage_EvalExpr: ',' expected"
	.size	.L.str.82, 31

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"PDFPage_EvalExpr: ')' expected"
	.size	.L.str.83, 31

	.type	g_unit_keywords,@object # @g_unit_keywords
	.data
	.align	16
g_unit_keywords:
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.size	g_unit_keywords, 56

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"PDFPage_EvalExpr: __add, __sub, __mul, __div, or a unit keyword was expected"
	.size	.L.str.84, 77

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"%f"
	.size	.L.str.85, 3

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"PDFPage_GetFloat: unable to evaluate number for Lout graphic keyword processing"
	.size	.L.str.86, 80

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"in"
	.size	.L.str.87, 3

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"cm"
	.size	.L.str.88, 3

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"pt"
	.size	.L.str.89, 3

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"em"
	.size	.L.str.90, 3

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"loutf"
	.size	.L.str.91, 6

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"loutv"
	.size	.L.str.92, 6

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"louts"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"PDFPage_CollectLink: link too long (max. 512 chars)"
	.size	.L.str.94, 52

	.type	g_link,@object          # @g_link
	.local	g_link
	.comm	g_link,512,16
	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"PDFPage_ProcessLinkKeyword: empty link-name / URI; ignored."
	.size	.L.str.95, 60

	.type	g_dest_link_options,@object # @g_dest_link_options
	.data
	.align	16
g_dest_link_options:
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.size	g_dest_link_options, 64

	.type	g_external_file_spec_keyword,@object # @g_external_file_spec_keyword
	.align	8
g_external_file_spec_keyword:
	.quad	.L.str.107
	.size	g_external_file_spec_keyword, 8

	.type	.L.str.96,@object       # @.str.96
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.96:
	.asciz	"PDFPage_ProcessLinkKeyword: empty file spec"
	.size	.L.str.96, 44

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"PDFPage_ProcessLinkKeyword: out of memory"
	.size	.L.str.97, 42

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"__FitNoChange"
	.size	.L.str.98, 14

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"__Fit"
	.size	.L.str.99, 6

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"__FitH"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"__FitV"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"__FitR"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"__FitB"
	.size	.L.str.103, 7

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"__FitBH"
	.size	.L.str.104, 8

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"__FitBV"
	.size	.L.str.105, 8

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"PDFSourceAnnot_New: run out of memory"
	.size	.L.str.106, 38

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"__link_to="
	.size	.L.str.107, 11

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"PDFTargetAnnot_New: run out of memory"
	.size	.L.str.108, 38

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"xsize"
	.size	.L.str.109, 6

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"ysize"
	.size	.L.str.110, 6

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"xmark"
	.size	.L.str.111, 6

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"ymark"
	.size	.L.str.112, 6

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"link_source=<<"
	.size	.L.str.113, 15

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"link_external=<<"
	.size	.L.str.114, 17

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"link_URI=<<"
	.size	.L.str.115, 12

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"link_target=<<"
	.size	.L.str.116, 15

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"link_target_for_export=<<"
	.size	.L.str.117, 26

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"author="
	.size	.L.str.118, 8

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"title="
	.size	.L.str.119, 7

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"subject="
	.size	.L.str.120, 9

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"keywords="
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __author="
	.size	.L.str.122, 55

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __title="
	.size	.L.str.123, 54

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __subject="
	.size	.L.str.124, 56

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"PDFPage_ProcessDocInfoKeyword: no memory for __keywords="
	.size	.L.str.125, 57

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"add"
	.size	.L.str.126, 4

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"sub"
	.size	.L.str.127, 4

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"mul"
	.size	.L.str.128, 4

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"div"
	.size	.L.str.129, 4

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"sin"
	.size	.L.str.130, 4

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"cos"
	.size	.L.str.131, 4

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"pick"
	.size	.L.str.132, 5

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"PDFObject_New: run out of memory"
	.size	.L.str.133, 33

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"endstream\nendobj\n"
	.size	.L.str.134, 18

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"%u 0 obj\n"
	.size	.L.str.135, 10

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"%%\n%% declare use of font %s:\n%%\n"
	.size	.L.str.136, 34

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"<<\n/Type /Font\n/Subtype /Type1\n"
	.size	.L.str.137, 32

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"/Name %s\n"
	.size	.L.str.138, 10

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"/BaseFont /%s\n"
	.size	.L.str.139, 15

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"/Encoding "
	.size	.L.str.140, 11

	.type	g_standard_base_14_fonts,@object # @g_standard_base_14_fonts
	.data
	.align	16
g_standard_base_14_fonts:
	.quad	.L.str.141
	.quad	.L.str.142
	.quad	.L.str.143
	.quad	.L.str.144
	.quad	.L.str.145
	.quad	.L.str.146
	.quad	.L.str.147
	.quad	.L.str.148
	.quad	.L.str.149
	.quad	.L.str.150
	.quad	.L.str.151
	.quad	.L.str.152
	.quad	.L.str.153
	.quad	.L.str.154
	.size	g_standard_base_14_fonts, 112

	.type	.L.str.141,@object      # @.str.141
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.141:
	.asciz	"Courier"
	.size	.L.str.141, 8

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Courier-Bold"
	.size	.L.str.142, 13

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Courier-Oblique"
	.size	.L.str.143, 16

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"Courier-BoldOblique"
	.size	.L.str.144, 20

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"Helvetica"
	.size	.L.str.145, 10

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Helvetica-Bold"
	.size	.L.str.146, 15

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"Helvetica-Oblique"
	.size	.L.str.147, 18

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"Helvetica-BoldOblique"
	.size	.L.str.148, 22

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Symbol"
	.size	.L.str.149, 7

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"Times"
	.size	.L.str.150, 6

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"Times-Bold"
	.size	.L.str.151, 11

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Times-Italic"
	.size	.L.str.152, 13

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"Times-BoldItalic"
	.size	.L.str.153, 17

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"ZapfDingbats"
	.size	.L.str.154, 13

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"%%\n%% annotation in page object # %u to %s:\n%%\n"
	.size	.L.str.155, 48

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"<<\n/Type /Annot\n/Subtype /Link\n/Rect [ %d %d %d %d ]\n/Border [ 0 0 0 ]\n"
	.size	.L.str.156, 72

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"/Dest [ "
	.size	.L.str.157, 9

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	" /XYZ null null null"
	.size	.L.str.158, 21

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	" /Fit"
	.size	.L.str.159, 6

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	" /FitH %u"
	.size	.L.str.160, 10

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	" /FitV %u"
	.size	.L.str.161, 10

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	" /FitR %u %u %u %u"
	.size	.L.str.162, 19

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	" /FitB"
	.size	.L.str.163, 7

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	" /FitBH %u"
	.size	.L.str.164, 11

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	" /FitBV %u"
	.size	.L.str.165, 11

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"PDFSourceAnnot_Write: invalid link dest option"
	.size	.L.str.166, 47

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"/A << /Type /Action /S /GoToR /D (%s) /F\n(%s) >>\n"
	.size	.L.str.167, 50

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"/A << /Type /Action /S /URI /URI\n(%s) >>\n"
	.size	.L.str.168, 42

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"%u 0 R"
	.size	.L.str.169, 7

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"%%\n%% root of pages tree:\n%%\n"
	.size	.L.str.170, 30

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"/Type /Pages\n"
	.size	.L.str.171, 14

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"/Kids [ "
	.size	.L.str.172, 9

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	" ]\n/Count %u\n"
	.size	.L.str.173, 14

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"/MediaBox [ 0 0 %u %u ]\n"
	.size	.L.str.174, 25

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"%%\n%% xref table:\n%%\n"
	.size	.L.str.175, 22

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"xref\n"
	.size	.L.str.176, 6

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"0 %u\n"
	.size	.L.str.177, 6

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"0000000000 65535 f \n"
	.size	.L.str.178, 21

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"%010u 00000 n \n"
	.size	.L.str.179, 16

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"PDFFile_WriteXREF: undefined object number: "
	.size	.L.str.180, 45


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
