	.text
	.file	"z41.dce"
	.globl	ReadFromFile
	.align	16, 0x90
	.type	ReadFromFile,@function
ReadFromFile:                           # @ReadFromFile
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
	subq	$48, %rsp
	movl	%edx, %eax
	movw	%di, -2(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %esi
	movzwl	-2(%rbp), %edi
	movl	$3, %edx
	xorl	%r8d, %r8d
	movl	%eax, %ecx
	callq	LexPush
	callq	LexGetToken
	movq	%rax, -32(%rbp)
	movzbl	32(%rax), %eax
	cmpl	$102, %eax
	je	.LBB0_2
# BB#1:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$41, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_2:
	movq	StartSym(%rip), %rsi
	leaq	-32(%rbp), %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	Parse
	movq	%rax, -40(%rbp)
	cmpq	$0, -32(%rbp)
	jne	.LBB0_4
# BB#3:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_5
.LBB0_4:
	movq	-40(%rbp), %r8
	addq	$32, %r8
	movl	$41, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_5:
	callq	LexPop
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ReadFromFile, .Lfunc_end0-ReadFromFile
	.cfi_endproc

	.globl	AppendToFile
	.align	16, 0x90
	.type	AppendToFile,@function
AppendToFile:                           # @AppendToFile
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
	pushq	%rbx
	subq	$584, %rsp              # imm = 0x248
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movw	%si, -18(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movzwl	last_write_fnum(%rip), %eax
	movzwl	-18(%rbp), %ecx
	cmpl	%ecx, %eax
	je	.LBB1_8
# BB#1:
	cmpw	$0, last_write_fnum(%rip)
	je	.LBB1_3
# BB#2:
	movq	last_write_fp(%rip), %rdi
	callq	fclose
.LBB1_3:
	movzwl	-18(%rbp), %edi
	callq	FileName
	movq	%rax, -568(%rbp)
	movq	%rax, %rdi
	callq	strlen
	incq	%rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB1_5
# BB#4:
	movzwl	-18(%rbp), %edi
	callq	PosOfFile
	movq	%rax, %r8
	movq	-568(%rbp), %r9
	movq	$.L.str.3, (%rsp)
	movl	$41, %edi
	movl	$3, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-568(%rbp), %rsi
	leaq	-560(%rbp), %rbx
	movq	%rbx, %rdi
	callq	strcpy
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcat
	movzwl	-18(%rbp), %edi
	callq	FileTestUpdated
	testl	%eax, %eax
	movl	$.L.str.4, %eax
	movl	$.L.str.5, %esi
	cmovneq	%rax, %rsi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, last_write_fp(%rip)
	testq	%rax, %rax
	jne	.LBB1_7
# BB#6:
	movq	no_fpos(%rip), %r8
	leaq	-560(%rbp), %r9
	movl	$41, %edi
	movl	$4, %esi
	movl	$.L.str.6, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_7:
	movw	-18(%rbp), %ax
	movw	%ax, last_write_fnum(%rip)
	movq	last_write_fp(%rip), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek
.LBB1_8:
	movq	last_write_fp(%rip), %rdi
	callq	ftell
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movzwl	-18(%rbp), %edi
	callq	FileGetLineCount
	movl	%eax, -572(%rbp)
	incl	%eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rdi
	movzwl	-18(%rbp), %ecx
	leaq	-572(%rbp), %rdx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movl	-572(%rbp), %esi
	addl	$2, %esi
	movzwl	-18(%rbp), %edi
	callq	FileSetUpdated
	addq	$584, %rsp              # imm = 0x248
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	AppendToFile, .Lfunc_end1-AppendToFile
	.cfi_endproc

	.align	16, 0x90
	.type	WriteObject,@function
WriteObject:                            # @WriteObject
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$224, %rsp
.Ltmp10:
	.cfi_offset %rbx, -32
.Ltmp11:
	.cfi_offset %r14, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	movq	%rdx, -120(%rbp)
	movw	%cx, -122(%rbp)
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	addl	$-2, %eax
	cmpl	$97, %eax
	ja	.LBB2_290
# BB#1:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_169:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_170
.LBB2_290:
	movq	no_fpos(%rip), %rbx
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.104, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.105, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_291
	.align	16, 0x90
.LBB2_171:                              #   in Loop: Header=BB2_170 Depth=1
	movq	-144(%rbp), %rax
.LBB2_170:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_171
# BB#172:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_174
# BB#173:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_174:
	cmpl	$100, -108(%rbp)
	jl	.LBB2_176
# BB#175:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
.LBB2_176:
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	testb	$1, 43(%rax)
	je	.LBB2_178
# BB#177:
	xorl	%eax, %eax
	jmp	.LBB2_181
.LBB2_271:
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$53, %eax
	movl	$.L.str.98, %eax
	movl	$.L.str.99, %edi
	cmoveq	%rax, %rdi
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.100, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_272
	.align	16, 0x90
.LBB2_273:                              #   in Loop: Header=BB2_272 Depth=1
	movq	-144(%rbp), %rax
.LBB2_272:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_273
# BB#274:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	jne	.LBB2_277
# BB#275:
	movq	-144(%rbp), %rdi
	addq	$64, %rdi
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	jmp	.LBB2_276
.LBB2_82:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	$0, -176(%rbp)
	movq	-104(%rbp), %rax
	cmpq	%rax, (%rax)
	je	.LBB2_88
# BB#83:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_84
.LBB2_85:                               #   in Loop: Header=BB2_84 Depth=1
	movq	-144(%rbp), %rax
.LBB2_84:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_85
# BB#86:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	jne	.LBB2_88
# BB#87:
	movq	-144(%rbp), %rax
	movq	%rax, -176(%rbp)
.LBB2_88:
	movb	$1, %al
	cmpq	$0, -176(%rbp)
	jne	.LBB2_93
# BB#89:
	movq	-168(%rbp), %rcx
	movzbl	40(%rcx), %ecx
	cmpl	-108(%rbp), %ecx
	jg	.LBB2_92
# BB#90:
	movq	-168(%rbp), %rcx
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %ecx
	shll	$16, %ecx
	orl	%edx, %ecx
	btl	$2, %ecx
	jb	.LBB2_93
# BB#91:
	movq	-168(%rbp), %rcx
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %ecx
	shll	$16, %ecx
	orl	%edx, %ecx
	btl	$3, %ecx
	jb	.LBB2_93
.LBB2_92:
	cmpl	$102, -108(%rbp)
	setg	%al
.LBB2_93:
	movzbl	%al, %eax
	movl	%eax, -208(%rbp)
	cmpq	$0, -176(%rbp)
	je	.LBB2_95
# BB#94:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.25, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
	movq	-176(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
.LBB2_95:
	cmpl	$0, -208(%rbp)
	je	.LBB2_97
# BB#96:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
.LBB2_97:
	movq	-104(%rbp), %rax
	movq	-120(%rbp), %rcx
	movw	-122(%rbp), %dx
	movq	-176(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movw	%dx, -42(%rbp)
	movq	%rsi, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -88(%rbp)
	cmpq	$0, 112(%rax)
	je	.LBB2_99
# BB#98:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.106, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	jmp	.LBB2_168
.LBB2_188:
	movq	$.L.str.31, -184(%rbp)
	jmp	.LBB2_255
.LBB2_187:
	movq	$.L.str.30, -184(%rbp)
	jmp	.LBB2_255
.LBB2_2:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	testq	%rax, %rax
	jne	.LBB2_5
# BB#3:
	cmpl	$8, -108(%rbp)
	jl	.LBB2_5
# BB#4:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	jmp	.LBB2_56
.LBB2_7:
	movq	-104(%rbp), %rdi
	callq	StringQuotedWord
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	jmp	.LBB2_291
.LBB2_10:
	movl	$7, -196(%rbp)
	jmp	.LBB2_11
.LBB2_9:
	movl	$6, -196(%rbp)
	jmp	.LBB2_11
.LBB2_8:
	movl	$5, -196(%rbp)
.LBB2_11:
	movl	-196(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB2_13
# BB#12:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
.LBB2_13:
	movl	-196(%rbp), %eax
	movl	%eax, -204(%rbp)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movl	$103, %ebx
	jmp	.LBB2_14
	.align	16, 0x90
.LBB2_54:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
.LBB2_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_16 Depth 2
                                        #     Child Loop BB2_43 Depth 2
                                        #     Child Loop BB2_30 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_26 Depth 2
	movq	-136(%rbp), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_55
# BB#15:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-136(%rbp), %rax
	jmp	.LBB2_16
	.align	16, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_16 Depth=2
	movq	-144(%rbp), %rax
.LBB2_16:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_17
# BB#18:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_40
# BB#19:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_20
# BB#29:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_30
	.align	16, 0x90
.LBB2_31:                               #   in Loop: Header=BB2_30 Depth=2
	movq	-160(%rbp), %rax
.LBB2_30:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_31
# BB#32:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_34
# BB#33:                                #   in Loop: Header=BB2_14 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_40:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB2_52
# BB#41:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-104(%rbp), %rax
	je	.LBB2_48
# BB#42:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-136(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_43
	.align	16, 0x90
.LBB2_44:                               #   in Loop: Header=BB2_43 Depth=2
	movq	-216(%rbp), %rax
.LBB2_43:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_44
# BB#45:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-216(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_47
# BB#46:                                #   in Loop: Header=BB2_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.16, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_47:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-216(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	movl	$7, %eax
	cmovel	%ebx, %eax
	jmp	.LBB2_49
.LBB2_52:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rdi
	movl	-196(%rbp), %esi
	jmp	.LBB2_53
.LBB2_20:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB2_22
# BB#21:                                #   in Loop: Header=BB2_14 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_22:                               #   in Loop: Header=BB2_14 Depth=1
	movl	$1, -200(%rbp)
	jmp	.LBB2_23
	.align	16, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_23 Depth=2
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	incl	-200(%rbp)
.LBB2_23:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	movzbl	42(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.LBB2_24
# BB#25:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rax
	movzbl	42(%rax), %eax
	movq	-120(%rbp), %rcx
	addl	%eax, (%rcx)
	movl	$1, -200(%rbp)
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_26 Depth=2
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	incl	-200(%rbp)
.LBB2_26:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-144(%rbp), %rax
	movzbl	41(%rax), %eax
	cmpl	%eax, -200(%rbp)
	jle	.LBB2_27
# BB#28:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-144(%rbp), %rax
	movzbl	42(%rax), %ecx
	movzbl	41(%rax), %eax
	addl	%ecx, %eax
	movl	$7, %eax
	cmovel	%ebx, %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB2_54
.LBB2_34:                               #   in Loop: Header=BB2_14 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
.LBB2_35:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %edi
	movq	-144(%rbp), %rax
	movzwl	44(%rax), %edx
	movl	%edx, %esi
	shrl	$8, %esi
	andl	$1, %esi
	shrl	$9, %edx
	andl	$1, %edx
	callq	EchoCatOp
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_37
# BB#36:                                #   in Loop: Header=BB2_14 Depth=1
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_38
.LBB2_37:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-160(%rbp), %rdi
	addq	$64, %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB2_39
.LBB2_38:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-160(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	movl	$105, %esi
	callq	WriteObject
.LBB2_39:                               #   in Loop: Header=BB2_14 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movl	-196(%rbp), %eax
	movl	%eax, -204(%rbp)
	jmp	.LBB2_54
.LBB2_48:                               #   in Loop: Header=BB2_14 Depth=1
	movl	-196(%rbp), %eax
.LBB2_49:                               #   in Loop: Header=BB2_14 Depth=1
	movl	%eax, -220(%rbp)
	movq	-144(%rbp), %rdi
	movl	-204(%rbp), %eax
	cmpl	-220(%rbp), %eax
	jge	.LBB2_51
# BB#50:                                #   in Loop: Header=BB2_14 Depth=1
	movl	-220(%rbp), %esi
	jmp	.LBB2_53
.LBB2_51:                               #   in Loop: Header=BB2_14 Depth=1
	movl	-204(%rbp), %esi
.LBB2_53:                               #   in Loop: Header=BB2_14 Depth=1
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	callq	WriteObject
	jmp	.LBB2_54
.LBB2_55:
	movl	-196(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jge	.LBB2_291
	jmp	.LBB2_56
.LBB2_189:
	movq	$.L.str.32, -184(%rbp)
	jmp	.LBB2_255
.LBB2_190:
	movq	$.L.str.33, -184(%rbp)
	jmp	.LBB2_255
.LBB2_191:
	movq	$.L.str.34, -184(%rbp)
	jmp	.LBB2_255
.LBB2_192:
	movq	$.L.str.35, -184(%rbp)
	jmp	.LBB2_255
.LBB2_193:
	movq	$.L.str.36, -184(%rbp)
	jmp	.LBB2_255
.LBB2_194:
	movq	$.L.str.37, -184(%rbp)
	jmp	.LBB2_255
.LBB2_195:
	movq	$.L.str.38, -184(%rbp)
	jmp	.LBB2_255
.LBB2_196:
	movq	$.L.str.39, -184(%rbp)
	jmp	.LBB2_255
.LBB2_197:
	movq	$.L.str.40, -184(%rbp)
	jmp	.LBB2_255
.LBB2_198:
	movq	$.L.str.41, -184(%rbp)
	jmp	.LBB2_255
.LBB2_199:
	movq	$.L.str.42, -184(%rbp)
	jmp	.LBB2_255
.LBB2_200:
	movq	$.L.str.43, -184(%rbp)
	jmp	.LBB2_255
.LBB2_201:
	movq	$.L.str.44, -184(%rbp)
	jmp	.LBB2_255
.LBB2_202:
	movq	$.L.str.45, -184(%rbp)
	jmp	.LBB2_255
.LBB2_203:
	movq	$.L.str.46, -184(%rbp)
	jmp	.LBB2_255
.LBB2_204:
	movq	$.L.str.47, -184(%rbp)
	jmp	.LBB2_255
.LBB2_205:
	movq	$.L.str.48, -184(%rbp)
	jmp	.LBB2_255
.LBB2_206:
	movq	$.L.str.49, -184(%rbp)
	jmp	.LBB2_255
.LBB2_207:
	movq	$.L.str.50, -184(%rbp)
	jmp	.LBB2_255
.LBB2_208:
	movq	$.L.str.51, -184(%rbp)
	jmp	.LBB2_255
.LBB2_209:
	movq	$.L.str.52, -184(%rbp)
	jmp	.LBB2_255
.LBB2_210:
	movq	$.L.str.53, -184(%rbp)
	jmp	.LBB2_255
.LBB2_212:
	movq	$.L.str.55, -184(%rbp)
	jmp	.LBB2_255
.LBB2_213:
	movq	$.L.str.56, -184(%rbp)
	jmp	.LBB2_255
.LBB2_211:
	movq	$.L.str.54, -184(%rbp)
	jmp	.LBB2_255
.LBB2_214:
	movq	$.L.str.57, -184(%rbp)
	jmp	.LBB2_255
.LBB2_215:
	movq	$.L.str.58, -184(%rbp)
	jmp	.LBB2_255
.LBB2_216:
	movq	$.L.str.59, -184(%rbp)
	jmp	.LBB2_255
.LBB2_217:
	movq	$.L.str.60, -184(%rbp)
	jmp	.LBB2_255
.LBB2_218:
	movq	$.L.str.61, -184(%rbp)
	jmp	.LBB2_255
.LBB2_219:
	movq	$.L.str.62, -184(%rbp)
	jmp	.LBB2_255
.LBB2_220:
	movq	$.L.str.63, -184(%rbp)
	jmp	.LBB2_255
.LBB2_221:
	movq	$.L.str.64, -184(%rbp)
	jmp	.LBB2_255
.LBB2_222:
	movq	$.L.str.65, -184(%rbp)
	jmp	.LBB2_255
.LBB2_223:
	movq	$.L.str.66, -184(%rbp)
	jmp	.LBB2_255
.LBB2_289:
	movq	-104(%rbp), %rdi
	movq	last_write_fp(%rip), %rsi
	movq	-120(%rbp), %rdx
	callq	FilterWrite
	jmp	.LBB2_291
.LBB2_224:
	movq	$.L.str.67, -184(%rbp)
	jmp	.LBB2_255
.LBB2_225:
	movq	$.L.str.68, -184(%rbp)
	jmp	.LBB2_255
.LBB2_226:
	movq	$.L.str.69, -184(%rbp)
	jmp	.LBB2_255
.LBB2_227:
	movq	$.L.str.70, -184(%rbp)
	jmp	.LBB2_255
.LBB2_228:
	movq	$.L.str.71, -184(%rbp)
	jmp	.LBB2_255
.LBB2_229:
	movq	$.L.str.72, -184(%rbp)
	jmp	.LBB2_255
.LBB2_230:
	movq	$.L.str.73, -184(%rbp)
	jmp	.LBB2_255
.LBB2_231:
	movq	$.L.str.74, -184(%rbp)
	jmp	.LBB2_255
.LBB2_232:
	movq	$.L.str.75, -184(%rbp)
	jmp	.LBB2_255
.LBB2_233:
	movq	$.L.str.76, -184(%rbp)
	jmp	.LBB2_255
.LBB2_234:
	movq	$.L.str.77, -184(%rbp)
	jmp	.LBB2_255
.LBB2_235:
	movq	$.L.str.78, -184(%rbp)
	jmp	.LBB2_255
.LBB2_236:
	movq	$.L.str.79, -184(%rbp)
	jmp	.LBB2_255
.LBB2_237:
	movq	$.L.str.80, -184(%rbp)
	jmp	.LBB2_255
.LBB2_238:
	movq	$.L.str.81, -184(%rbp)
	jmp	.LBB2_255
.LBB2_239:
	movq	$.L.str.82, -184(%rbp)
	jmp	.LBB2_255
.LBB2_240:
	movq	$.L.str.83, -184(%rbp)
	jmp	.LBB2_255
.LBB2_241:
	movq	$.L.str.84, -184(%rbp)
	jmp	.LBB2_255
.LBB2_242:
	movq	$.L.str.85, -184(%rbp)
	jmp	.LBB2_255
.LBB2_243:
	movq	$.L.str.86, -184(%rbp)
	jmp	.LBB2_255
.LBB2_244:
	movq	$.L.str.87, -184(%rbp)
	jmp	.LBB2_255
.LBB2_245:
	movq	$.L.str.88, -184(%rbp)
	jmp	.LBB2_255
.LBB2_246:
	movq	$.L.str.89, -184(%rbp)
	jmp	.LBB2_255
.LBB2_57:
	movq	-104(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_58
# BB#61:
	movq	-104(%rbp), %rdi
	movzwl	-122(%rbp), %esi
	leaq	-188(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	callq	EnvWriteRetrieve
	testl	%eax, %eax
	je	.LBB2_63
# BB#62:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.18, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rdi
	movl	-188(%rbp), %edx
	movl	-192(%rbp), %ecx
	movl	$.L.str.19, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB2_60
.LBB2_247:
	movq	$.L.str.90, -184(%rbp)
	jmp	.LBB2_255
.LBB2_248:
	movq	$.L.str.91, -184(%rbp)
	jmp	.LBB2_255
.LBB2_249:
	movq	$.L.str.92, -184(%rbp)
	jmp	.LBB2_255
.LBB2_250:
	movq	$.L.str.93, -184(%rbp)
	jmp	.LBB2_255
.LBB2_251:
	movq	$.L.str.94, -184(%rbp)
	jmp	.LBB2_255
.LBB2_252:
	movq	$.L.str.95, -184(%rbp)
	jmp	.LBB2_255
.LBB2_253:
	movq	$.L.str.96, -184(%rbp)
	jmp	.LBB2_255
.LBB2_254:
	movq	$.L.str.97, -184(%rbp)
.LBB2_255:
	cmpl	$100, -108(%rbp)
	jl	.LBB2_257
# BB#256:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
.LBB2_257:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB2_262
# BB#258:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_259
	.align	16, 0x90
.LBB2_260:                              #   in Loop: Header=BB2_259 Depth=1
	movq	-144(%rbp), %rax
.LBB2_259:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_260
# BB#261:
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	movl	$100, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_262:
	movq	-184(%rbp), %rdi
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	movq	-104(%rbp), %rax
	cmpq	%rax, (%rax)
	je	.LBB2_270
# BB#263:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_264
	.align	16, 0x90
.LBB2_265:                              #   in Loop: Header=BB2_264 Depth=1
	movq	-144(%rbp), %rax
.LBB2_264:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_265
# BB#266:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$92, %eax
	jne	.LBB2_268
# BB#267:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	jmp	.LBB2_270
.LBB2_268:
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	movl	$100, %esi
.LBB2_269:
	callq	WriteObject
.LBB2_270:
	cmpl	$100, -108(%rbp)
	jge	.LBB2_56
	jmp	.LBB2_291
.LBB2_277:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	je	.LBB2_279
# BB#278:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.101, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_279:
	movq	-144(%rbp), %rax
	jmp	.LBB2_280
.LBB2_288:                              #   in Loop: Header=BB2_280 Depth=1
	movq	-136(%rbp), %rax
.LBB2_280:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_282 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	cmpq	-144(%rbp), %rax
	je	.LBB2_276
# BB#281:                               #   in Loop: Header=BB2_280 Depth=1
	movq	-136(%rbp), %rax
	jmp	.LBB2_282
	.align	16, 0x90
.LBB2_283:                              #   in Loop: Header=BB2_282 Depth=2
	movq	-152(%rbp), %rax
.LBB2_282:                              #   Parent Loop BB2_280 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_283
# BB#284:                               #   in Loop: Header=BB2_280 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_288
# BB#285:                               #   in Loop: Header=BB2_280 Depth=1
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_287
# BB#286:                               #   in Loop: Header=BB2_280 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.102, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_287:                              #   in Loop: Header=BB2_280 Depth=1
	movq	-152(%rbp), %rdi
	addq	$64, %rdi
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
	jmp	.LBB2_288
.LBB2_276:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.103, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$53, %eax
	movl	$.L.str.98, %eax
	movl	$.L.str.99, %edi
	cmoveq	%rax, %rdi
	jmp	.LBB2_6
.LBB2_5:
	movq	-104(%rbp), %rdi
	addq	$64, %rdi
.LBB2_6:
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	jmp	.LBB2_291
.LBB2_178:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB2_179
# BB#180:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	sete	%al
	jmp	.LBB2_181
.LBB2_99:
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	OptimizeParameterList
	movq	-32(%rbp), %rax
	jmp	.LBB2_100
.LBB2_158:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-72(%rbp), %rax
.LBB2_100:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_102 Depth 2
                                        #     Child Loop BB2_111 Depth 2
                                        #     Child Loop BB2_117 Depth 2
                                        #     Child Loop BB2_135 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB2_159
# BB#101:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-72(%rbp), %rax
	jmp	.LBB2_102
	.align	16, 0x90
.LBB2_103:                              #   in Loop: Header=BB2_102 Depth=2
	movq	-64(%rbp), %rax
.LBB2_102:                              #   Parent Loop BB2_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_103
# BB#104:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB2_158
# BB#105:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	je	.LBB2_132
# BB#106:                               #   in Loop: Header=BB2_100 Depth=1
	cmpl	$145, %eax
	jne	.LBB2_107
# BB#114:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_116
# BB#115:                               #   in Loop: Header=BB2_100 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.108, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_116:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_117
	.align	16, 0x90
.LBB2_118:                              #   in Loop: Header=BB2_117 Depth=2
	movq	-80(%rbp), %rax
.LBB2_117:                              #   Parent Loop BB2_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_118
# BB#119:                               #   in Loop: Header=BB2_100 Depth=1
	cmpl	$0, -96(%rbp)
	jne	.LBB2_128
# BB#120:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	testb	$1, 43(%rax)
	je	.LBB2_122
# BB#121:                               #   in Loop: Header=BB2_100 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_125
.LBB2_132:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_134
# BB#133:                               #   in Loop: Header=BB2_100 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.111, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_134:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_135
	.align	16, 0x90
.LBB2_136:                              #   in Loop: Header=BB2_135 Depth=2
	movq	-80(%rbp), %rax
.LBB2_135:                              #   Parent Loop BB2_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_136
# BB#137:                               #   in Loop: Header=BB2_100 Depth=1
	cmpl	$0, -96(%rbp)
	jne	.LBB2_146
# BB#138:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	testb	$1, 43(%rax)
	je	.LBB2_140
# BB#139:                               #   in Loop: Header=BB2_100 Depth=1
	xorl	%eax, %eax
	jmp	.LBB2_143
.LBB2_107:                              #   in Loop: Header=BB2_100 Depth=1
	cmpl	$144, %eax
	jne	.LBB2_157
# BB#108:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB2_110
# BB#109:                               #   in Loop: Header=BB2_100 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.107, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_110:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_111
.LBB2_112:                              #   in Loop: Header=BB2_111 Depth=2
	movq	-80(%rbp), %rax
.LBB2_111:                              #   Parent Loop BB2_100 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_112
# BB#113:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movzbl	40(%rax), %esi
	movq	-40(%rbp), %rdx
	movzwl	-42(%rbp), %ecx
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-72(%rbp), %rax
	jmp	.LBB2_100
.LBB2_157:                              #   in Loop: Header=BB2_100 Depth=1
	movq	no_fpos(%rip), %rbx
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.104, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.113, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB2_158
.LBB2_122:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB2_123
# BB#124:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	sete	%al
	jmp	.LBB2_125
.LBB2_140:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB2_141
# BB#142:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	sete	%al
	jmp	.LBB2_143
.LBB2_123:                              #   in Loop: Header=BB2_100 Depth=1
	xorl	%eax, %eax
.LBB2_125:                              # %need_lvis.exit.i
                                        #   in Loop: Header=BB2_100 Depth=1
	testb	%al, %al
	je	.LBB2_127
# BB#126:                               #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.27, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_127:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$1, -96(%rbp)
.LBB2_128:                              #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-40(%rbp), %rax
	incl	(%rax)
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	125(%rax), %eax
	cmpl	$32, %eax
	je	.LBB2_130
# BB#129:                               #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.109, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rdi
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movsbl	125(%rax), %edx
	movl	$.L.str.110, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB2_131
.LBB2_130:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
.LBB2_131:                              #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movzwl	-42(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movl	$1, -92(%rbp)
	movq	-72(%rbp), %rax
	jmp	.LBB2_100
.LBB2_141:                              #   in Loop: Header=BB2_100 Depth=1
	xorl	%eax, %eax
.LBB2_143:                              # %need_lvis.exit2.i
                                        #   in Loop: Header=BB2_100 Depth=1
	testb	%al, %al
	je	.LBB2_145
# BB#144:                               #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.27, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_145:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$1, -96(%rbp)
.LBB2_146:                              #   in Loop: Header=BB2_100 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB2_148
# BB#147:                               #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-40(%rbp), %rax
	incl	(%rax)
	jmp	.LBB2_149
.LBB2_148:                              #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_149:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB2_154
# BB#150:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	jne	.LBB2_154
# BB#151:                               #   in Loop: Header=BB2_100 Depth=1
	movq	-80(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$57, %eax
	je	.LBB2_153
# BB#152:                               #   in Loop: Header=BB2_100 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.112, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_153:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movzwl	-42(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	-72(%rbp), %rax
	jmp	.LBB2_100
.LBB2_154:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-88(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB2_156
# BB#155:                               #   in Loop: Header=BB2_100 Depth=1
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-80(%rbp), %rdi
	movq	-40(%rbp), %rdx
	movzwl	-42(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	-72(%rbp), %rax
	jmp	.LBB2_100
.LBB2_156:                              #   in Loop: Header=BB2_100 Depth=1
	movq	-80(%rbp), %rdi
	movq	-88(%rbp), %rax
	movzbl	40(%rax), %esi
	movq	-40(%rbp), %rdx
	movzwl	-42(%rbp), %ecx
	callq	WriteObject
	movq	-72(%rbp), %rax
	jmp	.LBB2_100
.LBB2_58:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.17, %edi
	jmp	.LBB2_59
.LBB2_159:
	cmpl	$0, -96(%rbp)
	jne	.LBB2_168
# BB#160:
	movq	-88(%rbp), %rax
	movq	%rax, -24(%rbp)
	testb	$1, 43(%rax)
	je	.LBB2_162
# BB#161:
	xorl	%eax, %eax
	jmp	.LBB2_165
.LBB2_179:
	xorl	%eax, %eax
.LBB2_181:                              # %need_lvis.exit
	testb	%al, %al
	je	.LBB2_183
# BB#182:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.27, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_183:
	movq	-144(%rbp), %rax
	movq	80(%rax), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movq	-104(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	movl	$.L.str.28, %eax
	movl	$.L.str.29, %edi
	cmoveq	%rax, %rdi
	movq	last_write_fp(%rip), %rsi
	callq	fputs
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_184
	.align	16, 0x90
.LBB2_185:                              #   in Loop: Header=BB2_184 Depth=1
	movq	-144(%rbp), %rax
.LBB2_184:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_185
# BB#186:
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	movl	$105, %esi
	jmp	.LBB2_269
.LBB2_63:
	movq	-104(%rbp), %r14
	movq	last_write_fp(%rip), %rdi
	movzwl	-122(%rbp), %ebx
	callq	ftell
	movq	-120(%rbp), %rcx
	movl	(%rcx), %ecx
	movq	%r14, %rdi
	movl	%ebx, %esi
	movl	%eax, %edx
	callq	EnvWriteInsert
	movq	-104(%rbp), %rax
	movq	8(%rax), %rcx
	cmpq	(%rax), %rcx
	je	.LBB2_64
# BB#70:
	movq	-104(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_71
.LBB2_72:                               #   in Loop: Header=BB2_71 Depth=1
	movq	-176(%rbp), %rax
.LBB2_71:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_72
# BB#73:
	movq	-176(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	je	.LBB2_75
# BB#74:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_75:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.23, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-176(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_76
.LBB2_77:                               #   in Loop: Header=BB2_76 Depth=1
	movq	-144(%rbp), %rax
.LBB2_76:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_77
# BB#78:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_80
# BB#79:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_80:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	jmp	.LBB2_81
.LBB2_64:
	movq	-104(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_65
.LBB2_66:                               #   in Loop: Header=BB2_65 Depth=1
	movq	-144(%rbp), %rax
.LBB2_65:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_66
# BB#67:
	movq	-144(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB2_69
# BB#68:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_69:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.21, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.7, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	-144(%rbp), %rdi
	movq	-120(%rbp), %rdx
	movzwl	-122(%rbp), %ecx
	xorl	%esi, %esi
	callq	WriteObject
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_81:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
.LBB2_59:
	callq	fputs
.LBB2_60:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.9, %edi
	callq	fputs
	movq	-120(%rbp), %rax
	incl	(%rax)
	jmp	.LBB2_291
.LBB2_162:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB2_163
# BB#164:
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	sete	%al
	jmp	.LBB2_165
.LBB2_163:
	xorl	%eax, %eax
.LBB2_165:                              # %need_lvis.exit1.i
	testb	%al, %al
	je	.LBB2_167
# BB#166:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.27, %edi
	callq	fputs
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.15, %edi
	callq	fputs
.LBB2_167:
	movq	-88(%rbp), %rdi
	callq	SymName
	movq	last_write_fp(%rip), %rsi
	movq	%rax, %rdi
	callq	fputs
	movl	$1, -96(%rbp)
.LBB2_168:                              # %WriteClosure.exit
	cmpl	$0, -208(%rbp)
	je	.LBB2_291
.LBB2_56:
	movq	last_write_fp(%rip), %rsi
	movl	$.L.str.8, %edi
	callq	fputs
.LBB2_291:
	addq	$224, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	WriteObject, .Lfunc_end2-WriteObject
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_82
	.quad	.LBB2_290
	.quad	.LBB2_188
	.quad	.LBB2_187
	.quad	.LBB2_169
	.quad	.LBB2_169
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_2
	.quad	.LBB2_7
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_10
	.quad	.LBB2_9
	.quad	.LBB2_8
	.quad	.LBB2_189
	.quad	.LBB2_190
	.quad	.LBB2_191
	.quad	.LBB2_192
	.quad	.LBB2_193
	.quad	.LBB2_194
	.quad	.LBB2_195
	.quad	.LBB2_196
	.quad	.LBB2_197
	.quad	.LBB2_198
	.quad	.LBB2_199
	.quad	.LBB2_200
	.quad	.LBB2_201
	.quad	.LBB2_202
	.quad	.LBB2_203
	.quad	.LBB2_204
	.quad	.LBB2_205
	.quad	.LBB2_206
	.quad	.LBB2_207
	.quad	.LBB2_208
	.quad	.LBB2_209
	.quad	.LBB2_210
	.quad	.LBB2_212
	.quad	.LBB2_213
	.quad	.LBB2_211
	.quad	.LBB2_214
	.quad	.LBB2_215
	.quad	.LBB2_216
	.quad	.LBB2_217
	.quad	.LBB2_218
	.quad	.LBB2_219
	.quad	.LBB2_220
	.quad	.LBB2_221
	.quad	.LBB2_271
	.quad	.LBB2_271
	.quad	.LBB2_222
	.quad	.LBB2_223
	.quad	.LBB2_289
	.quad	.LBB2_224
	.quad	.LBB2_225
	.quad	.LBB2_226
	.quad	.LBB2_227
	.quad	.LBB2_228
	.quad	.LBB2_229
	.quad	.LBB2_230
	.quad	.LBB2_231
	.quad	.LBB2_232
	.quad	.LBB2_233
	.quad	.LBB2_234
	.quad	.LBB2_235
	.quad	.LBB2_236
	.quad	.LBB2_237
	.quad	.LBB2_238
	.quad	.LBB2_239
	.quad	.LBB2_240
	.quad	.LBB2_241
	.quad	.LBB2_242
	.quad	.LBB2_243
	.quad	.LBB2_244
	.quad	.LBB2_245
	.quad	.LBB2_246
	.quad	.LBB2_290
	.quad	.LBB2_57
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_290
	.quad	.LBB2_247
	.quad	.LBB2_248
	.quad	.LBB2_249
	.quad	.LBB2_250
	.quad	.LBB2_251
	.quad	.LBB2_252
	.quad	.LBB2_253
	.quad	.LBB2_254

	.text
	.globl	CloseFiles
	.align	16, 0x90
	.type	CloseFiles,@function
CloseFiles:                             # @CloseFiles
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
	subq	$1056, %rsp             # imm = 0x420
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
	cmpw	$0, last_write_fnum(%rip)
	je	.LBB3_2
# BB#1:
	movq	last_write_fp(%rip), %rdi
	callq	fclose
.LBB3_2:
	xorl	%edi, %edi
	callq	FirstFile
	movw	%ax, -18(%rbp)
	leaq	-544(%rbp), %rbx
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movzwl	-18(%rbp), %edi
	callq	FileName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	strcat
	movq	%rbx, %rdi
	callq	remove
	movzwl	-18(%rbp), %edi
	callq	NextFile
	movw	%ax, -18(%rbp)
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	cmpw	$0, -18(%rbp)
	jne	.LBB3_4
# BB#5:
	movl	$3, %edi
	callq	FirstFile
	movw	%ax, -18(%rbp)
	leaq	-1056(%rbp), %r14
	jmp	.LBB3_6
	.align	16, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_6 Depth=1
	movzwl	-18(%rbp), %edi
	callq	NextFile
	movw	%ax, -18(%rbp)
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	cmpw	$0, -18(%rbp)
	je	.LBB3_13
# BB#7:                                 #   in Loop: Header=BB3_6 Depth=1
	movzwl	-18(%rbp), %edi
	callq	FileTestUpdated
	testl	%eax, %eax
	je	.LBB3_12
# BB#8:                                 #   in Loop: Header=BB3_6 Depth=1
	movzwl	-18(%rbp), %edi
	callq	FileName
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	strcpy
	movl	$.L.str.3, %esi
	movq	%r14, %rdi
	callq	strcat
	movl	$.L.str.11, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, -1064(%rbp)
	testq	%rax, %rax
	je	.LBB3_10
# BB#9:                                 #   in Loop: Header=BB3_6 Depth=1
	movq	-1064(%rbp), %rdi
	callq	fclose
	movq	%rbx, %rdi
	callq	remove
.LBB3_10:                               #   in Loop: Header=BB3_6 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	rename
	testl	%eax, %eax
	je	.LBB3_12
# BB#11:                                #   in Loop: Header=BB3_6 Depth=1
	movq	no_fpos(%rip), %r8
	movq	%rbx, (%rsp)
	movl	$41, %edi
	movl	$5, %esi
	movl	$.L.str.12, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	movq	%r14, %r9
	callq	Error
	jmp	.LBB3_12
.LBB3_13:
	addq	$1056, %rsp             # imm = 0x420
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end3:
	.size	CloseFiles, .Lfunc_end3-CloseFiles
	.cfi_endproc

	.align	16, 0x90
	.type	OptimizeParameterList,@function
OptimizeParameterList:                  # @OptimizeParameterList
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.13, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.114, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	cmpq	$0, -16(%rbp)
	je	.LBB4_24
# BB#3:
	movq	-8(%rbp), %rax
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_14:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
.LBB4_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_6 Depth 2
                                        #     Child Loop BB4_10 Depth 2
                                        #     Child Loop BB4_17 Depth 2
                                        #       Child Loop BB4_19 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB4_24
# BB#5:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB4_6
	.align	16, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_6 Depth=2
	movq	-24(%rbp), %rax
.LBB4_6:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_7
# BB#8:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$10, %eax
	jne	.LBB4_14
# BB#9:                                 #   in Loop: Header=BB4_4 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_10
	.align	16, 0x90
.LBB4_11:                               #   in Loop: Header=BB4_10 Depth=2
	movq	-32(%rbp), %rax
.LBB4_10:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_11
# BB#12:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_15
# BB#13:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Optimize
	jmp	.LBB4_14
	.align	16, 0x90
.LBB4_15:                               #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB4_14
# BB#16:                                #   in Loop: Header=BB4_4 Depth=1
	movq	-32(%rbp), %rax
	jmp	.LBB4_17
	.align	16, 0x90
.LBB4_23:                               #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rax
.LBB4_17:                               #   Parent Loop BB4_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_19 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB4_14
# BB#18:                                #   in Loop: Header=BB4_17 Depth=2
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB4_19
	.align	16, 0x90
.LBB4_20:                               #   in Loop: Header=BB4_19 Depth=3
	movq	-48(%rbp), %rax
.LBB4_19:                               #   Parent Loop BB4_4 Depth=1
                                        #     Parent Loop BB4_17 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB4_20
# BB#21:                                #   in Loop: Header=BB4_17 Depth=2
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB4_23
# BB#22:                                #   in Loop: Header=BB4_17 Depth=2
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Optimize
	jmp	.LBB4_23
.LBB4_24:
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	OptimizeParameterList, .Lfunc_end4-OptimizeParameterList
	.cfi_endproc

	.align	16, 0x90
	.type	Optimize,@function
Optimize:                               # @Optimize
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB5_2
# BB#1:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	OptimizeParameterList
.LBB5_2:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	ParameterCheck
	movq	%rax, -24(%rbp)
	testq	%rax, %rax
	je	.LBB5_9
# BB#3:
	movq	-8(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB5_5
# BB#4:
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
.LBB5_5:
	movq	%rax, xx_tmp(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB5_8
# BB#6:
	cmpq	$0, zz_res(%rip)
	je	.LBB5_8
# BB#7:
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
.LBB5_8:
	movq	-8(%rbp), %rdi
	callq	DisposeObject
.LBB5_9:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	Optimize, .Lfunc_end5-Optimize
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"database index file seems to be out of date"
	.size	.L.str, 44

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"syntax error in database file"
	.size	.L.str.1, 30

	.type	last_write_fnum,@object # @last_write_fnum
	.local	last_write_fnum
	.comm	last_write_fnum,2,2
	.type	last_write_fp,@object   # @last_write_fp
	.local	last_write_fp
	.comm	last_write_fp,8,8
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"file name %s%s is too long"
	.size	.L.str.2, 27

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"x"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"a"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"w"
	.size	.L.str.5, 2

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"cannot append to database file %s"
	.size	.L.str.6, 34

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"{"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"}"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\n"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	".ld"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"r"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"rename(%s, %s) failed"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"assert failed in %s"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"WriteObject: Down(y) == y!"
	.size	.L.str.14, 27

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	" "
	.size	.L.str.15, 2

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"WriteObject: next_gap!"
	.size	.L.str.16, 23

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"@@C"
	.size	.L.str.17, 4

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"@@D"
	.size	.L.str.18, 4

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	" \"%d %d\""
	.size	.L.str.19, 9

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"WriteObject: ENV/CLOSURE!"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"@@A"
	.size	.L.str.21, 4

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"WriteObject: ENV/ENV!"
	.size	.L.str.22, 22

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@@B"
	.size	.L.str.23, 4

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"WriteObject: ENV/ENV+CLOSURE!"
	.size	.L.str.24, 30

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"@@E"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"WriteObject/CROSS: type(y) != CLOSURE!"
	.size	.L.str.26, 39

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"@@V"
	.size	.L.str.27, 4

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"&&"
	.size	.L.str.28, 3

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"&&&"
	.size	.L.str.29, 4

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"@Null"
	.size	.L.str.30, 6

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@PageLabel"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"@BeginHeaderComponent"
	.size	.L.str.32, 22

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"@EndHeaderComponent"
	.size	.L.str.33, 20

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"@SetHeaderComponent"
	.size	.L.str.34, 20

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"@ClearHeaderComponent"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"@OneCol"
	.size	.L.str.36, 8

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"@OneRow"
	.size	.L.str.37, 8

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"@Wide"
	.size	.L.str.38, 6

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"@High"
	.size	.L.str.39, 6

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"@HShift"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"@VShift"
	.size	.L.str.41, 8

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"@HScale"
	.size	.L.str.42, 8

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"@VScale"
	.size	.L.str.43, 8

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"@HCover"
	.size	.L.str.44, 8

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"@VCover"
	.size	.L.str.45, 8

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"@Scale"
	.size	.L.str.46, 7

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"@KernShrink"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"@HContract"
	.size	.L.str.48, 11

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"@VContract"
	.size	.L.str.49, 11

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"@HLimited"
	.size	.L.str.50, 10

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"@VLimited"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"@HExpand"
	.size	.L.str.52, 9

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"@VExpand"
	.size	.L.str.53, 9

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"@StartHVSpan"
	.size	.L.str.54, 13

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"@StartHSpan"
	.size	.L.str.55, 12

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"@StartVSpan"
	.size	.L.str.56, 12

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"@HSpan"
	.size	.L.str.57, 7

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"@VSpan"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"@PAdjust"
	.size	.L.str.59, 9

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"@HAdjust"
	.size	.L.str.60, 9

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"@VAdjust"
	.size	.L.str.61, 9

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"@Rotate"
	.size	.L.str.62, 8

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"@Background"
	.size	.L.str.63, 12

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"@Case"
	.size	.L.str.64, 6

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"@Yield"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"@BackEnd"
	.size	.L.str.66, 9

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"@Char"
	.size	.L.str.67, 6

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"@Font"
	.size	.L.str.68, 6

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"@Space"
	.size	.L.str.69, 7

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"@YUnit"
	.size	.L.str.70, 7

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"@ZUnit"
	.size	.L.str.71, 7

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"@Break"
	.size	.L.str.72, 7

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"@Underline"
	.size	.L.str.73, 11

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"@SetColour"
	.size	.L.str.74, 11

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"@Outline"
	.size	.L.str.75, 9

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"@Language"
	.size	.L.str.76, 10

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"@CurrLang"
	.size	.L.str.77, 10

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"@CurrFamily"
	.size	.L.str.78, 12

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"@CurrFace"
	.size	.L.str.79, 10

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"@CurrYUnit"
	.size	.L.str.80, 11

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"@CurrZUnit"
	.size	.L.str.81, 11

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"@Common"
	.size	.L.str.82, 8

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"@Rump"
	.size	.L.str.83, 6

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"@Meld"
	.size	.L.str.84, 6

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"@Insert"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"@OneOf"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"@Next"
	.size	.L.str.87, 6

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"@Plus"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"@Minus"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"@Open"
	.size	.L.str.90, 6

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"@Tagged"
	.size	.L.str.91, 8

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"@IncludeGraphic"
	.size	.L.str.92, 16

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.93, 19

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"@PlainGraphic"
	.size	.L.str.94, 14

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"@Graphic"
	.size	.L.str.95, 9

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"@LinkSource"
	.size	.L.str.96, 12

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"@LinkDest"
	.size	.L.str.97, 10

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"@Verbatim"
	.size	.L.str.98, 10

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"@RawVerbatim"
	.size	.L.str.99, 13

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"@Begin"
	.size	.L.str.100, 7

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"WriteObject/VERBATIM!"
	.size	.L.str.101, 22

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"WriteObject/VERBATIM/WORD!"
	.size	.L.str.102, 27

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"@End"
	.size	.L.str.103, 5

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"assert failed in %s %s"
	.size	.L.str.104, 23

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"WriteObject:"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"@LUse"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"WriteObject/CLOSURE: LPAR!"
	.size	.L.str.107, 27

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"WriteObject/CLOSURE: NPAR!"
	.size	.L.str.108, 27

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"\\"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"%c"
	.size	.L.str.110, 3

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"WriteObject/CLOSURE: RPAR!"
	.size	.L.str.111, 27

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"WriteClosure:  filter!"
	.size	.L.str.112, 23

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"WriteClosure:"
	.size	.L.str.113, 14

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"OptimizeParameterList: type(x) != CLOSURE!"
	.size	.L.str.114, 43


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
