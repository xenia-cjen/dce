	.text
	.file	"z48.dce"
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB1_2
# BB#1:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB1_2:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	callq	PDFObject_New
	movl	%eax, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-12(%rbp), %eax
	movl	%eax, -36(%rbp)
	movq	-24(%rbp), %rsi
	movl	$.L.str.1, %edi
	callq	fputs
	movl	$24, %edi
	callq	malloc
	movq	%rax, -48(%rbp)
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
	movq	-32(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	-48(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-48(%rbp), %rax
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
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-36(%rbp), %eax
	movq	-48(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	callq	strcpy
	movq	-48(%rbp), %rax
	movq	%rax, g_font_encoding_list(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PDFFile_BeginFontEncoding, .Lfunc_end1-PDFFile_BeginFontEncoding
	.cfi_endproc

	.globl	PDFFile_EndFontEncoding
	.align	16, 0x90
	.type	PDFFile_EndFontEncoding,@function
PDFFile_EndFontEncoding:                # @PDFFile_EndFontEncoding
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
	movq	%rdi, %rax
	movq	%rax, -8(%rbp)
	movl	$.L.str.4, %edi
	movq	%rax, %rsi
	callq	fputs
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	PDFFile_EndFontEncoding, .Lfunc_end2-PDFFile_EndFontEncoding
	.cfi_endproc

	.globl	PDFFont_AddFont
	.align	16, 0x90
	.type	PDFFont_AddFont,@function
PDFFont_AddFont:                        # @PDFFont_AddFont
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
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp12:
	.cfi_offset %rbx, -32
.Ltmp13:
	.cfi_offset %r14, -24
	movq	%rdi, -152(%rbp)
	movq	%rsi, -160(%rbp)
	movq	%rdx, -168(%rbp)
	movq	%rcx, -176(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB3_1
	.align	16, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -144(%rbp)
	cmpq	$0, -144(%rbp)
	je	.LBB3_4
# BB#2:                                 #   in Loop: Header=BB3_1 Depth=1
	movq	-112(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	24(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_3
.LBB3_4:                                # %PDFFont_FindListEntry.exit
	movq	-144(%rbp), %rax
	movq	%rax, -184(%rbp)
	movq	-160(%rbp), %rbx
	movq	-168(%rbp), %r14
	movq	-176(%rbp), %rax
	movq	%rax, -112(%rbp)
	movq	g_font_encoding_list(%rip), %rax
	movq	%rax, -144(%rbp)
	cmpq	$0, -112(%rbp)
	jne	.LBB3_6
# BB#5:
	movl	$0, -24(%rbp)
	jmp	.LBB3_12
	.align	16, 0x90
.LBB3_8:                                #   in Loop: Header=BB3_6 Depth=1
	movq	-144(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, -144(%rbp)
	je	.LBB3_9
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=1
	movq	-112(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB3_8
.LBB3_9:
	xorl	%eax, %eax
	cmpq	$0, -144(%rbp)
	je	.LBB3_11
# BB#10:
	movq	-144(%rbp), %rax
	movl	8(%rax), %eax
.LBB3_11:
	movl	%eax, -24(%rbp)
.LBB3_12:                               # %PDFFont_FindFontEncoding.exit
	movl	-24(%rbp), %eax
	movq	%rbx, -24(%rbp)
	movq	%r14, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	$0, -40(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB3_13
	.align	16, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_13 Depth=1
	incl	-40(%rbp)
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
.LBB3_13:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB3_14
# BB#15:
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
	jne	.LBB3_17
# BB#16:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$4, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_17:
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
	jne	.LBB3_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$5, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_19:
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
	jne	.LBB3_21
# BB#20:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$6, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_21:
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
	jne	.LBB3_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$7, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_23:                               # %PDFFont_NewListEntry.exit
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
	movq	%rax, -184(%rbp)
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	PDFFont_AddFont, .Lfunc_end3-PDFFont_AddFont
	.cfi_endproc

	.globl	PDFPage_SetVars
	.align	16, 0x90
	.type	PDFPage_SetVars,@function
PDFPage_SetVars:                        # @PDFPage_SetVars
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
.Lfunc_end4:
	.size	PDFPage_SetVars, .Lfunc_end4-PDFPage_SetVars
	.cfi_endproc

	.globl	PDFPage_Write
	.align	16, 0x90
	.type	PDFPage_Write,@function
PDFPage_Write:                          # @PDFPage_Write
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
	pushq	%rbx
	subq	$568, %rsp              # imm = 0x238
.Ltmp20:
	.cfi_offset %rbx, -24
	movq	%rdi, -552(%rbp)
	movq	%rsi, -560(%rbp)
	cmpb	$0, (%rsi)
	je	.LBB5_26
# BB#1:
	movq	-552(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, g_page_contents_obj_num(%rip)
	jne	.LBB5_8
# BB#2:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB5_4
# BB#3:
	movq	-32(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.71, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB5_4:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	PDFObject_New
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-24(%rbp), %eax
	movl	%eax, g_page_contents_obj_num(%rip)
	callq	PDFObject_New
	movl	%eax, g_page_length_obj_num(%rip)
	movq	-32(%rbp), %rsi
	movl	$.L.str.72, %edi
	callq	fputs
	movq	-32(%rbp), %rax
	movl	g_page_length_obj_num(%rip), %edx
	movq	%rax, -16(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rsi
	movl	$.L.str.73, %edi
	callq	fputs
	movq	-32(%rbp), %rdi
	callq	ftell
	movl	%eax, g_page_start_offset(%rip)
	movss	g_page_h_scale_factor(%rip), %xmm0 # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movss	g_page_v_scale_factor(%rip), %xmm1 # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm1, %xmm1
	leaq	-544(%rbp), %rbx
	movl	$.L.str.13, %esi
	movb	$2, %al
	movq	%rbx, %rdi
	callq	sprintf
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rbx, -24(%rbp)
	cmpb	$0, -544(%rbp)
	je	.LBB5_6
# BB#5:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
.LBB5_6:                                # %PDFPage_WriteStream.exit.i
	movl	g_page_line_width(%rip), %edx
	movl	$.L.str.74, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rbx, -24(%rbp)
	cmpb	$0, -544(%rbp)
	je	.LBB5_8
# BB#7:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
.LBB5_8:                                # %PDFPage_Begin.exit
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB5_17
# BB#9:
	movq	-560(%rbp), %rdi
	callq	strlen
	movl	%eax, -564(%rbp)
	addl	g_buffer_pos(%rip), %eax
	cmpl	$1024, %eax             # imm = 0x400
	jb	.LBB5_16
# BB#10:
	movq	-552(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB5_24
# BB#11:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_13:                               #   in Loop: Header=BB5_12 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-32(%rbp), %rdi
	callq	free
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB5_13
# BB#14:
	movq	-24(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$g_buffer, -16(%rbp)
	cmpb	$0, g_buffer(%rip)
	je	.LBB5_24
# BB#15:
	movq	-16(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	fputs
	jmp	.LBB5_24
.LBB5_17:
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB5_20
# BB#18:
	movl	$0, g_TJ_pending(%rip)
	movq	-552(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$.L.str.5, -16(%rbp)
	cmpb	$0, .L.str.5(%rip)
	je	.LBB5_20
# BB#19:
	movq	-16(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	fputs
.LBB5_20:
	cmpl	$0, g_ET_pending(%rip)
	je	.LBB5_24
# BB#21:
	movl	$0, g_ET_pending(%rip)
	movq	-552(%rbp), %rax
	movq	%rax, -544(%rbp)
	movq	$.L.str.6, -16(%rbp)
	cmpb	$0, .L.str.6(%rip)
	je	.LBB5_23
# BB#22:
	movq	-16(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	fputs
.LBB5_23:                               # %PDFPage_WriteStream.exit3
	movl	$0, g_valid_text_matrix(%rip)
.LBB5_24:
	movq	-552(%rbp), %rax
	movq	-560(%rbp), %rcx
	movq	%rax, -544(%rbp)
	movq	%rcx, -16(%rbp)
	cmpb	$0, (%rcx)
	je	.LBB5_26
# BB#25:
	movq	-16(%rbp), %rdi
	movq	-544(%rbp), %rsi
	callq	fputs
	jmp	.LBB5_26
.LBB5_16:
	movl	g_buffer_pos(%rip), %eax
	leaq	g_buffer(%rax), %rdi
	movq	-560(%rbp), %rsi
	callq	strcpy
	movl	-564(%rbp), %eax
	addl	%eax, g_buffer_pos(%rip)
.LBB5_26:
	addq	$568, %rsp              # imm = 0x238
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	PDFPage_Write, .Lfunc_end5-PDFPage_Write
	.cfi_endproc

	.globl	PDFPage_Push
	.align	16, 0x90
	.type	PDFPage_Push,@function
PDFPage_Push:                           # @PDFPage_Push
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$24, %edi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB6_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$14, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_2:
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
	je	.LBB6_6
# BB#3:
	movl	$16, %edi
	callq	malloc
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	jne	.LBB6_5
# BB#4:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$15, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB6_5:
	movq	g_qsave_marking_stack(%rip), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	g_buffer_pos(%rip), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
.LBB6_6:
	movq	-8(%rbp), %rdi
	movl	$.L.str.8, %esi
	callq	PDFPage_Write
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	PDFPage_Push, .Lfunc_end6-PDFPage_Push
	.cfi_endproc

	.globl	PDFPage_Pop
	.align	16, 0x90
	.type	PDFPage_Pop,@function
PDFPage_Pop:                            # @PDFPage_Pop
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	g_qsave_stack(%rip), %rax
	movq	%rax, -32(%rbp)
	movl	8(%rax), %eax
	movl	%eax, g_page_h_origin(%rip)
	movq	-32(%rbp), %rax
	movl	12(%rax), %eax
	movl	%eax, g_page_v_origin(%rip)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, g_qsave_stack(%rip)
	movq	-32(%rbp), %rdi
	callq	free
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB7_5
# BB#1:
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -40(%rbp)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB7_4
# BB#2:
	cmpl	$0, -4(%rbp)
	jne	.LBB7_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_4:                                # %Assert.exit
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-40(%rbp), %rax
	movl	8(%rax), %eax
	movl	%eax, g_buffer_pos(%rip)
	movl	g_buffer_pos(%rip), %eax
	movb	$0, g_buffer(%rax)
	movq	-40(%rbp), %rdi
	callq	free
	jmp	.LBB7_9
.LBB7_5:
	cmpq	$0, g_qsave_marking_stack(%rip)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB7_8
# BB#6:
	cmpl	$0, -4(%rbp)
	jne	.LBB7_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB7_8:                                # %Assert.exit1
	movq	-24(%rbp), %rdi
	movl	$.L.str.9, %esi
	callq	PDFPage_Write
.LBB7_9:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	PDFPage_Pop, .Lfunc_end7-PDFPage_Pop
	.cfi_endproc

	.globl	PDFFont_Set
	.align	16, 0x90
	.type	PDFFont_Set,@function
PDFFont_Set:                            # @PDFFont_Set
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
	subq	$576, %rsp              # imm = 0x240
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rdx, -8(%rbp)
	movq	g_font_list(%rip), %rax
	jmp	.LBB8_1
	.align	16, 0x90
.LBB8_3:                                #   in Loop: Header=BB8_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB8_4
# BB#2:                                 #   in Loop: Header=BB8_1 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	16(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB8_3
.LBB8_4:                                # %PDFFont_FindListEntry_Short.exit
	movq	-16(%rbp), %rax
	movq	%rax, -568(%rbp)
	testq	%rax, %rax
	jne	.LBB8_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movq	-40(%rbp), %r9
	movl	$48, %edi
	movl	$42, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB8_6:
	movq	-568(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-28(%rbp), %ecx
	leaq	-560(%rbp), %rdi
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	callq	sprintf
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB8_9
# BB#7:
	movl	$0, g_TJ_pending(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$.L.str.5, -16(%rbp)
	cmpb	$0, .L.str.5(%rip)
	je	.LBB8_9
# BB#8:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
.LBB8_9:
	movl	g_ET_pending(%rip), %eax
	movl	%eax, -572(%rbp)
	movl	$0, g_ET_pending(%rip)
	movq	-24(%rbp), %rdi
	leaq	-560(%rbp), %rsi
	callq	PDFPage_Write
	movl	-572(%rbp), %eax
	movl	%eax, g_ET_pending(%rip)
	movq	-568(%rbp), %rax
	movl	$1, 44(%rax)
	movl	$1, g_page_uses_fonts(%rip)
	addq	$576, %rsp              # imm = 0x240
	popq	%rbp
	retq
.Lfunc_end8:
	.size	PDFFont_Set, .Lfunc_end8-PDFFont_Set
	.cfi_endproc

	.globl	PDFText_OpenXY
	.align	16, 0x90
	.type	PDFText_OpenXY,@function
PDFText_OpenXY:                         # @PDFText_OpenXY
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
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp33:
	.cfi_offset %rbx, -24
	movq	%rdi, -552(%rbp)
	movl	%esi, -556(%rbp)
	movl	%edx, -560(%rbp)
	movq	-552(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-552(%rbp), %rax
	movl	-556(%rbp), %edx
	movl	-560(%rbp), %ecx
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	-28(%rbp), %edx
	leaq	-544(%rbp), %rbx
	movl	$.L.str.77, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-24(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB9_2
# BB#1:
	movl	$0, g_TJ_pending(%rip)
	jmp	.LBB9_3
.LBB9_2:
	movq	-16(%rbp), %rdi
	movl	$.L.str.79, %esi
	callq	PDFPage_Write
.LBB9_3:                                # %PDFText_MoveToXYAndOpen.exit
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	PDFText_OpenXY, .Lfunc_end9-PDFText_OpenXY
	.cfi_endproc

	.align	16, 0x90
	.type	PDFText_OpenBT,@function
PDFText_OpenBT:                         # @PDFText_OpenBT
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
	movq	%rdi, -40(%rbp)
	movq	%rdi, -24(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB10_6
# BB#1:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB10_2
	.align	16, 0x90
.LBB10_3:                               #   in Loop: Header=BB10_2 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-32(%rbp), %rdi
	callq	free
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB10_3
# BB#4:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$g_buffer, -16(%rbp)
	cmpb	$0, g_buffer(%rip)
	je	.LBB10_6
# BB#5:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
.LBB10_6:                               # %PDFPage_FlushBuffer.exit
	movl	$1, g_page_has_text(%rip)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB10_9
# BB#7:
	movl	$0, g_TJ_pending(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$.L.str.5, -16(%rbp)
	cmpb	$0, .L.str.5(%rip)
	je	.LBB10_9
# BB#8:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
.LBB10_9:
	cmpl	$0, g_ET_pending(%rip)
	je	.LBB10_11
# BB#10:
	movl	$0, g_ET_pending(%rip)
	jmp	.LBB10_12
.LBB10_11:
	movq	-40(%rbp), %rdi
	movl	$.L.str.76, %esi
	callq	PDFPage_Write
	movl	$1, g_valid_text_matrix(%rip)
.LBB10_12:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	PDFText_OpenBT, .Lfunc_end10-PDFText_OpenBT
	.cfi_endproc

	.globl	PDFText_OpenX
	.align	16, 0x90
	.type	PDFText_OpenX,@function
PDFText_OpenX:                          # @PDFText_OpenX
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
	pushq	%rbx
	subq	$552, %rsp              # imm = 0x228
.Ltmp40:
	.cfi_offset %rbx, -24
	movq	%rdi, -552(%rbp)
	movl	%esi, -556(%rbp)
	movq	-552(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-552(%rbp), %rax
	movl	-556(%rbp), %edx
	movq	%rax, -24(%rbp)
	movl	%edx, -28(%rbp)
	leaq	-544(%rbp), %rbx
	movl	$.L.str.78, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-24(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB11_2
# BB#1:
	movl	$0, g_TJ_pending(%rip)
	jmp	.LBB11_3
.LBB11_2:
	movq	-16(%rbp), %rdi
	movl	$.L.str.79, %esi
	callq	PDFPage_Write
.LBB11_3:                               # %PDFText_MoveToXAndOpen.exit
	addq	$552, %rsp              # imm = 0x228
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	PDFText_OpenX, .Lfunc_end11-PDFText_OpenX
	.cfi_endproc

	.globl	PDFText_Open
	.align	16, 0x90
	.type	PDFText_Open,@function
PDFText_Open:                           # @PDFText_Open
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
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB12_5
# BB#1:
	cmpl	$1, g_ET_pending(%rip)
	movl	$0, g_TJ_pending(%rip)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB12_4
# BB#2:
	cmpl	$0, -12(%rbp)
	jne	.LBB12_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB12_4:                               # %Assert.exit
	movl	$0, g_ET_pending(%rip)
	jmp	.LBB12_8
.LBB12_5:
	movq	-24(%rbp), %rdi
	callq	PDFText_OpenBT
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	cmpl	$0, g_TJ_pending(%rip)
	je	.LBB12_7
# BB#6:
	movl	$0, g_TJ_pending(%rip)
	jmp	.LBB12_8
.LBB12_7:
	movq	-8(%rbp), %rdi
	movl	$.L.str.79, %esi
	callq	PDFPage_Write
.LBB12_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	PDFText_Open, .Lfunc_end12-PDFText_Open
	.cfi_endproc

	.globl	PDFText_Kern
	.align	16, 0x90
	.type	PDFText_Kern,@function
PDFText_Kern:                           # @PDFText_Kern
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp47:
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
.Lfunc_end13:
	.size	PDFText_Kern, .Lfunc_end13-PDFText_Kern
	.cfi_endproc

	.globl	PDFText_Close
	.align	16, 0x90
	.type	PDFText_Close,@function
PDFText_Close:                          # @PDFText_Close
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
	subq	$32, %rsp
	cmpl	$0, g_page_contents_obj_num(%rip)
	movq	%rdi, -24(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB14_3
# BB#1:
	cmpl	$0, -4(%rbp)
	jne	.LBB14_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB14_3:                               # %Assert.exit
	movl	$1, g_TJ_pending(%rip)
	movl	$1, g_ET_pending(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	PDFText_Close, .Lfunc_end14-PDFText_Close
	.cfi_endproc

	.globl	PDFPage_Scale
	.align	16, 0x90
	.type	PDFPage_Scale,@function
PDFPage_Scale:                          # @PDFPage_Scale
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp54:
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
.Lfunc_end15:
	.size	PDFPage_Scale, .Lfunc_end15-PDFPage_Scale
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI16_0:
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
.Ltmp55:
	.cfi_def_cfa_offset 16
.Ltmp56:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp57:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp58:
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
	xorps	.LCPI16_0(%rip), %xmm2
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
.Lfunc_end16:
	.size	PDFPage_Rotate, .Lfunc_end16-PDFPage_Rotate
	.cfi_endproc

	.globl	PDFPage_Translate
	.align	16, 0x90
	.type	PDFPage_Translate,@function
PDFPage_Translate:                      # @PDFPage_Translate
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
	pushq	%rbx
	subq	$536, %rsp              # imm = 0x218
.Ltmp62:
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
.Lfunc_end17:
	.size	PDFPage_Translate, .Lfunc_end17-PDFPage_Translate
	.cfi_endproc

	.globl	PDFPage_WriteGraphic
	.align	16, 0x90
	.type	PDFPage_WriteGraphic,@function
PDFPage_WriteGraphic:                   # @PDFPage_WriteGraphic
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$616, %rsp              # imm = 0x268
.Ltmp66:
	.cfi_offset %rbx, -24
	movq	%rdi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movq	%rsi, -584(%rbp)
	leaq	-576(%rbp), %rax
	movq	%rax, -592(%rbp)
	movq	-584(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB18_64
# BB#1:
	cmpl	$0, g_expr_depth(%rip)
	je	.LBB18_4
# BB#2:
	movq	-584(%rbp), %rdi
	leaq	-596(%rbp), %rsi
	leaq	-600(%rbp), %rdx
	callq	PDFPage_CollectExpr
	movq	%rax, -584(%rbp)
	cmpl	$0, -596(%rbp)
	je	.LBB18_4
# BB#3:
	movq	-592(%rbp), %rdi
	movss	-600(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	movb	$1, %al
	callq	sprintf
	movq	-592(%rbp), %rdi
	callq	strlen
	addq	%rax, -592(%rbp)
.LBB18_4:
	cmpl	$0, g_link_depth(%rip)
	je	.LBB18_7
.LBB18_5:
	movq	-584(%rbp), %rdi
	callq	PDFPage_CollectLink
.LBB18_6:
	movq	%rax, -584(%rbp)
	jmp	.LBB18_7
	.align	16, 0x90
.LBB18_56:                              #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -584(%rbp)
	movb	(%rax), %al
	movq	-592(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -592(%rbp)
	movb	%al, (%rcx)
.LBB18_7:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_48 Depth 2
	movq	-584(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB18_57
# BB#8:                                 #   in Loop: Header=BB18_7 Depth=1
	leaq	-64(%rbp), %rax
	cmpq	%rax, -592(%rbp)
	sbbl	%eax, %eax
	andl	$1, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -24(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB18_11
# BB#9:                                 #   in Loop: Header=BB18_7 Depth=1
	cmpl	$0, -24(%rbp)
	jne	.LBB18_11
# BB#10:                                #   in Loop: Header=BB18_7 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB18_11:                              # %Assert.exit
                                        #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB18_56
# BB#12:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB18_56
# BB#13:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rdx
	addq	$2, %rdx
	movq	%rdx, -584(%rbp)
	movl	$4, %edi
	movl	$g_graphic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	js	.LBB18_15
# BB#14:                                #   in Loop: Header=BB18_7 Depth=1
	movslq	-604(%rbp), %rax
	movq	g_graphic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -584(%rbp)
	movq	-592(%rbp), %rdi
	movslq	-604(%rbp), %rax
	movl	g_graphics_vars(,%rax,4), %edx
	movl	$.L.str.17, %esi
	xorl	%eax, %eax
	callq	sprintf
.LBB18_54:                              #   in Loop: Header=BB18_7 Depth=1
	movq	-592(%rbp), %rdi
	callq	strlen
	addq	%rax, -592(%rbp)
	jmp	.LBB18_7
.LBB18_15:                              #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rdx
	movl	$5, %edi
	movl	$g_link_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	jns	.LBB18_16
# BB#20:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rdx
	movl	$4, %edi
	movl	$g_doc_info_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	jns	.LBB18_21
# BB#46:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rdx
	movl	$7, %edi
	movl	$g_arithmetic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -604(%rbp)
	testl	%eax, %eax
	js	.LBB18_55
# BB#47:                                #   in Loop: Header=BB18_7 Depth=1
	movslq	-604(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rsi
	movl	$g_expr, %edi
	callq	strcpy
	movslq	-604(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -584(%rbp)
	jmp	.LBB18_48
	.align	16, 0x90
.LBB18_49:                              #   in Loop: Header=BB18_48 Depth=2
	incq	-584(%rbp)
.LBB18_48:                              #   Parent Loop BB18_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-584(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB18_49
# BB#50:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-584(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$40, %eax
	je	.LBB18_52
# BB#51:                                #   in Loop: Header=BB18_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$36, %esi
	movl	$.L.str.18, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB18_52:                              #   in Loop: Header=BB18_7 Depth=1
	movl	$g_expr, %edi
	movl	$.L.str.19, %esi
	callq	strcat
	movl	$g_expr, %edi
	callq	strlen
	movl	%eax, g_expr_index(%rip)
	incl	g_expr_depth(%rip)
	movq	-584(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -584(%rbp)
	leaq	-612(%rbp), %rsi
	leaq	-608(%rbp), %rdx
	callq	PDFPage_CollectExpr
	movq	%rax, -584(%rbp)
	cmpl	$0, -612(%rbp)
	je	.LBB18_7
# BB#53:                                #   in Loop: Header=BB18_7 Depth=1
	movq	-592(%rbp), %rdi
	movss	-608(%rbp), %xmm0       # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.16, %esi
	movb	$1, %al
	callq	sprintf
	jmp	.LBB18_54
.LBB18_55:                              #   in Loop: Header=BB18_7 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$37, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	-592(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -592(%rbp)
	movb	$95, (%rax)
	movq	-592(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -592(%rbp)
	movb	$95, (%rax)
	jmp	.LBB18_7
.LBB18_16:
	movslq	-604(%rbp), %rax
	movq	g_link_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -584(%rbp)
	jmp	.LBB18_17
	.align	16, 0x90
.LBB18_18:                              #   in Loop: Header=BB18_17 Depth=1
	incq	-584(%rbp)
.LBB18_17:                              # =>This Inner Loop Header: Depth=1
	movq	-584(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB18_18
# BB#19:
	movl	$0, g_link_index(%rip)
	incl	g_link_depth(%rip)
	movl	-604(%rbp), %eax
	movl	%eax, g_link_keyword(%rip)
	jmp	.LBB18_5
.LBB18_57:
	movq	-592(%rbp), %rax
	movb	$0, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB18_63
# BB#58:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB18_59
	.align	16, 0x90
.LBB18_60:                              #   in Loop: Header=BB18_59 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-40(%rbp), %rdi
	callq	free
.LBB18_59:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB18_60
# BB#61:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$g_buffer, -24(%rbp)
	cmpb	$0, g_buffer(%rip)
	je	.LBB18_63
# BB#62:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
.LBB18_63:                              # %PDFPage_FlushBuffer.exit
	movq	-48(%rbp), %rdi
	leaq	-576(%rbp), %rsi
	callq	PDFPage_Write
.LBB18_64:
	addq	$616, %rsp              # imm = 0x268
	popq	%rbx
	popq	%rbp
	retq
.LBB18_21:
	movslq	-604(%rbp), %rax
	movq	g_doc_info_keywords(,%rax,8), %rdi
	callq	strlen
	addq	-584(%rbp), %rax
	movq	%rax, -584(%rbp)
	movl	-604(%rbp), %ecx
	movq	%rax, -16(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpq	$3, %rax
	ja	.LBB18_45
# BB#22:
	jmpq	*.LJTI18_0(,%rax,8)
.LBB18_23:
	cmpq	$0, g_doc_author(%rip)
	je	.LBB18_25
# BB#24:
	movq	g_doc_author(%rip), %rdi
	callq	free
.LBB18_25:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_author(%rip)
	testq	%rax, %rax
	je	.LBB18_26
# BB#28:
	movq	g_doc_author(%rip), %rdi
	jmp	.LBB18_44
.LBB18_29:
	cmpq	$0, g_doc_title(%rip)
	je	.LBB18_31
# BB#30:
	movq	g_doc_title(%rip), %rdi
	callq	free
.LBB18_31:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_title(%rip)
	testq	%rax, %rax
	je	.LBB18_32
# BB#33:
	movq	g_doc_title(%rip), %rdi
	jmp	.LBB18_44
.LBB18_34:
	cmpq	$0, g_doc_subject(%rip)
	je	.LBB18_36
# BB#35:
	movq	g_doc_subject(%rip), %rdi
	callq	free
.LBB18_36:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_subject(%rip)
	testq	%rax, %rax
	je	.LBB18_37
# BB#38:
	movq	g_doc_subject(%rip), %rdi
	jmp	.LBB18_44
.LBB18_39:
	cmpq	$0, g_doc_keywords(%rip)
	je	.LBB18_41
# BB#40:
	movq	g_doc_keywords(%rip), %rdi
	callq	free
.LBB18_41:
	movq	-16(%rbp), %rdi
	callq	strlen
	leaq	1(%rax), %rdi
	callq	malloc
	movq	%rax, g_doc_keywords(%rip)
	testq	%rax, %rax
	je	.LBB18_42
# BB#43:
	movq	g_doc_keywords(%rip), %rdi
.LBB18_44:                              # %PDFPage_ProcessDocInfoKeyword.exit
	movq	-16(%rbp), %rsi
	callq	strcpy
	jmp	.LBB18_45
.LBB18_26:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$26, %esi
	movl	$.L.str.122, %edx
	jmp	.LBB18_27
.LBB18_32:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$27, %esi
	movl	$.L.str.123, %edx
	jmp	.LBB18_27
.LBB18_37:
	movq	no_fpos(%rip), %r8
	movl	$47, %edi
	movl	$28, %esi
	movl	$.L.str.124, %edx
	jmp	.LBB18_27
.LBB18_42:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$29, %esi
	movl	$.L.str.125, %edx
.LBB18_27:                              # %PDFPage_ProcessDocInfoKeyword.exit
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB18_45:                              # %PDFPage_ProcessDocInfoKeyword.exit
	movq	-16(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strlen
	addq	%rbx, %rax
	jmp	.LBB18_6
.Lfunc_end18:
	.size	PDFPage_WriteGraphic, .Lfunc_end18-PDFPage_WriteGraphic
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_23
	.quad	.LBB18_29
	.quad	.LBB18_34
	.quad	.LBB18_39

	.text
	.align	16, 0x90
	.type	PDFPage_CollectExpr,@function
PDFPage_CollectExpr:                    # @PDFPage_CollectExpr
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	jmp	.LBB19_1
	.align	16, 0x90
.LBB19_5:                               #   in Loop: Header=BB19_1 Depth=1
	incl	g_expr_depth(%rip)
.LBB19_1:                               # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB19_12
# BB#2:                                 #   in Loop: Header=BB19_1 Depth=1
	movslq	g_expr_index(%rip), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB19_4
# BB#3:                                 #   in Loop: Header=BB19_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$34, %esi
	movl	$.L.str.80, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB19_4:                               #   in Loop: Header=BB19_1 Depth=1
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %al
	movb	%al, -41(%rbp)
	movslq	g_expr_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_expr_index(%rip)
	movb	%al, g_expr(%rcx)
	movzbl	-41(%rbp), %eax
	cmpl	$40, %eax
	je	.LBB19_5
# BB#6:                                 #   in Loop: Header=BB19_1 Depth=1
	movzbl	-41(%rbp), %eax
	cmpl	$41, %eax
	jne	.LBB19_1
# BB#7:                                 #   in Loop: Header=BB19_1 Depth=1
	cmpl	$0, g_expr_depth(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB19_10
# BB#8:                                 #   in Loop: Header=BB19_1 Depth=1
	cmpl	$0, -4(%rbp)
	jne	.LBB19_10
# BB#9:                                 #   in Loop: Header=BB19_1 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB19_10:                              # %Assert.exit
                                        #   in Loop: Header=BB19_1 Depth=1
	decl	g_expr_depth(%rip)
	jne	.LBB19_1
# BB#11:
	movslq	g_expr_index(%rip), %rax
	movb	$0, g_expr(%rax)
	movq	-40(%rbp), %rsi
	movl	$g_expr, %edi
	callq	PDFPage_EvalExpr
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
.LBB19_12:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	PDFPage_CollectExpr, .Lfunc_end19-PDFPage_CollectExpr
	.cfi_endproc

	.align	16, 0x90
	.type	PDFPage_CollectLink,@function
PDFPage_CollectLink:                    # @PDFPage_CollectLink
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp73:
	.cfi_offset %rbx, -24
	movq	%rdi, -144(%rbp)
	jmp	.LBB20_1
	.align	16, 0x90
.LBB20_6:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %al
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	incl	g_link_depth(%rip)
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_62
# BB#2:                                 #   in Loop: Header=BB20_1 Depth=1
	movslq	g_link_index(%rip), %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB20_4
# BB#3:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$35, %esi
	movl	$.L.str.94, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_4:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %al
	movb	%al, -145(%rbp)
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	movzbl	-145(%rbp), %eax
	cmpl	$60, %eax
	jne	.LBB20_7
# BB#5:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$60, %eax
	je	.LBB20_6
.LBB20_7:                               #   in Loop: Header=BB20_1 Depth=1
	movzbl	-145(%rbp), %eax
	cmpl	$62, %eax
	jne	.LBB20_1
# BB#8:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	-144(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$62, %eax
	jne	.LBB20_1
# BB#9:                                 #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, g_link_depth(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -32(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB20_12
# BB#10:                                #   in Loop: Header=BB20_1 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB20_12
# BB#11:                                #   in Loop: Header=BB20_1 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_12:                              # %Assert.exit
                                        #   in Loop: Header=BB20_1 Depth=1
	decl	g_link_depth(%rip)
	je	.LBB20_13
# BB#63:                                #   in Loop: Header=BB20_1 Depth=1
	movq	-144(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -144(%rbp)
	movb	(%rax), %al
	movslq	g_link_index(%rip), %rcx
	leal	1(%rcx), %edx
	movl	%edx, g_link_index(%rip)
	movb	%al, g_link(%rcx)
	jmp	.LBB20_1
.LBB20_13:
	movslq	g_link_index(%rip), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, g_link_index(%rip)
	movb	$0, g_link-1(%rax)
	movq	$g_link, -72(%rbp)
	movl	g_link_keyword(%rip), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	$0, -96(%rbp)
	jmp	.LBB20_14
	.align	16, 0x90
.LBB20_23:                              #   in Loop: Header=BB20_14 Depth=1
	incl	-80(%rbp)
	incq	-72(%rbp)
.LBB20_14:                              # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_15
# BB#16:                                #   in Loop: Header=BB20_14 Depth=1
	movq	-72(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	je	.LBB20_17
# BB#18:                                #   in Loop: Header=BB20_14 Depth=1
	movq	-72(%rbp), %rax
	movzbl	1(%rax), %eax
	cmpl	$95, %eax
	jne	.LBB20_19
# BB#20:                                #   in Loop: Header=BB20_14 Depth=1
	movq	-72(%rbp), %rax
	movzbl	2(%rax), %eax
	cmpl	$95, %eax
	sete	%al
	jmp	.LBB20_21
	.align	16, 0x90
.LBB20_15:                              #   in Loop: Header=BB20_14 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_22
	.align	16, 0x90
.LBB20_17:                              #   in Loop: Header=BB20_14 Depth=1
	xorl	%eax, %eax
	jmp	.LBB20_21
.LBB20_19:                              #   in Loop: Header=BB20_14 Depth=1
	xorl	%eax, %eax
.LBB20_21:                              #   in Loop: Header=BB20_14 Depth=1
	xorb	$1, %al
.LBB20_22:                              #   in Loop: Header=BB20_14 Depth=1
	testb	%al, %al
	jne	.LBB20_23
# BB#24:
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB20_26
# BB#25:
	movq	-72(%rbp), %rax
	incq	%rax
	movq	%rax, -72(%rbp)
	movq	%rax, -96(%rbp)
	jmp	.LBB20_26
	.align	16, 0x90
.LBB20_27:                              #   in Loop: Header=BB20_26 Depth=1
	incq	-72(%rbp)
.LBB20_26:                              # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB20_27
# BB#28:
	cmpl	$0, -80(%rbp)
	je	.LBB20_29
# BB#31:
	cvtsi2ssl	g_page_h_origin(%rip), %xmm0
	mulss	g_page_h_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -100(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2ssl	g_page_v_origin(%rip), %xmm0
	mulss	g_page_v_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -104(%rbp)
	movl	g_page_h_origin(%rip), %eax
	addl	g_graphics_vars(%rip), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	g_page_h_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -108(%rbp)
	movl	g_page_v_origin(%rip), %eax
	addl	g_graphics_vars+4(%rip), %eax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	%eax, %xmm0
	mulss	g_page_v_scale_factor(%rip), %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -112(%rbp)
	movl	-76(%rbp), %eax
	leal	-1(%rax), %ecx
	cmpl	$2, %ecx
	jb	.LBB20_43
# BB#32:
	leal	-3(%rax), %ecx
	cmpl	$2, %ecx
	jae	.LBB20_33
# BB#52:
	movq	-88(%rbp), %r8
	movl	-80(%rbp), %ecx
	movl	-100(%rbp), %edx
	movl	-104(%rbp), %esi
	movl	-108(%rbp), %edi
	movl	-112(%rbp), %ebx
	cmpl	$4, -76(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	%r8, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	%edx, -40(%rbp)
	movl	%esi, -44(%rbp)
	movl	%edi, -48(%rbp)
	movl	%ebx, -52(%rbp)
	movl	%eax, -56(%rbp)
	movl	$40, %edi
	callq	malloc
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	jne	.LBB20_54
# BB#53:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$16, %esi
	movl	$.L.str.108, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_54:
	movl	-36(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-64(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-64(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB20_56
# BB#55:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$17, %esi
	movl	$.L.str.108, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_56:
	movq	-64(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	memcpy
	movl	-36(%rbp), %eax
	movq	-64(%rbp), %rcx
	movq	8(%rcx), %rcx
	movb	$0, (%rcx,%rax)
	cmpl	$0, g_page_contents_obj_num(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB20_59
# BB#57:
	cmpl	$0, -12(%rbp)
	jne	.LBB20_59
# BB#58:
	movq	no_fpos(%rip), %r8
	movq	-24(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_59:                              # %Assert.exit.i.i
	movl	g_page_object_num(%rip), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movl	-40(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 20(%rcx)
	movl	-44(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 24(%rcx)
	movl	-48(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 28(%rcx)
	movl	-52(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-56(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	g_target_annot_list(%rip), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rax
	movq	%rax, g_target_annot_list(%rip)
	cmpl	$0, -56(%rbp)
	je	.LBB20_61
# BB#60:
	movl	-56(%rbp), %eax
	movl	%eax, g_has_exported_targets(%rip)
	jmp	.LBB20_61
.LBB20_29:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$22, %esi
	movl	$.L.str.95, %edx
	movl	$2, %ecx
.LBB20_30:                              # %PDFPage_ProcessLinkKeyword.exit
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB20_61
.LBB20_43:
	movl	-76(%rbp), %edi
	movq	-88(%rbp), %rsi
	movl	-80(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	-112(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$0, 8(%rsp)
	callq	PDFSourceAnnot_New
	movq	%rax, -128(%rbp)
	cmpl	$1, -76(%rbp)
	jne	.LBB20_61
# BB#44:
	movl	$0, -80(%rbp)
	cmpq	$0, -96(%rbp)
	je	.LBB20_47
# BB#45:
	movq	-96(%rbp), %rdx
	movl	$1, %edi
	movl	$g_external_file_spec_keyword, %esi
	callq	PDFKeyword_Find
	movl	%eax, -132(%rbp)
	testl	%eax, %eax
	jne	.LBB20_47
# BB#46:
	movq	g_external_file_spec_keyword(%rip), %rdi
	callq	strlen
	addq	-96(%rbp), %rax
	movq	%rax, -96(%rbp)
	movq	%rax, %rdi
	callq	strlen
	movl	%eax, -80(%rbp)
.LBB20_47:
	cmpl	$0, -80(%rbp)
	je	.LBB20_48
# BB#49:
	movl	-80(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-128(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-128(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB20_51
# BB#50:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$25, %esi
	movl	$.L.str.97, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB20_51:
	movq	-128(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-96(%rbp), %rsi
	callq	strcpy
	jmp	.LBB20_61
.LBB20_33:
	testl	%eax, %eax
	jne	.LBB20_61
# BB#34:
	cmpq	$0, -96(%rbp)
	je	.LBB20_41
# BB#35:
	movq	-72(%rbp), %rdx
	movl	$8, %edi
	movl	$g_dest_link_options, %esi
	callq	PDFKeyword_Find
	movl	%eax, -116(%rbp)
	testl	%eax, %eax
	js	.LBB20_37
# BB#36:
	movslq	-116(%rbp), %rax
	movq	g_dest_link_options(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -72(%rbp)
	jmp	.LBB20_42
.LBB20_48:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$24, %esi
	movl	$.L.str.96, %edx
	movl	$1, %ecx
	jmp	.LBB20_30
.LBB20_41:
	movl	$0, -116(%rbp)
	jmp	.LBB20_42
.LBB20_37:
	movl	$0, -116(%rbp)
	jmp	.LBB20_38
.LBB20_39:                              #   in Loop: Header=BB20_38 Depth=1
	incq	-72(%rbp)
.LBB20_38:                              # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB20_39
# BB#40:
	movl	-72(%rbp), %eax
	subl	-88(%rbp), %eax
	movl	%eax, -80(%rbp)
.LBB20_42:
	movl	-76(%rbp), %edi
	movq	-88(%rbp), %rsi
	movl	-80(%rbp), %edx
	movl	-100(%rbp), %ecx
	movl	-104(%rbp), %r8d
	movl	-108(%rbp), %r9d
	movl	-112(%rbp), %eax
	movl	-116(%rbp), %ebx
	movl	%ebx, 8(%rsp)
	movl	%eax, (%rsp)
	callq	PDFSourceAnnot_New
.LBB20_61:                              # %PDFPage_ProcessLinkKeyword.exit
	incq	-144(%rbp)
.LBB20_62:
	movq	-144(%rbp), %rax
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end20:
	.size	PDFPage_CollectLink, .Lfunc_end20-PDFPage_CollectLink
	.cfi_endproc

	.align	16, 0x90
	.type	PDFKeyword_Find,@function
PDFKeyword_Find:                        # @PDFKeyword_Find
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp74:
	.cfi_def_cfa_offset 16
.Ltmp75:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp76:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_3:                               #   in Loop: Header=BB21_1 Depth=1
	incl	-28(%rbp)
.LBB21_1:                               # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jae	.LBB21_4
# BB#2:                                 #   in Loop: Header=BB21_1 Depth=1
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
	jne	.LBB21_3
.LBB21_4:
	movl	-28(%rbp), %ecx
	movl	$-1, %eax
	cmpl	-4(%rbp), %ecx
	jae	.LBB21_6
# BB#5:
	movl	-28(%rbp), %eax
.LBB21_6:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	PDFKeyword_Find, .Lfunc_end21-PDFKeyword_Find
	.cfi_endproc

	.globl	PDFPage_PrintUnderline
	.align	16, 0x90
	.type	PDFPage_PrintUnderline,@function
PDFPage_PrintUnderline:                 # @PDFPage_PrintUnderline
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp77:
	.cfi_def_cfa_offset 16
.Ltmp78:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp79:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp80:
	.cfi_offset %rbx, -24
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%edx, -56(%rbp)
	movl	%ecx, -60(%rbp)
	movl	%r8d, -64(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB22_6
# BB#1:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB22_2
	.align	16, 0x90
.LBB22_3:                               #   in Loop: Header=BB22_2 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -40(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-40(%rbp), %rdi
	callq	free
.LBB22_2:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB22_3
# BB#4:
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	$g_buffer, -24(%rbp)
	cmpb	$0, g_buffer(%rip)
	je	.LBB22_6
# BB#5:
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
.LBB22_6:                               # %PDFPage_FlushBuffer.exit
	movl	-64(%rbp), %edx
	movl	-52(%rbp), %ecx
	movl	-60(%rbp), %r8d
	movl	-56(%rbp), %r9d
	movl	%r8d, (%rsp)
	leaq	-576(%rbp), %rbx
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	callq	sprintf
	movq	-48(%rbp), %rdi
	movq	%rbx, %rsi
	callq	PDFPage_Write
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end22:
	.size	PDFPage_PrintUnderline, .Lfunc_end22-PDFPage_PrintUnderline
	.cfi_endproc

	.globl	PDFPage_Init
	.align	16, 0x90
	.type	PDFPage_Init,@function
PDFPage_Init:                           # @PDFPage_Init
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
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
	jmp	.LBB23_1
	.align	16, 0x90
.LBB23_2:                               #   in Loop: Header=BB23_1 Depth=1
	movq	-24(%rbp), %rax
	movl	$0, 44(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
.LBB23_1:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	.LBB23_2
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
.Lfunc_end23:
	.size	PDFPage_Init, .Lfunc_end23-PDFPage_Init
	.cfi_endproc

	.globl	PDFPage_Cleanup
	.align	16, 0x90
	.type	PDFPage_Cleanup,@function
PDFPage_Cleanup:                        # @PDFPage_Cleanup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$128, %rsp
	movq	%rdi, -56(%rbp)
	cmpq	$0, g_qsave_stack(%rip)
	movl	$0, -60(%rbp)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB24_3
# BB#1:
	cmpl	$0, -16(%rbp)
	jne	.LBB24_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_3:                               # %Assert.exit
	cmpl	$0, g_page_contents_obj_num(%rip)
	je	.LBB24_33
# BB#4:
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB24_11
# BB#5:
	movl	$0, g_buffer_pos(%rip)
	movb	$0, g_buffer(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	cmpl	$0, g_in_buffering_mode(%rip)
	je	.LBB24_11
# BB#6:
	movl	$0, g_in_buffering_mode(%rip)
	jmp	.LBB24_7
	.align	16, 0x90
.LBB24_8:                               #   in Loop: Header=BB24_7 Depth=1
	movq	g_qsave_marking_stack(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_qsave_marking_stack(%rip)
	movq	-32(%rbp), %rdi
	callq	free
.LBB24_7:                               # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_qsave_marking_stack(%rip)
	jne	.LBB24_8
# BB#9:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	$g_buffer, -16(%rbp)
	cmpb	$0, g_buffer(%rip)
	je	.LBB24_11
# BB#10:
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	fputs
.LBB24_11:
	cmpl	$0, g_page_contents_obj_num(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB24_14
# BB#12:
	cmpl	$0, -16(%rbp)
	jne	.LBB24_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_14:                              # %PDFPage_End.exit
	movq	-40(%rbp), %rdi
	callq	ftell
	subl	g_page_start_offset(%rip), %eax
	movl	%eax, -44(%rbp)
	movq	-40(%rbp), %rsi
	movl	$.L.str.134, %edi
	callq	fputs
	movl	-44(%rbp), %eax
	movl	%eax, -64(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB24_16
# BB#15:
	movq	-56(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.22, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB24_16:
	movq	-56(%rbp), %rdi
	movl	g_page_length_obj_num(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-56(%rbp), %rdi
	movl	-64(%rbp), %edx
	movl	$.L.str.23, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	g_font_list(%rip), %rax
	jmp	.LBB24_17
	.align	16, 0x90
.LBB24_32:                              # %PDFFont_WriteFontResource.exit
                                        #   in Loop: Header=BB24_17 Depth=1
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
.LBB24_17:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_24 Depth 2
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB24_33
# BB#18:                                #   in Loop: Header=BB24_17 Depth=1
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, -24(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$0, 40(%rcx)
	jne	.LBB24_32
# BB#19:                                #   in Loop: Header=BB24_17 Depth=1
	movq	-32(%rbp), %rax
	movl	$1, 40(%rax)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB24_21
# BB#20:                                #   in Loop: Header=BB24_17 Depth=1
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	$.L.str.136, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB24_21:                              #   in Loop: Header=BB24_17 Depth=1
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, -8(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, 36(%rcx)
	jne	.LBB24_23
# BB#22:                                #   in Loop: Header=BB24_17 Depth=1
	callq	PDFObject_New
	movq	-16(%rbp), %rcx
	movl	%eax, 36(%rcx)
.LBB24_23:                              # %PDFFont_WriteObject.exit.i
                                        #   in Loop: Header=BB24_17 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	36(%rax), %esi
	callq	PDFObject_WriteObj
	movq	-24(%rbp), %rsi
	movl	$.L.str.137, %edi
	callq	fputs
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.138, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	24(%rax), %rdx
	movl	$.L.str.139, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	$0, -40(%rbp)
	jmp	.LBB24_24
	.align	16, 0x90
.LBB24_27:                              #   in Loop: Header=BB24_24 Depth=2
	incl	-40(%rbp)
.LBB24_24:                              #   Parent Loop BB24_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$13, -40(%rbp)
	jg	.LBB24_28
# BB#25:                                #   in Loop: Header=BB24_24 Depth=2
	movslq	-40(%rbp), %rax
	movq	g_standard_base_14_fonts(,%rax,8), %rdi
	movq	-8(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB24_27
# BB#26:                                #   in Loop: Header=BB24_17 Depth=1
	movl	$1, -16(%rbp)
	jmp	.LBB24_29
.LBB24_28:                              #   in Loop: Header=BB24_17 Depth=1
	movl	$0, -16(%rbp)
.LBB24_29:                              #   in Loop: Header=BB24_17 Depth=1
	movq	-32(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB24_31
# BB#30:                                #   in Loop: Header=BB24_17 Depth=1
	movq	-24(%rbp), %rsi
	movl	$.L.str.140, %edi
	callq	fputs
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	32(%rcx), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-24(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB24_31:                              #   in Loop: Header=BB24_17 Depth=1
	movq	-24(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	jmp	.LBB24_32
.LBB24_33:
	movq	g_source_annot_list(%rip), %rax
	jmp	.LBB24_34
	.align	16, 0x90
.LBB24_37:                              #   in Loop: Header=BB24_34 Depth=1
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
.LBB24_34:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB24_38
# BB#35:                                #   in Loop: Header=BB24_34 Depth=1
	movq	-80(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	g_page_object_num(%rip), %eax
	jne	.LBB24_37
# BB#36:                                #   in Loop: Header=BB24_34 Depth=1
	movl	$1, -60(%rbp)
	movq	-56(%rbp), %rdi
	movq	-80(%rbp), %rsi
	callq	PDFSourceAnnot_Write
	jmp	.LBB24_37
.LBB24_38:
	movl	g_page_count(%rip), %eax
	decl	%eax
	shrl	$6, %eax
	movl	%eax, -84(%rbp)
	movl	g_page_count(%rip), %eax
	decl	%eax
	andl	$63, %eax
	movl	%eax, -88(%rbp)
	movq	g_cur_page_block(%rip), %rax
	movq	%rax, -96(%rbp)
	cmpl	$0, -88(%rbp)
	je	.LBB24_39
# BB#51:
	cmpq	$0, -96(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB24_54
# BB#52:
	cmpl	$0, -16(%rbp)
	jne	.LBB24_54
# BB#53:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB24_54
.LBB24_39:
	movl	$264, %edi              # imm = 0x108
	callq	malloc
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	jne	.LBB24_41
# BB#40:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$38, %esi
	movl	$.L.str.24, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_41:
	cmpl	$0, -84(%rbp)
	je	.LBB24_42
# BB#46:
	cmpq	$0, g_cur_page_block(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB24_49
# BB#47:
	cmpl	$0, -16(%rbp)
	jne	.LBB24_49
# BB#48:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_49:                              # %Assert.exit2
	movq	-96(%rbp), %rax
	movq	g_cur_page_block(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB24_50
.LBB24_42:
	cmpq	$0, g_page_block_list(%rip)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB24_45
# BB#43:
	cmpl	$0, -16(%rbp)
	jne	.LBB24_45
# BB#44:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB24_45:                              # %Assert.exit1
	movq	-96(%rbp), %rax
	movq	%rax, g_page_block_list(%rip)
.LBB24_50:
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	%rax, g_cur_page_block(%rip)
.LBB24_54:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB24_56
# BB#55:
	movq	-56(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.25, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB24_56:
	movl	g_page_object_num(%rip), %eax
	movl	-88(%rbp), %ecx
	movq	-96(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,4)
	movq	-56(%rbp), %rdi
	movl	g_page_object_num(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-56(%rbp), %rsi
	movl	$.L.str.26, %edi
	callq	fputs
	movq	-56(%rbp), %rdi
	movl	g_doc_h_bound(%rip), %edx
	movl	g_doc_v_bound(%rip), %ecx
	movl	$.L.str.27, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rsi
	movl	$.L.str.28, %edi
	callq	fputs
	movq	-56(%rbp), %rax
	movl	g_pages_root(%rip), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
	cmpl	$0, g_page_contents_obj_num(%rip)
	je	.LBB24_58
# BB#57:
	movq	-56(%rbp), %rsi
	movl	$.L.str.30, %edi
	callq	fputs
	movq	-56(%rbp), %rax
	movl	g_page_contents_obj_num(%rip), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB24_58:
	cmpl	$0, g_page_uses_fonts(%rip)
	jne	.LBB24_61
# BB#59:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB24_61
# BB#60:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB24_62
.LBB24_61:
	movq	-56(%rbp), %rsi
	movl	$.L.str.31, %edi
	callq	fputs
.LBB24_62:
	cmpl	$0, g_page_uses_fonts(%rip)
	je	.LBB24_72
# BB#63:
	movq	g_font_list(%rip), %rax
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rsi
	movl	$.L.str.32, %edi
	callq	fputs
	jmp	.LBB24_64
	.align	16, 0x90
.LBB24_70:                              #   in Loop: Header=BB24_64 Depth=1
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
.LBB24_64:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -104(%rbp)
	je	.LBB24_71
# BB#65:                                #   in Loop: Header=BB24_64 Depth=1
	movq	-104(%rbp), %rax
	cmpl	$0, 44(%rax)
	je	.LBB24_70
# BB#66:                                #   in Loop: Header=BB24_64 Depth=1
	movq	-56(%rbp), %rdi
	movq	-104(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.33, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-56(%rbp), %rax
	movq	-104(%rbp), %rcx
	movq	%rax, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, 36(%rcx)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -32(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.LBB24_69
# BB#67:                                #   in Loop: Header=BB24_64 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB24_69
# BB#68:                                #   in Loop: Header=BB24_64 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB24_69:                              # %PDFFont_WriteObjectRef.exit
                                        #   in Loop: Header=BB24_64 Depth=1
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	36(%rcx), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -32(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB24_70
.LBB24_71:
	movq	-56(%rbp), %rsi
	movl	$.L.str.34, %edi
	callq	fputs
.LBB24_72:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB24_74
# BB#73:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB24_77
.LBB24_74:
	movq	-56(%rbp), %rsi
	movl	$.L.str.35, %edi
	callq	fputs
	cmpl	$0, g_page_has_text(%rip)
	je	.LBB24_76
# BB#75:
	movq	-56(%rbp), %rsi
	movl	$.L.str.36, %edi
	callq	fputs
.LBB24_76:
	movq	-56(%rbp), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
.LBB24_77:
	cmpl	$0, g_page_uses_fonts(%rip)
	jne	.LBB24_80
# BB#78:
	cmpl	$0, g_page_has_text(%rip)
	jne	.LBB24_80
# BB#79:
	cmpl	$0, g_page_has_graphics(%rip)
	je	.LBB24_81
.LBB24_80:
	movq	-56(%rbp), %rsi
	movl	$.L.str.38, %edi
	callq	fputs
.LBB24_81:
	cmpl	$0, -60(%rbp)
	je	.LBB24_97
# BB#82:
	movq	g_source_annot_list(%rip), %rax
	movq	%rax, -112(%rbp)
	movq	$0, -120(%rbp)
	movq	-56(%rbp), %rsi
	movl	$.L.str.39, %edi
	callq	fputs
	jmp	.LBB24_83
	.align	16, 0x90
.LBB24_95:                              #   in Loop: Header=BB24_83 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -120(%rbp)
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
.LBB24_83:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -112(%rbp)
	je	.LBB24_96
# BB#84:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-112(%rbp), %rax
	movl	52(%rax), %eax
	cmpl	g_page_object_num(%rip), %eax
	jne	.LBB24_95
# BB#85:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-56(%rbp), %rsi
	movl	$.L.str.40, %edi
	callq	fputs
	movq	-56(%rbp), %rax
	movq	-112(%rbp), %rcx
	movl	48(%rcx), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-112(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB24_95
# BB#86:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-112(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	g_source_annot_list(%rip), %rax
	cmpq	-112(%rbp), %rax
	jne	.LBB24_88
# BB#87:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-128(%rbp), %rax
	movq	%rax, g_source_annot_list(%rip)
.LBB24_88:                              #   in Loop: Header=BB24_83 Depth=1
	cmpq	$0, -120(%rbp)
	je	.LBB24_90
# BB#89:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-128(%rbp), %rax
	movq	-120(%rbp), %rcx
	movq	%rax, (%rcx)
.LBB24_90:                              #   in Loop: Header=BB24_83 Depth=1
	movq	-112(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB24_92
# BB#91:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB24_92:                              #   in Loop: Header=BB24_83 Depth=1
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB24_94
# BB#93:                                #   in Loop: Header=BB24_83 Depth=1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
.LBB24_94:                              # %PDFSourceAnnot_Dispose.exit
                                        #   in Loop: Header=BB24_83 Depth=1
	movq	-8(%rbp), %rdi
	callq	free
	movq	-128(%rbp), %rax
	movq	%rax, -112(%rbp)
	jmp	.LBB24_83
.LBB24_96:
	movq	-56(%rbp), %rsi
	movl	$.L.str.37, %edi
	callq	fputs
.LBB24_97:
	movq	-56(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	PDFPage_Cleanup, .Lfunc_end24-PDFPage_Cleanup
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_WriteObj,@function
PDFObject_WriteObj:                     # @PDFObject_WriteObj
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -48(%rbp)
	movl	%esi, -52(%rbp)
	movl	%esi, -16(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	movl	-16(%rbp), %eax
	decl	%eax
	shrl	$8, %eax
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	decl	%eax
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB25_1
# BB#2:
	movl	-16(%rbp), %eax
	cmpl	g_next_objnum(%rip), %eax
	setb	%al
	jmp	.LBB25_3
.LBB25_1:
	xorl	%eax, %eax
.LBB25_3:
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB25_6
# BB#4:
	cmpl	$0, -12(%rbp)
	jne	.LBB25_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB25_6
	.align	16, 0x90
.LBB25_10:                              # %Assert.exit1.i
                                        #   in Loop: Header=BB25_6 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	decl	-28(%rbp)
.LBB25_6:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -28(%rbp)
	je	.LBB25_11
# BB#7:                                 #   in Loop: Header=BB25_6 Depth=1
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB25_10
# BB#8:                                 #   in Loop: Header=BB25_6 Depth=1
	cmpl	$0, -12(%rbp)
	jne	.LBB25_10
# BB#9:                                 #   in Loop: Header=BB25_6 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB25_10
.LBB25_11:
	cmpq	$0, -40(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB25_14
# BB#12:
	cmpl	$0, -12(%rbp)
	jne	.LBB25_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB25_14:                              # %Assert.exit2.i
	cmpq	$0, -24(%rbp)
	je	.LBB25_16
# BB#15:
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB25_16:                              # %PDFObject_FindOffsetBlock.exit
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)
	movl	-56(%rbp), %ecx
	cmpl	$0, 8(%rax,%rcx,4)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -24(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB25_19
# BB#17:
	cmpl	$0, -24(%rbp)
	jne	.LBB25_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB25_19:                              # %Assert.exit
	movq	-48(%rbp), %rdi
	callq	ftell
	movl	-56(%rbp), %ecx
	movq	-64(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,4)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %edx
	movl	$.L.str.135, %esi
	xorl	%eax, %eax
	callq	fprintf
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	PDFObject_WriteObj, .Lfunc_end25-PDFObject_WriteObj
	.cfi_endproc

	.align	16, 0x90
	.type	PDFSourceAnnot_Write,@function
PDFSourceAnnot_Write:                   # @PDFSourceAnnot_Write
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
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	testq	%rsi, %rsi
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -12(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB26_3
# BB#1:
	cmpl	$0, -12(%rbp)
	jne	.LBB26_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB26_3:                               # %Assert.exit
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 60(%rax)
	jne	.LBB26_5
# BB#4:
	cmpq	$0, -40(%rbp)
	je	.LBB26_27
.LBB26_5:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB26_7
# BB#6:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	52(%rax), %edx
	movq	8(%rax), %rax
	movq	8(%rax), %rcx
	movl	$.L.str.155, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB26_7:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	48(%rax), %esi
	callq	PDFObject_WriteObj
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	movl	36(%rax), %ecx
	movl	40(%rax), %r8d
	movl	44(%rax), %r9d
	movl	$.L.str.156, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rax
	movl	60(%rax), %eax
	cmpl	$2, %eax
	je	.LBB26_25
# BB#8:
	cmpl	$1, %eax
	jne	.LBB26_9
# BB#24:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movq	24(%rax), %rcx
	movl	$.L.str.167, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB26_26
.LBB26_25:
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	16(%rax), %rdx
	movl	$.L.str.168, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB26_26
.LBB26_9:
	testl	%eax, %eax
	jne	.LBB26_26
# BB#10:
	movq	-24(%rbp), %rdi
	movl	$.L.str.157, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	8(%rcx), %rcx
	movl	16(%rcx), %edx
	movq	%rax, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rax
	movl	56(%rax), %eax
	cmpq	$7, %rax
	jbe	.LBB26_11
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$18, %esi
	movl	$.L.str.166, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB26_23
.LBB26_11:
	jmpq	*.LJTI26_0(,%rax,8)
.LBB26_12:
	movq	-24(%rbp), %rdi
	movl	$.L.str.158, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB26_13:
	movq	-24(%rbp), %rdi
	movl	$.L.str.159, %esi
	jmp	.LBB26_14
.LBB26_15:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %edx
	movl	$.L.str.160, %esi
	jmp	.LBB26_16
.LBB26_17:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movl	$.L.str.161, %esi
	jmp	.LBB26_16
.LBB26_18:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movl	24(%rax), %ecx
	movl	28(%rax), %r8d
	movl	32(%rax), %r9d
	movl	$.L.str.162, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB26_23
.LBB26_19:
	movq	-24(%rbp), %rdi
	movl	$.L.str.163, %esi
.LBB26_14:
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB26_23
.LBB26_20:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	32(%rax), %edx
	movl	$.L.str.164, %esi
	jmp	.LBB26_16
.LBB26_21:
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movl	20(%rax), %edx
	movl	$.L.str.165, %esi
.LBB26_16:
	xorl	%eax, %eax
	callq	fprintf
.LBB26_23:
	movq	-24(%rbp), %rdi
	movl	$.L.str.37, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB26_26:
	movq	-24(%rbp), %rdi
	movl	$.L.str.41, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rax
	movl	$1, 64(%rax)
.LBB26_27:
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	PDFSourceAnnot_Write, .Lfunc_end26-PDFSourceAnnot_Write
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI26_0:
	.quad	.LBB26_12
	.quad	.LBB26_13
	.quad	.LBB26_15
	.quad	.LBB26_17
	.quad	.LBB26_18
	.quad	.LBB26_19
	.quad	.LBB26_20
	.quad	.LBB26_21

	.text
	.globl	PDFFile_Init
	.align	16, 0x90
	.type	PDFFile_Init,@function
PDFFile_Init:                           # @PDFFile_Init
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
.Lfunc_end27:
	.size	PDFFile_Init, .Lfunc_end27-PDFFile_Init
	.cfi_endproc

	.globl	PDFFile_Cleanup
	.align	16, 0x90
	.type	PDFFile_Cleanup,@function
PDFFile_Cleanup:                        # @PDFFile_Cleanup
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$1224, %rsp             # imm = 0x4C8
.Ltmp99:
	.cfi_offset %rbx, -24
	movq	%rdi, -584(%rbp)
	movq	g_source_annot_list(%rip), %rax
	jmp	.LBB28_1
	.align	16, 0x90
.LBB28_11:                              #   in Loop: Header=BB28_1 Depth=1
	movq	-608(%rbp), %rax
	movq	(%rax), %rax
.LBB28_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_6 Depth 2
	movq	%rax, -608(%rbp)
	cmpq	$0, -608(%rbp)
	je	.LBB28_12
# BB#2:                                 #   in Loop: Header=BB28_1 Depth=1
	movq	-608(%rbp), %rax
	cmpq	$0, 8(%rax)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -576(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB28_5
# BB#3:                                 #   in Loop: Header=BB28_1 Depth=1
	cmpl	$0, -16(%rbp)
	jne	.LBB28_5
# BB#4:                                 #   in Loop: Header=BB28_1 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-576(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB28_5:                               # %Assert.exit
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-608(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -576(%rbp)
	movq	g_target_annot_list(%rip), %rax
	jmp	.LBB28_6
	.align	16, 0x90
.LBB28_8:                               #   in Loop: Header=BB28_6 Depth=2
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB28_6:                               #   Parent Loop BB28_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB28_9
# BB#7:                                 #   in Loop: Header=BB28_6 Depth=2
	movq	-576(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB28_8
.LBB28_9:                               # %PDFTargetAnnot_Find.exit
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-16(%rbp), %rax
	movq	%rax, -616(%rbp)
	testq	%rax, %rax
	je	.LBB28_11
# BB#10:                                #   in Loop: Header=BB28_1 Depth=1
	movq	-616(%rbp), %rax
	movq	-608(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-584(%rbp), %rdi
	movq	-608(%rbp), %rsi
	callq	PDFSourceAnnot_Write
	jmp	.LBB28_11
.LBB28_12:
	movq	-584(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	g_page_block_list(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB28_14
# BB#13:
	movq	-16(%rbp), %rdi
	movl	$.L.str.170, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_14:
	movq	-16(%rbp), %rdi
	movl	g_pages_root(%rip), %esi
	callq	PDFObject_WriteObj
	movq	-16(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.171, %edi
	callq	fputs
	movq	-16(%rbp), %rsi
	movl	$.L.str.172, %edi
	callq	fputs
	movl	$0, -20(%rbp)
	jmp	.LBB28_15
	.align	16, 0x90
.LBB28_18:                              #   in Loop: Header=BB28_15 Depth=1
	movq	-16(%rbp), %rsi
	movl	$.L.str.40, %edi
	callq	fputs
	incl	-20(%rbp)
.LBB28_15:                              # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	g_page_count(%rip), %eax
	jae	.LBB28_19
# BB#16:                                #   in Loop: Header=BB28_15 Depth=1
	movl	-20(%rbp), %eax
	andl	$63, %eax
	movl	%eax, -36(%rbp)
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	8(%rdx,%rcx,4), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -48(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$63, -36(%rbp)
	jne	.LBB28_18
# BB#17:                                #   in Loop: Header=BB28_15 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB28_18
.LBB28_19:                              # %PDFFile_WritePagesObject.exit
	movq	-16(%rbp), %rdi
	movl	g_page_count(%rip), %edx
	movl	$.L.str.173, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rdi
	movl	g_doc_h_bound(%rip), %edx
	movl	g_doc_v_bound(%rip), %ecx
	movl	$.L.str.174, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-16(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	cmpl	$0, g_has_exported_targets(%rip)
	je	.LBB28_31
# BB#20:
	movq	g_target_annot_list(%rip), %rax
	movq	%rax, -624(%rbp)
	testq	%rax, %rax
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -576(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB28_23
# BB#21:
	cmpl	$0, -16(%rbp)
	jne	.LBB28_23
# BB#22:
	movq	no_fpos(%rip), %r8
	movq	-576(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB28_23:                              # %Assert.exit1
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB28_25
# BB#24:
	movq	-584(%rbp), %rdi
	movl	$.L.str.44, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_25:
	movq	-584(%rbp), %rax
	movq	%rax, -576(%rbp)
	callq	PDFObject_New
	movl	%eax, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-16(%rbp), %eax
	movl	%eax, -600(%rbp)
	movq	-584(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	jmp	.LBB28_26
	.align	16, 0x90
.LBB28_29:                              #   in Loop: Header=BB28_26 Depth=1
	movq	-624(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -624(%rbp)
.LBB28_26:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, -624(%rbp)
	je	.LBB28_30
# BB#27:                                #   in Loop: Header=BB28_26 Depth=1
	movq	-624(%rbp), %rax
	cmpl	$0, 36(%rax)
	je	.LBB28_29
# BB#28:                                #   in Loop: Header=BB28_26 Depth=1
	movq	-584(%rbp), %rdi
	movq	-624(%rbp), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.46, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rax
	movq	-624(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rdi
	movl	$.L.str.47, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB28_29
.LBB28_30:
	movq	-584(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
.LBB28_31:
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB28_33
# BB#32:
	movq	-584(%rbp), %rdi
	movl	$.L.str.48, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_33:
	movq	-584(%rbp), %rax
	movq	%rax, -576(%rbp)
	callq	PDFObject_New
	movl	%eax, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-16(%rbp), %eax
	movl	%eax, -592(%rbp)
	movq	-584(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-584(%rbp), %rsi
	movl	$.L.str.49, %edi
	callq	fputs
	movq	-584(%rbp), %rsi
	movl	$.L.str.50, %edi
	callq	fputs
	movq	-584(%rbp), %rax
	movl	g_pages_root(%rip), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
	cmpl	$0, g_has_exported_targets(%rip)
	je	.LBB28_35
# BB#34:
	movq	-584(%rbp), %rsi
	movl	$.L.str.51, %edi
	callq	fputs
	movq	-584(%rbp), %rax
	movl	-600(%rbp), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rsi
	movl	$.L.str.29, %edi
	callq	fputs
.LBB28_35:
	movq	-584(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB28_37
# BB#36:
	movq	-584(%rbp), %rdi
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_37:
	movq	-584(%rbp), %rax
	movq	%rax, -576(%rbp)
	callq	PDFObject_New
	movl	%eax, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	%eax, %esi
	callq	PDFObject_WriteObj
	movl	-16(%rbp), %eax
	movl	%eax, -596(%rbp)
	movq	-584(%rbp), %rsi
	movl	$.L.str.45, %edi
	callq	fputs
	movq	-584(%rbp), %rdi
	movl	$.L.str.53, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rdi
	movl	$.L.str.55, %esi
	movl	$.L.str.54, %edx
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	time
	movq	%rax, -632(%rbp)
	leaq	-632(%rbp), %rdi
	callq	localtime
	movq	%rax, -640(%rbp)
	movq	-584(%rbp), %rdi
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
	je	.LBB28_39
# BB#38:
	movq	-584(%rbp), %rdi
	movq	g_doc_author(%rip), %rdx
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_39:
	cmpq	$0, g_doc_title(%rip)
	je	.LBB28_41
# BB#40:
	movq	-584(%rbp), %rdi
	movq	g_doc_title(%rip), %rdx
	movl	$.L.str.58, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_41:
	cmpq	$0, g_doc_subject(%rip)
	je	.LBB28_43
# BB#42:
	movq	-584(%rbp), %rdi
	movq	g_doc_subject(%rip), %rdx
	movl	$.L.str.59, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_43:
	cmpq	$0, g_doc_keywords(%rip)
	je	.LBB28_45
# BB#44:
	movq	-584(%rbp), %rdi
	movq	g_doc_keywords(%rip), %rdx
	movl	$.L.str.60, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_45:
	movq	-584(%rbp), %rsi
	movl	$.L.str.41, %edi
	callq	fputs
	movq	-584(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -48(%rbp)
	cmpl	$0, g_PDF_debug(%rip)
	je	.LBB28_47
# BB#46:
	movq	-32(%rbp), %rdi
	movl	$.L.str.175, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB28_47:
	movq	-32(%rbp), %rdi
	callq	ftell
	movl	%eax, -40(%rbp)
	movq	-32(%rbp), %rsi
	movl	$.L.str.176, %edi
	callq	fputs
	movq	-32(%rbp), %rdi
	movl	g_next_objnum(%rip), %edx
	movl	$.L.str.177, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-32(%rbp), %rsi
	movl	$.L.str.178, %edi
	callq	fputs
	movb	$1, %al
	cmpl	$1, g_next_objnum(%rip)
	je	.LBB28_49
# BB#48:
	cmpq	$0, -48(%rbp)
	setne	%al
.LBB28_49:
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -20(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.LBB28_52
# BB#50:
	cmpl	$0, -20(%rbp)
	jne	.LBB28_52
# BB#51:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB28_52:                              # %Assert.exit.i
	movl	$1, -36(%rbp)
	leaq	-576(%rbp), %rbx
	jmp	.LBB28_53
	.align	16, 0x90
.LBB28_58:                              #   in Loop: Header=BB28_53 Depth=1
	incl	-36(%rbp)
.LBB28_53:                              # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	g_next_objnum(%rip), %eax
	jae	.LBB28_59
# BB#54:                                #   in Loop: Header=BB28_53 Depth=1
	movl	-36(%rbp), %eax
	leal	-1(%rax), %ecx
	sarl	$31, %ecx
	shrl	$24, %ecx
	leal	-1(%rax,%rcx), %ecx
	andl	$-256, %ecx
	negl	%ecx
	leal	-1(%rax,%rcx), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rdi
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	movl	8(%rcx,%rax,4), %edx
	movl	$.L.str.179, %esi
	xorl	%eax, %eax
	callq	fprintf
	movslq	-52(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpl	$0, 8(%rcx,%rax,4)
	jne	.LBB28_56
# BB#55:                                #   in Loop: Header=BB28_53 Depth=1
	movl	$.L.str.180, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	leaq	-576(%rbp,%rax), %rdi
	movl	-36(%rbp), %edx
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
.LBB28_56:                              #   in Loop: Header=BB28_53 Depth=1
	cmpl	$255, -52(%rbp)
	jne	.LBB28_58
# BB#57:                                #   in Loop: Header=BB28_53 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB28_58
.LBB28_59:                              # %PDFFile_WriteXREF.exit
	movl	-40(%rbp), %eax
	movl	%eax, -588(%rbp)
	movq	-584(%rbp), %rsi
	movl	$.L.str.61, %edi
	callq	fputs
	movq	-584(%rbp), %rdi
	movl	g_next_objnum(%rip), %edx
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rsi
	movl	$.L.str.63, %edi
	callq	fputs
	movq	-584(%rbp), %rax
	movl	-592(%rbp), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rsi
	movl	$.L.str.64, %edi
	callq	fputs
	movq	-584(%rbp), %rax
	movl	-596(%rbp), %edx
	movq	%rax, -576(%rbp)
	movl	%edx, -16(%rbp)
	movq	-576(%rbp), %rdi
	movl	$.L.str.169, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rdi
	movl	-588(%rbp), %edx
	movl	$.L.str.65, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	-584(%rbp), %rsi
	movl	$.L.str.66, %edi
	callq	fputs
	jmp	.LBB28_60
	.align	16, 0x90
.LBB28_61:                              #   in Loop: Header=BB28_60 Depth=1
	movq	g_obj_offset_list(%rip), %rax
	movq	%rax, -648(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_obj_offset_list(%rip)
	movq	-648(%rbp), %rdi
	callq	free
.LBB28_60:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_obj_offset_list(%rip)
	jne	.LBB28_61
	jmp	.LBB28_62
	.align	16, 0x90
.LBB28_63:                              #   in Loop: Header=BB28_62 Depth=1
	movq	g_font_encoding_list(%rip), %rax
	movq	%rax, -656(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_font_encoding_list(%rip)
	movq	-656(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	-656(%rbp), %rdi
	callq	free
.LBB28_62:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_font_encoding_list(%rip)
	jne	.LBB28_63
	jmp	.LBB28_64
	.align	16, 0x90
.LBB28_65:                              #   in Loop: Header=BB28_64 Depth=1
	movq	g_font_list(%rip), %rax
	movq	%rax, -664(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_font_list(%rip)
	movq	-664(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-664(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
	movq	-664(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
	movq	-664(%rbp), %rdi
	callq	free
.LBB28_64:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_font_list(%rip)
	jne	.LBB28_65
	jmp	.LBB28_67
	.align	16, 0x90
.LBB28_66:                              #   in Loop: Header=BB28_67 Depth=1
	movq	g_page_block_list(%rip), %rax
	movq	%rax, -672(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_page_block_list(%rip)
	movq	-672(%rbp), %rdi
	callq	free
.LBB28_67:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_page_block_list(%rip)
	jne	.LBB28_66
# BB#68:
	leaq	-1200(%rbp), %rbx
	jmp	.LBB28_69
	.align	16, 0x90
.LBB28_76:                              # %PDFSourceAnnot_Dispose.exit
                                        #   in Loop: Header=BB28_69 Depth=1
	movq	-576(%rbp), %rdi
	callq	free
	movq	-16(%rbp), %rax
	movq	%rax, g_source_annot_list(%rip)
.LBB28_69:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_source_annot_list(%rip)
	je	.LBB28_77
# BB#70:                                #   in Loop: Header=BB28_69 Depth=1
	movq	g_source_annot_list(%rip), %rax
	movq	%rax, -680(%rbp)
	cmpq	$0, 8(%rax)
	jne	.LBB28_72
# BB#71:                                #   in Loop: Header=BB28_69 Depth=1
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcpy
	movq	-680(%rbp), %rax
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
.LBB28_72:                              #   in Loop: Header=BB28_69 Depth=1
	movq	-680(%rbp), %rax
	movq	%rax, -576(%rbp)
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-576(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB28_74
# BB#73:                                #   in Loop: Header=BB28_69 Depth=1
	movq	-576(%rbp), %rax
	movq	16(%rax), %rdi
	callq	free
.LBB28_74:                              #   in Loop: Header=BB28_69 Depth=1
	movq	-576(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB28_76
# BB#75:                                #   in Loop: Header=BB28_69 Depth=1
	movq	-576(%rbp), %rax
	movq	24(%rax), %rdi
	callq	free
	jmp	.LBB28_76
	.align	16, 0x90
.LBB28_78:                              #   in Loop: Header=BB28_77 Depth=1
	movq	g_target_annot_list(%rip), %rax
	movq	%rax, -1208(%rbp)
	movq	(%rax), %rax
	movq	%rax, g_target_annot_list(%rip)
	movq	-1208(%rbp), %rax
	movq	8(%rax), %rdi
	callq	free
	movq	-1208(%rbp), %rdi
	callq	free
.LBB28_77:                              # =>This Inner Loop Header: Depth=1
	cmpq	$0, g_target_annot_list(%rip)
	jne	.LBB28_78
# BB#79:
	addq	$1224, %rsp             # imm = 0x4C8
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	PDFFile_Cleanup, .Lfunc_end28-PDFFile_Cleanup
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI29_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI29_1:
	.quad	4640537203540230144     # double 180
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI29_2:
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
.Ltmp100:
	.cfi_def_cfa_offset 16
.Ltmp101:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp102:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp103:
	.cfi_offset %rbx, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB29_1
	.align	16, 0x90
.LBB29_2:                               #   in Loop: Header=BB29_1 Depth=1
	incq	-56(%rbp)
.LBB29_1:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB29_2
	jmp	.LBB29_3
	.align	16, 0x90
.LBB29_4:                               #   in Loop: Header=BB29_3 Depth=1
	incq	-56(%rbp)
.LBB29_3:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$95, %eax
	je	.LBB29_4
	jmp	.LBB29_5
	.align	16, 0x90
.LBB29_6:                               #   in Loop: Header=BB29_5 Depth=1
	incq	-56(%rbp)
.LBB29_5:                               # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	je	.LBB29_6
# BB#7:
	movq	-56(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$8, %ah
	jne	.LBB29_9
# BB#8:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	jne	.LBB29_20
.LBB29_9:
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	$.L.str.85, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB29_10
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$21, %esi
	movl	$.L.str.86, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB29_19
	.align	16, 0x90
.LBB29_11:                              #   in Loop: Header=BB29_10 Depth=1
	incq	-16(%rbp)
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB29_11
# BB#12:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB29_14
# BB#13:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$43, %eax
	jne	.LBB29_15
	jmp	.LBB29_14
.LBB29_20:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB29_22
# BB#21:
	movq	-56(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -56(%rbp)
	leaq	-60(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -56(%rbp)
	movss	-60(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	xorps	.LCPI29_2(%rip), %xmm0
	jmp	.LBB29_54
.LBB29_22:
	movq	-56(%rbp), %rdx
	movl	$7, %edi
	movl	$g_arithmetic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB29_57
# BB#23:
	movslq	-44(%rbp), %rax
	movq	g_arithmetic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -56(%rbp)
	jmp	.LBB29_24
	.align	16, 0x90
.LBB29_25:                              #   in Loop: Header=BB29_24 Depth=1
	incq	-56(%rbp)
.LBB29_24:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	movsbq	(%rax), %rbx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %eax
	testb	$32, %ah
	jne	.LBB29_25
# BB#26:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$40, %eax
	je	.LBB29_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$30, %esi
	movl	$.L.str.81, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB29_28:
	movq	-56(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -56(%rbp)
	leaq	-64(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -56(%rbp)
	cmpl	$4, -44(%rbp)
	jl	.LBB29_30
# BB#29:
	cmpl	$6, -44(%rbp)
	jne	.LBB29_41
.LBB29_30:
	cmpl	$6, -44(%rbp)
	jne	.LBB29_34
# BB#31:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -24(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB29_35
# BB#32:
	cmpl	$0, -24(%rbp)
	jne	.LBB29_35
# BB#33:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB29_35
.LBB29_57:
	movq	-56(%rbp), %rdx
	movl	$4, %edi
	movl	$g_graphic_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB29_59
# BB#58:
	movslq	-44(%rbp), %rax
	movq	g_graphic_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -56(%rbp)
	movslq	-44(%rbp), %rax
	cvtsi2ssl	g_graphics_vars(,%rax,4), %xmm0
	jmp	.LBB29_54
.LBB29_59:
	movq	-56(%rbp), %rdx
	movl	$7, %edi
	movl	$g_unit_keywords, %esi
	callq	PDFKeyword_Find
	movl	%eax, -44(%rbp)
	testl	%eax, %eax
	js	.LBB29_61
# BB#60:
	movslq	-44(%rbp), %rax
	movq	g_unit_keywords(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -56(%rbp)
	movslq	-44(%rbp), %rax
	cvtsi2ssl	g_units(,%rax,4), %xmm0
	jmp	.LBB29_54
.LBB29_34:
	movl	$1, -72(%rbp)
.LBB29_35:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$44, %eax
	je	.LBB29_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$31, %esi
	movl	$.L.str.82, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	.align	16, 0x90
.LBB29_37:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rdi
	incq	%rdi
	movq	%rdi, -56(%rbp)
	leaq	-68(%rbp), %rsi
	callq	PDFPage_EvalExpr
	movq	%rax, -56(%rbp)
	cmpl	$1, -72(%rbp)
	je	.LBB29_40
# BB#38:                                #   in Loop: Header=BB29_37 Depth=1
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$44, %eax
	jne	.LBB29_40
# BB#39:                                #   in Loop: Header=BB29_37 Depth=1
	incq	-56(%rbp)
.LBB29_40:                              #   in Loop: Header=BB29_37 Depth=1
	decl	-72(%rbp)
	jne	.LBB29_37
.LBB29_41:
	movq	-56(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$41, %eax
	je	.LBB29_43
# BB#42:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$32, %esi
	movl	$.L.str.83, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB29_43:
	incq	-56(%rbp)
	movl	-44(%rbp), %eax
	cmpq	$6, %rax
	ja	.LBB29_62
# BB#44:
	jmpq	*.LJTI29_0(,%rax,8)
.LBB29_45:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	addss	-68(%rbp), %xmm0
	jmp	.LBB29_54
.LBB29_61:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$33, %esi
	movl	$.L.str.84, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB29_62
.LBB29_46:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	subss	-68(%rbp), %xmm0
	jmp	.LBB29_54
.LBB29_47:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	mulss	-68(%rbp), %xmm0
	jmp	.LBB29_54
.LBB29_48:
	xorps	%xmm0, %xmm0
	cmpneqss	-68(%rbp), %xmm0
	movd	%xmm0, %eax
	andl	$1, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -24(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -24(%rbp)
	jne	.LBB29_51
# BB#49:
	cmpl	$0, -24(%rbp)
	jne	.LBB29_51
# BB#50:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB29_51:                              # %Assert.exit1
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	divss	-68(%rbp), %xmm0
	jmp	.LBB29_54
.LBB29_52:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI29_0(%rip), %xmm0
	divsd	.LCPI29_1(%rip), %xmm0
	callq	sin
	jmp	.LBB29_53
.LBB29_55:
	movss	-64(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	mulsd	.LCPI29_0(%rip), %xmm0
	divsd	.LCPI29_1(%rip), %xmm0
	callq	cos
.LBB29_53:
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB29_54
.LBB29_56:
	movss	-68(%rbp), %xmm0        # xmm0 = mem[0],zero,zero,zero
.LBB29_54:
	movq	-40(%rbp), %rax
	movss	%xmm0, (%rax)
	jmp	.LBB29_62
.LBB29_14:
	incq	-16(%rbp)
.LBB29_15:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %ebx
	callq	__ctype_b_loc
	movq	(%rax), %rax
	movzwl	(%rax,%rbx,2), %ecx
	movb	$1, %al
	testb	$8, %ch
	jne	.LBB29_17
# BB#16:
	movq	-16(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$46, %eax
	sete	%al
.LBB29_17:
	testb	%al, %al
	jne	.LBB29_14
.LBB29_19:                              # %PDFPage_GetFloat.exit
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB29_62:
	movq	-56(%rbp), %rax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	PDFPage_EvalExpr, .Lfunc_end29-PDFPage_EvalExpr
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI29_0:
	.quad	.LBB29_45
	.quad	.LBB29_46
	.quad	.LBB29_47
	.quad	.LBB29_48
	.quad	.LBB29_52
	.quad	.LBB29_55
	.quad	.LBB29_56

	.text
	.align	16, 0x90
	.type	PDFSourceAnnot_New,@function
PDFSourceAnnot_New:                     # @PDFSourceAnnot_New
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp104:
	.cfi_def_cfa_offset 16
.Ltmp105:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp106:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movl	24(%rbp), %r10d
	movl	16(%rbp), %eax
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	movl	%ecx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movl	%r9d, -48(%rbp)
	movl	%eax, -52(%rbp)
	movl	%r10d, -56(%rbp)
	movq	$0, -64(%rbp)
	movl	$72, %edi
	callq	malloc
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB30_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$19, %esi
	movl	$.L.str.106, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB30_2:
	movl	-40(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 32(%rcx)
	movl	-44(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movl	-48(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 40(%rcx)
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 44(%rcx)
	callq	PDFObject_New
	movq	-72(%rbp), %rcx
	movl	%eax, 48(%rcx)
	movl	g_page_object_num(%rip), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 52(%rcx)
	movl	-20(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 60(%rcx)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB30_4
# BB#3:
	cmpl	$8, -56(%rbp)
	setb	%al
.LBB30_4:
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -16(%rbp)
	movq	%rcx, -8(%rbp)
	cmpl	$0, -16(%rbp)
	jne	.LBB30_7
# BB#5:
	cmpl	$0, -16(%rbp)
	jne	.LBB30_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movq	-8(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB30_7:                               # %Assert.exit
	movl	-56(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, 56(%rcx)
	movq	-72(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-72(%rbp), %rax
	movl	$0, 64(%rax)
	cmpl	$0, -20(%rbp)
	jne	.LBB30_13
# BB#8:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	g_target_annot_list(%rip), %rax
	jmp	.LBB30_9
	.align	16, 0x90
.LBB30_11:                              #   in Loop: Header=BB30_9 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
.LBB30_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB30_12
# BB#10:                                #   in Loop: Header=BB30_9 Depth=1
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	8(%rax), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB30_11
.LBB30_12:                              # %PDFTargetAnnot_Find.exit
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
.LBB30_13:
	cmpq	$0, -64(%rbp)
	je	.LBB30_15
# BB#14:
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-72(%rbp), %rax
	movq	$0, 16(%rax)
	jmp	.LBB30_18
.LBB30_15:
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
	movl	-36(%rbp), %edi
	incl	%edi
	callq	malloc
	movq	-72(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-72(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB30_17
# BB#16:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$20, %esi
	movl	$.L.str.106, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB30_17:
	movq	-72(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rsi
	movl	-36(%rbp), %edx
	callq	memcpy
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movq	16(%rcx), %rcx
	movb	$0, (%rcx,%rax)
.LBB30_18:
	movq	g_source_annot_list(%rip), %rax
	movq	-72(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-72(%rbp), %rax
	movq	%rax, g_source_annot_list(%rip)
	movq	-72(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	PDFSourceAnnot_New, .Lfunc_end30-PDFSourceAnnot_New
	.cfi_endproc

	.align	16, 0x90
	.type	PDFObject_New,@function
PDFObject_New:                          # @PDFObject_New
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp107:
	.cfi_def_cfa_offset 16
.Ltmp108:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp109:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	g_next_objnum(%rip), %eax
	decl	%eax
	shrl	$8, %eax
	movl	%eax, -20(%rbp)
	movl	g_next_objnum(%rip), %eax
	decl	%eax
	movzbl	%al, %eax
	movl	%eax, -24(%rbp)
	movq	g_cur_obj_offset_block(%rip), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -24(%rbp)
	je	.LBB31_1
# BB#13:
	cmpq	$0, -32(%rbp)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB31_16
# BB#14:
	cmpl	$0, -4(%rbp)
	jne	.LBB31_16
# BB#15:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB31_16
.LBB31_1:
	movl	$1032, %edi             # imm = 0x408
	callq	malloc
	movq	%rax, -32(%rbp)
	testq	%rax, %rax
	jne	.LBB31_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$48, %edi
	movl	$1, %esi
	movl	$.L.str.133, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB31_3:
	cmpl	$0, -20(%rbp)
	je	.LBB31_4
# BB#8:
	cmpq	$0, g_cur_obj_offset_block(%rip)
	setne	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB31_11
# BB#9:
	cmpl	$0, -4(%rbp)
	jne	.LBB31_11
# BB#10:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB31_11:                              # %Assert.exit1
	movq	-32(%rbp), %rax
	movq	g_cur_obj_offset_block(%rip), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB31_12
.LBB31_4:
	cmpq	$0, g_obj_offset_list(%rip)
	sete	%al
	movzbl	%al, %eax
	movq	no_fpos(%rip), %rcx
	movl	%eax, -4(%rbp)
	movq	%rcx, -16(%rbp)
	cmpl	$0, -4(%rbp)
	jne	.LBB31_7
# BB#5:
	cmpl	$0, -4(%rbp)
	jne	.LBB31_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.75, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB31_7:                               # %Assert.exit
	movq	-32(%rbp), %rax
	movq	%rax, g_obj_offset_list(%rip)
.LBB31_12:
	movq	-32(%rbp), %rax
	movq	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	%rax, g_cur_obj_offset_block(%rip)
.LBB31_16:
	movslq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	$0, 8(%rcx,%rax,4)
	movl	g_next_objnum(%rip), %eax
	leal	1(%rax), %ecx
	movl	%ecx, g_next_objnum(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	PDFObject_New, .Lfunc_end31-PDFObject_New
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
