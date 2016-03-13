	.text
	.file	"z36.opt"
	.globl	ReadHyphTable
	.align	16, 0x90
	.type	ReadHyphTable,@function
ReadHyphTable:                          # @ReadHyphTable
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
	movl	%edi, -4(%rbp)
	testl	%edi, %edi
	jne	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_2:
	movl	-4(%rbp), %eax
	cmpq	$0, HyphTables(,%rax,8)
	jne	.LBB0_4
# BB#3:
	movl	-4(%rbp), %eax
	cmpl	$0, TriedFile(,%rax,4)
	je	.LBB0_5
.LBB0_4:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_5:
	movl	-4(%rbp), %edi
	leaq	-8(%rbp), %rsi
	callq	TrieRead
	movl	-4(%rbp), %ecx
	movq	%rax, HyphTables(,%rcx,8)
	movl	-4(%rbp), %eax
	movl	$1, TriedFile(,%rax,4)
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	ReadHyphTable, .Lfunc_end0-ReadHyphTable
	.cfi_endproc

	.align	16, 0x90
	.type	TrieRead,@function
TrieRead:                               # @TrieRead
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2200, %rsp             # imm = 0x898
.Ltmp6:
	.cfi_offset %rbx, -56
.Ltmp7:
	.cfi_offset %r12, -48
.Ltmp8:
	.cfi_offset %r13, -40
.Ltmp9:
	.cfi_offset %r14, -32
.Ltmp10:
	.cfi_offset %r15, -24
	movl	%edi, -52(%rbp)
	movq	%rsi, -64(%rbp)
	movl	-52(%rbp), %edi
	callq	LanguageHyph
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	je	.LBB1_4
# BB#1:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_4
# BB#2:
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB1_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_4:
	cmpq	$0, -88(%rbp)
	je	.LBB1_5
# BB#6:
	movq	-88(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$.L.str.8, %esi
	movl	$8, %ecx
	movl	$6, %r8d
	callq	DefineFile
	movw	%ax, -76(%rbp)
	cmpl	$0, InitializeAll(%rip)
	je	.LBB1_8
# BB#7:
	movq	$0, -104(%rbp)
	jmp	.LBB1_9
.LBB1_8:
	movzwl	-76(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -104(%rbp)
.LBB1_9:
	cmpq	$0, -104(%rbp)
	jne	.LBB1_80
# BB#10:
	movq	-88(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$.L.str.9, %esi
	movl	$7, %ecx
	movl	$6, %r8d
	callq	DefineFile
	movw	%ax, -74(%rbp)
	movzwl	-74(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -96(%rbp)
	testq	%rax, %rax
	je	.LBB1_11
# BB#12:
	movq	-96(%rbp), %rdx
	leaq	-656(%rbp), %rdi
	movl	$512, %esi              # imm = 0x200
	callq	fgets
	testq	%rax, %rax
	je	.LBB1_15
# BB#13:
	leaq	-656(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_16
# BB#14:
	leaq	-656(%rbp), %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_16
.LBB1_15:
	movq	no_fpos(%rip), %r14
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$9, %esi
	movl	$.L.str.13, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_16:
	leaq	-656(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_18
# BB#17:
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movq	$0, -48(%rbp)
	jmp	.LBB1_103
.LBB1_11:
	movq	no_fpos(%rip), %r14
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$8, %esi
	movl	$.L.str.10, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	jmp	.LBB1_5
.LBB1_18:
	movl	$120000, %edi           # imm = 0x1D4C0
	movl	$32767, %esi            # imm = 0x7FFF
	callq	NewTrie
	movq	%rax, -72(%rbp)
	movl	$0, -128(%rbp)
	movl	$1, -132(%rbp)
	movl	$0, -136(%rbp)
	leaq	-656(%rbp), %r13
	leaq	-2216(%rbp), %r15
	leaq	-1680(%rbp), %r12
	jmp	.LBB1_19
	.align	16, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_19 Depth=1
	incl	-132(%rbp)
	movl	$0, -2212(%rbp)
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_64:                               #   in Loop: Header=BB1_21 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_21:                               #   Parent Loop BB1_19 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_55 Depth 3
                                        #       Child Loop BB1_41 Depth 3
	movslq	-2212(%rbp), %rax
	leaq	-2208(%rbp,%rax), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%r13, %rdx
	movq	%r15, %rcx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	jne	.LBB1_23
# BB#22:                                #   in Loop: Header=BB1_21 Depth=2
	movzbl	-656(%rbp), %eax
	cmpl	$37, %eax
	setne	%bl
.LBB1_23:                               #   in Loop: Header=BB1_21 Depth=2
	testb	%bl, %bl
	je	.LBB1_19
# BB#24:                                #   in Loop: Header=BB1_21 Depth=2
	movl	-2216(%rbp), %eax
	addl	%eax, -2212(%rbp)
	movq	-88(%rbp), %rsi
	addq	$64, %rsi
	movl	-132(%rbp), %edx
	movq	%r13, %rdi
	callq	DecodeEscapes
	movl	-128(%rbp), %eax
	cmpq	$4, %rax
	ja	.LBB1_64
# BB#25:                                #   in Loop: Header=BB1_21 Depth=2
	jmpq	*.LJTI1_0(,%rax,8)
.LBB1_26:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.15, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_28
# BB#27:                                #   in Loop: Header=BB1_21 Depth=2
	movq	no_fpos(%rip), %r14
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$10, %esi
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_28:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$1, -128(%rbp)
	jmp	.LBB1_21
.LBB1_29:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.17, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_30
# BB#31:                                #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_32
# BB#33:                                #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.19, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_34
# BB#35:                                #   in Loop: Header=BB1_21 Depth=2
	movq	-72(%rbp), %rsi
	movq	%r13, %rdi
	callq	AddClassToTrie
	jmp	.LBB1_21
.LBB1_36:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_37
# BB#38:                                #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.19, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_39
# BB#40:                                #   in Loop: Header=BB1_21 Depth=2
	movl	$56, -112(%rbp)
	movl	$0, -120(%rbp)
	movslq	-120(%rbp), %rax
	movb	$46, -1168(%rbp,%rax)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -120(%rbp)
	movb	%al, -1680(%rbp,%rcx)
	movl	$56, -112(%rbp)
	movl	$0, -116(%rbp)
	jmp	.LBB1_41
	.align	16, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_41 Depth=3
	movl	$57, -112(%rbp)
	incl	-116(%rbp)
.LBB1_41:                               #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-116(%rbp), %rax
	cmpb	$0, -656(%rbp,%rax)
	je	.LBB1_45
# BB#42:                                #   in Loop: Header=BB1_41 Depth=3
	movslq	-116(%rbp), %rax
	movzbl	-656(%rbp,%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_43
# BB#44:                                #   in Loop: Header=BB1_41 Depth=3
	movslq	-116(%rbp), %rax
	movb	-656(%rbp,%rax), %al
	movslq	-120(%rbp), %rcx
	movb	%al, -1168(%rbp,%rcx)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -120(%rbp)
	movb	%al, -1680(%rbp,%rcx)
	movl	$56, -112(%rbp)
	incl	-116(%rbp)
	jmp	.LBB1_41
.LBB1_50:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.18, %esi
	movq	%r13, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_51
# BB#52:                                #   in Loop: Header=BB1_21 Depth=2
	movl	$.L.str.21, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	-136(%rbp), %rdx
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB1_21
	jmp	.LBB1_53
.LBB1_54:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$48, -112(%rbp)
	movl	$0, -120(%rbp)
	movl	$0, -116(%rbp)
	jmp	.LBB1_55
	.align	16, 0x90
.LBB1_59:                               #   in Loop: Header=BB1_55 Depth=3
	movslq	-116(%rbp), %rax
	movb	-656(%rbp,%rax), %al
	movslq	-120(%rbp), %rcx
	movb	%al, -1168(%rbp,%rcx)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -120(%rbp)
	movb	%al, -1680(%rbp,%rcx)
	movl	$48, -112(%rbp)
	incl	-116(%rbp)
.LBB1_55:                               #   Parent Loop BB1_19 Depth=1
                                        #     Parent Loop BB1_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	-116(%rbp), %rax
	cmpb	$0, -656(%rbp,%rax)
	je	.LBB1_60
# BB#56:                                #   in Loop: Header=BB1_55 Depth=3
	movslq	-116(%rbp), %rax
	movzbl	-656(%rbp,%rax), %eax
	cmpl	$48, %eax
	jl	.LBB1_59
# BB#57:                                #   in Loop: Header=BB1_55 Depth=3
	movslq	-116(%rbp), %rax
	movzbl	-656(%rbp,%rax), %eax
	cmpl	$57, %eax
	jg	.LBB1_59
# BB#58:                                #   in Loop: Header=BB1_55 Depth=3
	movslq	-116(%rbp), %rax
	movzbl	-656(%rbp,%rax), %eax
	movl	%eax, -112(%rbp)
	incl	-116(%rbp)
	jmp	.LBB1_55
.LBB1_60:                               #   in Loop: Header=BB1_21 Depth=2
	movslq	-120(%rbp), %rax
	movb	$0, -1168(%rbp,%rax)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	movb	%al, -1680(%rbp,%rcx)
	movslq	-120(%rbp), %rax
	movb	$0, 1(%rax,%r12)
	cmpl	$0, -136(%rbp)
	je	.LBB1_62
# BB#61:                                #   in Loop: Header=BB1_21 Depth=2
	movl	-120(%rbp), %eax
	cmpl	-136(%rbp), %eax
	jg	.LBB1_21
.LBB1_62:                               #   in Loop: Header=BB1_21 Depth=2
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rcx
	addq	$64, %rcx
	movl	-132(%rbp), %r8d
	leaq	-1168(%rbp), %rdi
	movq	%r12, %rsi
	callq	TrieInsert
	testl	%eax, %eax
	jne	.LBB1_21
	jmp	.LBB1_63
.LBB1_45:                               #   in Loop: Header=BB1_21 Depth=2
	movslq	-120(%rbp), %rax
	movb	$46, -1168(%rbp,%rax)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -120(%rbp)
	movb	%al, -1680(%rbp,%rcx)
	movl	$56, -112(%rbp)
	movslq	-120(%rbp), %rax
	movb	$0, -1168(%rbp,%rax)
	movb	-112(%rbp), %al
	movslq	-120(%rbp), %rcx
	movb	%al, -1680(%rbp,%rcx)
	movslq	-120(%rbp), %rax
	movb	$0, 1(%rax,%r12)
	movq	-72(%rbp), %rdx
	movq	-88(%rbp), %rcx
	addq	$64, %rcx
	movl	-132(%rbp), %r8d
	leaq	-1168(%rbp), %rdi
	movq	%r12, %rsi
	callq	TrieInsert
	testl	%eax, %eax
	jne	.LBB1_21
	jmp	.LBB1_46
.LBB1_30:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$2, -128(%rbp)
	jmp	.LBB1_21
.LBB1_37:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$4, -128(%rbp)
	jmp	.LBB1_21
.LBB1_51:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$4, -128(%rbp)
	jmp	.LBB1_21
.LBB1_32:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$4, -128(%rbp)
	jmp	.LBB1_21
.LBB1_39:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$3, -128(%rbp)
	jmp	.LBB1_21
.LBB1_34:                               #   in Loop: Header=BB1_21 Depth=2
	movl	$3, -128(%rbp)
	jmp	.LBB1_21
	.align	16, 0x90
.LBB1_19:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_21 Depth 2
                                        #       Child Loop BB1_55 Depth 3
                                        #       Child Loop BB1_41 Depth 3
	movq	-96(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	leaq	-2208(%rbp), %rdi
	callq	fgets
	testq	%rax, %rax
	jne	.LBB1_20
# BB#65:
	cmpl	$4, -128(%rbp)
	je	.LBB1_67
# BB#66:
	movq	no_fpos(%rip), %r14
	movzwl	-74(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$13, %esi
	movl	$.L.str.24, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_67:
	movq	-96(%rbp), %rdi
	callq	fclose
	movq	-72(%rbp), %rdi
	callq	CompressTrie
	movzwl	-74(%rbp), %edi
	callq	FileName
	leaq	-2208(%rbp), %rbx
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	strcpy
	movq	%rbx, %rdi
	callq	strlen
	leaq	-3(%rax,%rbx), %rdi
	movl	$.L.str.8, %esi
	callq	strcpy
	movl	$.L.str.25, %esi
	movq	%rbx, %rdi
	callq	fopen
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	jne	.LBB1_69
# BB#68:
	movq	no_fpos(%rip), %r8
	leaq	-2208(%rbp), %r9
	movl	$36, %edi
	movl	$14, %esi
	movl	$.L.str.26, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_69:
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	(%rax), %esi
	callq	BePutInt
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	4(%rax), %esi
	callq	BePutInt
	movl	$0, -116(%rbp)
	jmp	.LBB1_70
	.align	16, 0x90
.LBB1_71:                               #   in Loop: Header=BB1_70 Depth=1
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movsbl	8(%rcx,%rax), %edi
	movq	-104(%rbp), %rsi
	callq	_IO_putc
	incl	-116(%rbp)
.LBB1_70:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -116(%rbp)
	jle	.LBB1_71
# BB#72:
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	272(%rax), %esi
	callq	BePutInt
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	276(%rax), %esi
	callq	BePutInt
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	288(%rax), %esi
	callq	BePutInt
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	292(%rax), %esi
	callq	BePutInt
	movl	$0, -116(%rbp)
	jmp	.LBB1_73
	.align	16, 0x90
.LBB1_74:                               #   in Loop: Header=BB1_73 Depth=1
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	264(%rcx), %rcx
	movzwl	(%rcx,%rax,2), %eax
	movzbl	%ah, %edi  # NOREX
	movq	-104(%rbp), %rsi
	callq	_IO_putc
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	264(%rcx), %rcx
	movzbl	(%rcx,%rax,2), %edi
	movq	-104(%rbp), %rsi
	callq	_IO_putc
	incl	-116(%rbp)
.LBB1_73:                               # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	276(%rcx), %eax
	jl	.LBB1_74
# BB#75:
	movl	$0, -116(%rbp)
	jmp	.LBB1_76
	.align	16, 0x90
.LBB1_77:                               #   in Loop: Header=BB1_76 Depth=1
	movslq	-116(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	280(%rcx), %rcx
	movsbl	(%rcx,%rax), %edi
	movq	-104(%rbp), %rsi
	callq	_IO_putc
	incl	-116(%rbp)
.LBB1_76:                               # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	288(%rcx), %eax
	jl	.LBB1_77
# BB#78:
	movq	-104(%rbp), %rdi
	callq	fclose
	movq	-72(%rbp), %rdi
	callq	free
	movzwl	-76(%rbp), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -104(%rbp)
	testq	%rax, %rax
	jne	.LBB1_80
# BB#79:
	movq	no_fpos(%rip), %r14
	movzwl	-76(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$15, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_80:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	movl	$2, %edx
	callq	fseek
	movq	-104(%rbp), %rdi
	callq	ftell
	movl	%eax, -108(%rbp)
	movq	-104(%rbp), %rdi
	callq	rewind
	movl	-108(%rbp), %edi
	addq	$16, %rdi
	callq	malloc
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB1_82
# BB#81:
	movq	no_fpos(%rip), %r8
	movl	$36, %edi
	movl	$16, %esi
	movl	$.L.str.27, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_82:
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	BeGetInt
	testl	%eax, %eax
	je	.LBB1_84
# BB#83:
	movq	no_fpos(%rip), %r14
	movzwl	-76(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$17, %esi
	movl	$.L.str.28, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_84:
	movq	-72(%rbp), %rax
	cmpl	$5361534, (%rax)        # imm = 0x51CF7E
	je	.LBB1_86
# BB#85:
	movq	no_fpos(%rip), %r14
	movzwl	-76(%rbp), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$36, %edi
	movl	$18, %esi
	movl	$.L.str.29, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB1_86:
	movq	-104(%rbp), %rdi
	movq	-72(%rbp), %rsi
	addq	$4, %rsi
	callq	BeGetInt
	movl	$0, -116(%rbp)
	jmp	.LBB1_87
	.align	16, 0x90
.LBB1_90:                               #   in Loop: Header=BB1_87 Depth=1
	incl	-116(%rbp)
.LBB1_87:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -116(%rbp)
	jg	.LBB1_91
# BB#88:                                #   in Loop: Header=BB1_87 Depth=1
	movq	-104(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -124(%rbp)
	cmpl	$-1, %eax
	je	.LBB1_90
# BB#89:                                #   in Loop: Header=BB1_87 Depth=1
	movb	-124(%rbp), %al
	movslq	-116(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movb	%al, 8(%rdx,%rcx)
	jmp	.LBB1_90
.LBB1_91:
	movq	-104(%rbp), %rdi
	movl	$272, %esi              # imm = 0x110
	addq	-72(%rbp), %rsi
	callq	BeGetInt
	movq	-104(%rbp), %rdi
	movl	$276, %esi              # imm = 0x114
	addq	-72(%rbp), %rsi
	callq	BeGetInt
	movq	-104(%rbp), %rdi
	movl	$288, %esi              # imm = 0x120
	addq	-72(%rbp), %rsi
	callq	BeGetInt
	movq	-104(%rbp), %rdi
	movl	$292, %esi              # imm = 0x124
	addq	-72(%rbp), %rsi
	callq	BeGetInt
	movq	-72(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	%rcx, 264(%rax)
	movq	-72(%rbp), %rax
	movslq	272(%rax), %rcx
	addq	%rcx, %rcx
	addq	264(%rax), %rcx
	movq	%rcx, 280(%rax)
	movl	$0, -116(%rbp)
	jmp	.LBB1_92
	.align	16, 0x90
.LBB1_96:                               #   in Loop: Header=BB1_92 Depth=1
	incl	-116(%rbp)
.LBB1_92:                               # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	276(%rcx), %eax
	jge	.LBB1_97
# BB#93:                                #   in Loop: Header=BB1_92 Depth=1
	movq	-104(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -124(%rbp)
	cmpl	$-1, %eax
	je	.LBB1_96
# BB#94:                                #   in Loop: Header=BB1_92 Depth=1
	movl	-124(%rbp), %eax
	shll	$8, %eax
	movslq	-116(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	264(%rdx), %rdx
	movw	%ax, (%rdx,%rcx,2)
	movq	-104(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -124(%rbp)
	cmpl	$-1, %eax
	je	.LBB1_96
# BB#95:                                #   in Loop: Header=BB1_92 Depth=1
	movzbl	-124(%rbp), %eax
	movslq	-116(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	264(%rdx), %rdx
	movzwl	(%rdx,%rcx,2), %esi
	orl	%eax, %esi
	movw	%si, (%rdx,%rcx,2)
	jmp	.LBB1_96
.LBB1_97:
	movl	$0, -116(%rbp)
	jmp	.LBB1_98
	.align	16, 0x90
.LBB1_101:                              #   in Loop: Header=BB1_98 Depth=1
	incl	-116(%rbp)
.LBB1_98:                               # =>This Inner Loop Header: Depth=1
	movl	-116(%rbp), %eax
	movq	-72(%rbp), %rcx
	cmpl	288(%rcx), %eax
	jge	.LBB1_102
# BB#99:                                #   in Loop: Header=BB1_98 Depth=1
	movq	-104(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -124(%rbp)
	cmpl	$-1, %eax
	je	.LBB1_101
# BB#100:                               #   in Loop: Header=BB1_98 Depth=1
	movb	-124(%rbp), %al
	movslq	-116(%rbp), %rcx
	movq	-72(%rbp), %rdx
	movq	280(%rdx), %rdx
	movb	%al, (%rdx,%rcx)
	jmp	.LBB1_101
.LBB1_102:
	movq	-104(%rbp), %rdi
	callq	fclose
	movq	-64(%rbp), %rax
	movl	$1, (%rax)
	movq	-72(%rbp), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB1_103
.LBB1_63:
	movq	-88(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	-132(%rbp), %eax
	movl	%eax, 8(%rsp)
	movq	$.L.str.9, (%rsp)
	movl	$36, %edi
	movl	$12, %esi
	jmp	.LBB1_47
.LBB1_53:
	movq	-88(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	-132(%rbp), %eax
	movl	%eax, 8(%rsp)
	movq	$.L.str.9, (%rsp)
	movl	$36, %edi
	movl	$20, %esi
	movl	$.L.str.22, %edx
	jmp	.LBB1_48
.LBB1_46:
	movq	-88(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	-132(%rbp), %eax
	movl	%eax, 8(%rsp)
	movq	$.L.str.9, (%rsp)
	movl	$36, %edi
	movl	$11, %esi
.LBB1_47:
	movl	$.L.str.20, %edx
.LBB1_48:
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_5:
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -48(%rbp)
.LBB1_103:
	movq	-48(%rbp), %rax
	addq	$2200, %rsp             # imm = 0x898
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	TrieRead, .Lfunc_end1-TrieRead
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_26
	.quad	.LBB1_29
	.quad	.LBB1_36
	.quad	.LBB1_50
	.quad	.LBB1_54

	.text
	.globl	Hyphenate
	.align	16, 0x90
	.type	Hyphenate,@function
Hyphenate:                              # @Hyphenate
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$6440, %rsp             # imm = 0x1928
.Ltmp14:
	.cfi_offset %rbx, -56
.Ltmp15:
	.cfi_offset %r12, -48
.Ltmp16:
	.cfi_offset %r13, -40
.Ltmp17:
	.cfi_offset %r14, -32
.Ltmp18:
	.cfi_offset %r15, -24
	movq	%rdi, -48(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$17, %eax
	je	.LBB2_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_2:
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	$-1610612737, %r12d     # imm = 0xFFFFFFFF9FFFFFFF
	movb	$1, %r13b
	leaq	-2144(%rbp), %rbx
	leaq	-4208(%rbp), %r15
	leaq	-6272(%rbp), %r14
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_170:                              #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_24 Depth 2
                                        #     Child Loop BB2_71 Depth 2
                                        #     Child Loop BB2_74 Depth 2
                                        #       Child Loop BB2_75 Depth 3
                                        #         Child Loop BB2_77 Depth 4
                                        #           Child Loop BB2_79 Depth 5
                                        #         Child Loop BB2_83 Depth 4
                                        #       Child Loop BB2_91 Depth 3
                                        #       Child Loop BB2_93 Depth 3
                                        #         Child Loop BB2_95 Depth 4
                                        #       Child Loop BB2_99 Depth 3
                                        #     Child Loop BB2_107 Depth 2
                                        #       Child Loop BB2_110 Depth 3
                                        #         Child Loop BB2_112 Depth 4
                                        #         Child Loop BB2_122 Depth 4
                                        #     Child Loop BB2_125 Depth 2
	movq	-56(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB2_171
# BB#4:                                 #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB2_5
	.align	16, 0x90
.LBB2_6:                                #   in Loop: Header=BB2_5 Depth=2
	movq	-64(%rbp), %rax
.LBB2_5:                                #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_6
# BB#7:                                 #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_9
# BB#8:                                 #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_11
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	cmpb	$0, 64(%rax)
	je	.LBB2_11
# BB#10:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	testl	$-2147483648, 40(%rax)  # imm = 0xFFFFFFFF80000000
	je	.LBB2_11
# BB#14:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movl	%eax, -92(%rbp)
	jne	.LBB2_16
# BB#15:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %r9
	leaq	32(%r9), %r8
	addq	$64, %r9
	movl	$36, %edi
	movl	$19, %esi
	movl	$.L.str.4, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	movl	-92(%rbp), %eax
	movq	HyphTables(,%rax,8), %rax
	movq	%rax, -88(%rbp)
	testq	%rax, %rax
	jne	.LBB2_20
# BB#17:                                #   in Loop: Header=BB2_3 Depth=1
	movl	-92(%rbp), %eax
	cmpl	$0, TriedFile(,%rax,4)
	jne	.LBB2_19
# BB#18:                                #   in Loop: Header=BB2_3 Depth=1
	movl	-92(%rbp), %edi
	leaq	-6376(%rbp), %rsi
	callq	TrieRead
	movl	-92(%rbp), %ecx
	movq	%rax, HyphTables(,%rcx,8)
	movq	%rax, -88(%rbp)
	movl	-92(%rbp), %eax
	movl	$1, TriedFile(,%rax,4)
.LBB2_19:                               #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, -88(%rbp)
	je	.LBB2_170
.LBB2_20:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -6288(%rbp)
	movq	-88(%rbp), %rax
	addq	$8, %rax
	movq	%rax, -6280(%rbp)
	movl	$0, -6348(%rbp)
	jmp	.LBB2_21
	.align	16, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_21 Depth=2
	incl	-6348(%rbp)
.LBB2_21:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-6348(%rbp), %rax
	movq	-6288(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movq	-6280(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$1, %eax
	je	.LBB2_22
# BB#23:                                #   in Loop: Header=BB2_3 Depth=1
	movl	-6348(%rbp), %eax
	movl	%eax, -6352(%rbp)
	jmp	.LBB2_24
	.align	16, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_24 Depth=2
	incl	-6352(%rbp)
.LBB2_24:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movq	-6280(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$2, %eax
	jge	.LBB2_25
# BB#26:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$45, %eax
	jne	.LBB2_67
# BB#27:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	cmpb	$0, 1(%rax,%rcx)
	je	.LBB2_170
# BB#28:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	leaq	1(%rax,%rcx), %rsi
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rcx
	movl	40(%rcx), %ecx
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	%ecx, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %edx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rdi
	callq	FontWordSize
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_30
# BB#29:                                #   in Loop: Header=BB2_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_33
	.align	16, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_170
# BB#12:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$13, %eax
	cmpl	$2, %eax
	jne	.LBB2_170
# BB#13:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	andw	$-129, 44(%rax)
	jmp	.LBB2_170
.LBB2_67:                               #   in Loop: Header=BB2_3 Depth=1
	movl	-6352(%rbp), %eax
	subl	-6348(%rbp), %eax
	cmpl	$5, %eax
	jl	.LBB2_170
# BB#68:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB2_70
# BB#69:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movq	-6280(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB2_170
.LBB2_70:                               #   in Loop: Header=BB2_3 Depth=1
	movb	$1, -2144(%rbp)
	movb	$48, -4208(%rbp)
	movl	$0, -6356(%rbp)
	jmp	.LBB2_71
	.align	16, 0x90
.LBB2_72:                               #   in Loop: Header=BB2_71 Depth=2
	movslq	-6348(%rbp), %rax
	movslq	-6356(%rbp), %rcx
	addq	%rcx, %rax
	movq	-6288(%rbp), %rdx
	movzbl	(%rdx,%rax), %eax
	movq	-6280(%rbp), %rdx
	movb	(%rdx,%rax), %al
	movb	%al, 1(%rcx,%rbx)
	movslq	-6356(%rbp), %rax
	movb	$48, 1(%rax,%r15)
	incl	-6356(%rbp)
.LBB2_71:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-6352(%rbp), %eax
	subl	-6348(%rbp), %eax
	cmpl	%eax, -6356(%rbp)
	jl	.LBB2_72
# BB#73:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	-6356(%rbp), %rax
	movb	$1, 1(%rax,%rbx)
	movslq	-6356(%rbp), %rax
	movb	$48, 1(%rax,%r15)
	movslq	-6356(%rbp), %rax
	movb	$0, 2(%rax,%rbx)
	movslq	-6356(%rbp), %rax
	movb	$48, 2(%rax,%r15)
	movslq	-6356(%rbp), %rax
	movb	$0, 3(%rax,%r15)
	movq	%rbx, -6296(%rbp)
	.align	16, 0x90
.LBB2_74:                               #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_75 Depth 3
                                        #         Child Loop BB2_77 Depth 4
                                        #           Child Loop BB2_79 Depth 5
                                        #         Child Loop BB2_83 Depth 4
                                        #       Child Loop BB2_91 Depth 3
                                        #       Child Loop BB2_93 Depth 3
                                        #         Child Loop BB2_95 Depth 4
                                        #       Child Loop BB2_99 Depth 3
	movl	$0, -6360(%rbp)
	movq	-6296(%rbp), %rax
	movq	%rax, -6304(%rbp)
	jmp	.LBB2_75
	.align	16, 0x90
.LBB2_103:                              #   in Loop: Header=BB2_75 Depth=3
	movl	-6364(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -6360(%rbp)
	incq	-6304(%rbp)
.LBB2_75:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_77 Depth 4
                                        #           Child Loop BB2_79 Depth 5
                                        #         Child Loop BB2_83 Depth 4
	movslq	-6360(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	264(%rcx), %rcx
	movswl	(%rcx,%rax,2), %eax
	movl	%eax, -6368(%rbp)
	testl	%eax, %eax
	jns	.LBB2_87
# BB#76:                                #   in Loop: Header=BB2_75 Depth=3
	movq	%r14, -6392(%rbp)
	movslq	-6368(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	280(%rcx), %rcx
	subq	%rax, %rcx
	movq	%rcx, -6384(%rbp)
	jmp	.LBB2_77
	.align	16, 0x90
.LBB2_81:                               #   in Loop: Header=BB2_77 Depth=4
	movzbl	-6393(%rbp), %eax
	addl	$46, %eax
	movq	-6392(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -6392(%rbp)
	movb	%al, (%rcx)
	incq	-6384(%rbp)
.LBB2_77:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        #       Parent Loop BB2_75 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_79 Depth 5
	movq	-6384(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_82
# BB#78:                                #   in Loop: Header=BB2_77 Depth=4
	movq	-6384(%rbp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	movl	%eax, -6404(%rbp)
	movq	-6384(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movb	%al, -6393(%rbp)
	movl	$0, -6400(%rbp)
	jmp	.LBB2_79
	.align	16, 0x90
.LBB2_80:                               #   in Loop: Header=BB2_79 Depth=5
	movq	-6392(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6392(%rbp)
	movb	$48, (%rax)
	incl	-6400(%rbp)
.LBB2_79:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        #       Parent Loop BB2_75 Depth=3
                                        #         Parent Loop BB2_77 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movl	-6400(%rbp), %eax
	cmpl	-6404(%rbp), %eax
	jl	.LBB2_80
	jmp	.LBB2_81
	.align	16, 0x90
.LBB2_82:                               #   in Loop: Header=BB2_75 Depth=3
	movq	-6392(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6392(%rbp)
	movb	$0, (%rax)
	movq	%r14, -6416(%rbp)
	movq	-6296(%rbp), %rax
	subq	%rbx, %rax
	leaq	-4208(%rbp,%rax), %rax
	movq	%rax, -6424(%rbp)
	jmp	.LBB2_83
	.align	16, 0x90
.LBB2_86:                               #   in Loop: Header=BB2_83 Depth=4
	incq	-6416(%rbp)
	incq	-6424(%rbp)
.LBB2_83:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        #       Parent Loop BB2_75 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-6416(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_87
# BB#84:                                #   in Loop: Header=BB2_83 Depth=4
	movq	-6416(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-6424(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_86
# BB#85:                                #   in Loop: Header=BB2_83 Depth=4
	movq	-6416(%rbp), %rax
	movb	(%rax), %al
	movq	-6424(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB2_86
	.align	16, 0x90
.LBB2_87:                               #   in Loop: Header=BB2_75 Depth=3
	movq	-6304(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_105
# BB#88:                                #   in Loop: Header=BB2_75 Depth=3
	movslq	-6360(%rbp), %rax
	movq	-6304(%rbp), %rcx
	movzbl	(%rcx), %ecx
	addq	%rax, %rcx
	movq	-88(%rbp), %rax
	movq	264(%rax), %rax
	movswl	(%rax,%rcx,2), %eax
	movl	%eax, -6364(%rbp)
	testl	%eax, %eax
	je	.LBB2_105
# BB#89:                                #   in Loop: Header=BB2_75 Depth=3
	cmpl	$0, -6364(%rbp)
	jns	.LBB2_103
# BB#90:                                #   in Loop: Header=BB2_74 Depth=2
	movslq	-6364(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	280(%rcx), %rcx
	subq	%rax, %rcx
	movq	%rcx, -6320(%rbp)
	.align	16, 0x90
.LBB2_91:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-6320(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_92
# BB#104:                               #   in Loop: Header=BB2_91 Depth=3
	movq	-6304(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6304(%rbp)
	movzbl	1(%rax), %eax
	movq	-6320(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -6320(%rbp)
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	je	.LBB2_91
	jmp	.LBB2_105
.LBB2_92:                               #   in Loop: Header=BB2_74 Depth=2
	movq	%r14, -6440(%rbp)
	movq	-6320(%rbp), %rax
	incq	%rax
	movq	%rax, -6432(%rbp)
	jmp	.LBB2_93
	.align	16, 0x90
.LBB2_97:                               #   in Loop: Header=BB2_93 Depth=3
	movzbl	-6441(%rbp), %eax
	addl	$46, %eax
	movq	-6440(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -6440(%rbp)
	movb	%al, (%rcx)
	incq	-6432(%rbp)
.LBB2_93:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_95 Depth 4
	movq	-6432(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_98
# BB#94:                                #   in Loop: Header=BB2_93 Depth=3
	movq	-6432(%rbp), %rax
	movzbl	(%rax), %eax
	shrl	$4, %eax
	movl	%eax, -6452(%rbp)
	movq	-6432(%rbp), %rax
	movzbl	(%rax), %eax
	andl	$15, %eax
	movb	%al, -6441(%rbp)
	movl	$0, -6448(%rbp)
	jmp	.LBB2_95
	.align	16, 0x90
.LBB2_96:                               #   in Loop: Header=BB2_95 Depth=4
	movq	-6440(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6440(%rbp)
	movb	$48, (%rax)
	incl	-6448(%rbp)
.LBB2_95:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        #       Parent Loop BB2_93 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	-6448(%rbp), %eax
	cmpl	-6452(%rbp), %eax
	jl	.LBB2_96
	jmp	.LBB2_97
.LBB2_98:                               #   in Loop: Header=BB2_74 Depth=2
	movq	-6440(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6440(%rbp)
	movb	$0, (%rax)
	movq	%r14, -6464(%rbp)
	movq	-6296(%rbp), %rax
	subq	%rbx, %rax
	leaq	-4208(%rbp,%rax), %rax
	movq	%rax, -6472(%rbp)
	jmp	.LBB2_99
	.align	16, 0x90
.LBB2_102:                              #   in Loop: Header=BB2_99 Depth=3
	incq	-6464(%rbp)
	incq	-6472(%rbp)
.LBB2_99:                               #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-6464(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_105
# BB#100:                               #   in Loop: Header=BB2_99 Depth=3
	movq	-6464(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-6472(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jle	.LBB2_102
# BB#101:                               #   in Loop: Header=BB2_99 Depth=3
	movq	-6464(%rbp), %rax
	movb	(%rax), %al
	movq	-6472(%rbp), %rcx
	movb	%al, (%rcx)
	jmp	.LBB2_102
	.align	16, 0x90
.LBB2_105:                              #   in Loop: Header=BB2_74 Depth=2
	movq	-6296(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6296(%rbp)
	movzbl	2(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB2_74
# BB#106:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	andl	$4095, %eax             # imm = 0xFFF
	movq	finfo(%rip), %rcx
	leaq	(%rax,%rax,2), %rax
	shlq	$5, %rax
	movq	8(%rcx,%rax), %rax
	movq	%rax, -6328(%rbp)
	movq	-6288(%rbp), %rax
	movq	%rax, -6312(%rbp)
	movl	$2, -6356(%rbp)
	jmp	.LBB2_107
	.align	16, 0x90
.LBB2_121:                              #   in Loop: Header=BB2_107 Depth=2
	incq	-6312(%rbp)
	incl	-6356(%rbp)
.LBB2_107:                              #   Parent Loop BB2_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_110 Depth 3
                                        #         Child Loop BB2_112 Depth 4
                                        #         Child Loop BB2_122 Depth 4
	movq	-6312(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB2_124
# BB#108:                               #   in Loop: Header=BB2_107 Depth=2
	movq	-6312(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-6328(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	cmpl	$2, %eax
	jl	.LBB2_121
# BB#109:                               #   in Loop: Header=BB2_107 Depth=2
	movq	-6312(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-6328(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	leaq	256(%rax,%rcx), %rax
	movq	%rax, -6336(%rbp)
	jmp	.LBB2_110
	.align	16, 0x90
.LBB2_123:                              #   in Loop: Header=BB2_110 Depth=3
	incq	-6336(%rbp)
.LBB2_110:                              #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_107 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_112 Depth 4
                                        #         Child Loop BB2_122 Depth 4
	movq	-6336(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6336(%rbp)
	movzbl	(%rax), %eax
	movq	-6312(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_121
# BB#111:                               #   in Loop: Header=BB2_110 Depth=3
	movq	-6312(%rbp), %rax
	incq	%rax
	movq	%rax, -6344(%rbp)
	jmp	.LBB2_112
	.align	16, 0x90
.LBB2_118:                              #   in Loop: Header=BB2_112 Depth=4
	incq	-6336(%rbp)
	incq	-6344(%rbp)
.LBB2_112:                              #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_107 Depth=2
                                        #       Parent Loop BB2_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-6336(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-6344(%rbp), %rcx
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB2_113
# BB#114:                               #   in Loop: Header=BB2_112 Depth=4
	movq	-6336(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB2_115
# BB#116:                               #   in Loop: Header=BB2_112 Depth=4
	movq	-6344(%rbp), %rax
	cmpb	$0, (%rax)
	setne	%al
	jmp	.LBB2_117
	.align	16, 0x90
.LBB2_113:                              #   in Loop: Header=BB2_112 Depth=4
	xorl	%eax, %eax
	jmp	.LBB2_117
.LBB2_115:                              #   in Loop: Header=BB2_112 Depth=4
	xorl	%eax, %eax
	.align	16, 0x90
.LBB2_117:                              #   in Loop: Header=BB2_112 Depth=4
	testb	%al, %al
	jne	.LBB2_118
# BB#119:                               #   in Loop: Header=BB2_110 Depth=3
	movq	-6336(%rbp), %rax
	cmpb	$0, 1(%rax)
	je	.LBB2_120
	.align	16, 0x90
.LBB2_122:                              #   Parent Loop BB2_3 Depth=1
                                        #     Parent Loop BB2_107 Depth=2
                                        #       Parent Loop BB2_110 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	-6336(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -6336(%rbp)
	cmpb	$0, 1(%rax)
	jne	.LBB2_122
	jmp	.LBB2_123
	.align	16, 0x90
.LBB2_120:                              #   in Loop: Header=BB2_107 Depth=2
	movslq	-6356(%rbp), %rax
	movb	$48, -4208(%rbp,%rax)
	jmp	.LBB2_121
.LBB2_124:                              #   in Loop: Header=BB2_3 Depth=1
	movl	$0, -6372(%rbp)
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movl	-6352(%rbp), %eax
	subl	-6348(%rbp), %eax
	decl	%eax
	movl	%eax, -6356(%rbp)
	jmp	.LBB2_125
	.align	16, 0x90
.LBB2_166:                              #   in Loop: Header=BB2_125 Depth=2
	decl	-6356(%rbp)
.LBB2_125:                              #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, -6356(%rbp)
	jl	.LBB2_167
# BB#126:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	-6356(%rbp), %rax
	movzbl	-4208(%rbp,%rax), %eax
	testb	$1, %al
	je	.LBB2_166
# BB#127:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	-6348(%rbp), %rax
	movslq	-6356(%rbp), %rcx
	addq	%rax, %rcx
	movq	-6288(%rbp), %rax
	leaq	-1(%rax,%rcx), %rsi
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rcx
	movl	40(%rcx), %ecx
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %ecx
	movl	40(%rax), %edx
	movl	$-4096, %esi            # imm = 0xFFFFFFFFFFFFF000
	andl	%esi, %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4190209, %esi         # imm = 0xFFFFFFFFFFC00FFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$4194304, %edx          # imm = 0x400000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-4194305, %esi         # imm = 0xFFFFFFFFFFBFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	movl	$-528482305, %esi       # imm = 0xFFFFFFFFE07FFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	%ecx, %eax
	movq	-72(%rbp), %rcx
	movl	40(%rcx), %edx
	movl	$2147483647, %esi       # imm = 0x7FFFFFFF
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-72(%rbp), %rdi
	callq	FontWordSize
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_129
# BB#128:                               #   in Loop: Header=BB2_125 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_132
	.align	16, 0x90
.LBB2_129:                              #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_130
# BB#131:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_132
.LBB2_130:                              #   in Loop: Header=BB2_125 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_132:                              #   in Loop: Header=BB2_125 Depth=2
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_135
# BB#133:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_135
# BB#134:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_135:                              #   in Loop: Header=BB2_125 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_138
# BB#136:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_138
# BB#137:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_138:                              #   in Loop: Header=BB2_125 Depth=2
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_140
# BB#139:                               #   in Loop: Header=BB2_125 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_143
	.align	16, 0x90
.LBB2_140:                              #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_141
# BB#142:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_143
.LBB2_141:                              #   in Loop: Header=BB2_125 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_143:                              #   in Loop: Header=BB2_125 Depth=2
	movq	zz_hold(%rip), %rax
	movb	$1, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	movb	$0, 42(%rax)
	movq	-72(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-72(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-72(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-72(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$16384, %ecx            # imm = 0x4000
	movw	%cx, 44(%rax)
	movq	-72(%rbp), %rax
	movw	$0, 46(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_145
# BB#144:                               #   in Loop: Header=BB2_125 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_148
	.align	16, 0x90
.LBB2_145:                              #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_146
# BB#147:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_148
.LBB2_146:                              #   in Loop: Header=BB2_125 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_148:                              #   in Loop: Header=BB2_125 Depth=2
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_151
# BB#149:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_151
# BB#150:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_151:                              #   in Loop: Header=BB2_125 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_154
# BB#152:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_154
# BB#153:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_154:                              #   in Loop: Header=BB2_125 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_156
# BB#155:                               #   in Loop: Header=BB2_125 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_159
	.align	16, 0x90
.LBB2_156:                              #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_157
# BB#158:                               #   in Loop: Header=BB2_125 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_159
.LBB2_157:                              #   in Loop: Header=BB2_125 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_159:                              #   in Loop: Header=BB2_125 Depth=2
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
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_162
# BB#160:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_162
# BB#161:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_162:                              #   in Loop: Header=BB2_125 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.6, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_165
# BB#163:                               #   in Loop: Header=BB2_125 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB2_165
# BB#164:                               #   in Loop: Header=BB2_125 Depth=2
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
.LBB2_165:                              #   in Loop: Header=BB2_125 Depth=2
	movslq	-6348(%rbp), %rax
	movslq	-6356(%rbp), %rcx
	addq	%rax, %rcx
	movq	-6288(%rbp), %rax
	movb	$0, -1(%rax,%rcx)
	movl	$1, -6372(%rbp)
	jmp	.LBB2_166
.LBB2_167:                              #   in Loop: Header=BB2_3 Depth=1
	cmpl	$0, -6372(%rbp)
	je	.LBB2_170
# BB#168:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rdi
	callq	FontWordSize
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB2_169
.LBB2_30:                               #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_31
# BB#32:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_33
.LBB2_31:                               #   in Loop: Header=BB2_3 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_33:                               #   in Loop: Header=BB2_3 Depth=1
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_36
# BB#34:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_36
# BB#35:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_36:                               #   in Loop: Header=BB2_3 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_39
# BB#37:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_39
# BB#38:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_39:                               #   in Loop: Header=BB2_3 Depth=1
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_41
# BB#40:                                #   in Loop: Header=BB2_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_44
.LBB2_41:                               #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_42
# BB#43:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_44
.LBB2_42:                               #   in Loop: Header=BB2_3 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_44:                               #   in Loop: Header=BB2_3 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$1, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	movb	$0, 42(%rax)
	movq	-72(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-72(%rbp), %rax
	andw	$-129, 44(%rax)
	movq	-72(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-72(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-72(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$16384, %ecx            # imm = 0x4000
	movw	%cx, 44(%rax)
	movq	-72(%rbp), %rax
	movw	$0, 46(%rax)
	movq	-64(%rbp), %rax
	movq	-72(%rbp), %rcx
	movl	40(%rax), %eax
	movl	$1610612736, %edx       # imm = 0x60000000
	andl	%edx, %eax
	movl	40(%rcx), %edx
	andl	%r12d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_46
# BB#45:                                #   in Loop: Header=BB2_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_49
.LBB2_46:                               #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_47
# BB#48:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_49
.LBB2_47:                               #   in Loop: Header=BB2_3 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_49:                               #   in Loop: Header=BB2_3 Depth=1
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
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_52
# BB#50:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_52
# BB#51:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_52:                               #   in Loop: Header=BB2_3 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_55
# BB#53:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_55
# BB#54:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_55:                               #   in Loop: Header=BB2_3 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB2_57
# BB#56:                                #   in Loop: Header=BB2_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_60
.LBB2_57:                               #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_58
# BB#59:                                #   in Loop: Header=BB2_3 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_60
.LBB2_58:                               #   in Loop: Header=BB2_3 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_60:                               #   in Loop: Header=BB2_3 Depth=1
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
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_63
# BB#61:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_63
# BB#62:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_63:                               #   in Loop: Header=BB2_3 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rdx
	addq	$32, %rdx
	movl	$11, %edi
	movl	$.L.str.6, %esi
	callq	MakeWord
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_66
# BB#64:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_66
# BB#65:                                #   in Loop: Header=BB2_3 Depth=1
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
.LBB2_66:                               #   in Loop: Header=BB2_3 Depth=1
	movslq	-6352(%rbp), %rax
	movq	-6288(%rbp), %rcx
	movb	$0, 1(%rax,%rcx)
	movq	-64(%rbp), %rdi
	callq	FontWordSize
	movq	-56(%rbp), %rax
	movq	8(%rax), %rax
.LBB2_169:                              #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, -56(%rbp)
	jmp	.LBB2_170
.LBB2_171:
	movq	-48(%rbp), %rax
	addq	$6440, %rsp             # imm = 0x1928
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	Hyphenate, .Lfunc_end2-Hyphenate
	.cfi_endproc

	.align	16, 0x90
	.type	NewTrie,@function
NewTrie:                                # @NewTrie
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
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movl	-8(%rbp), %ecx
	leaq	296(%rcx,%rax,2), %rdi
	callq	malloc
	movq	%rax, -16(%rbp)
	testq	%rax, %rax
	jne	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$36, %edi
	movl	$4, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB3_2:
	movq	-16(%rbp), %rax
	movl	$5361534, (%rax)        # imm = 0x51CF7E
	movq	-16(%rbp), %rax
	movl	$1, 4(%rax)
	movl	$0, -20(%rbp)
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movb	$0, 8(%rcx,%rax)
	incl	-20(%rbp)
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$255, -20(%rbp)
	jle	.LBB3_4
# BB#5:
	movq	-16(%rbp), %rax
	leaq	296(%rax), %rcx
	movq	%rcx, 264(%rax)
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 272(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 276(%rax)
	movl	-4(%rbp), %eax
	movq	-16(%rbp), %rcx
	addq	%rax, %rax
	addq	264(%rcx), %rax
	movq	%rax, 280(%rcx)
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 292(%rcx)
	movq	-16(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movq	-16(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	NewTrie, .Lfunc_end3-NewTrie
	.cfi_endproc

	.align	16, 0x90
	.type	DecodeEscapes,@function
DecodeEscapes:                          # @DecodeEscapes
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	%rax, -32(%rbp)
	jmp	.LBB4_1
	.align	16, 0x90
.LBB4_10:                               #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movb	(%rax), %al
	movq	-32(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -32(%rbp)
	movb	%al, (%rcx)
.LBB4_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_4 Depth 2
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB4_11
# BB#2:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-40(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$92, %eax
	jne	.LBB4_10
# BB#3:                                 #   in Loop: Header=BB4_1 Depth=1
	movl	$0, -44(%rbp)
	jmp	.LBB4_4
	.align	16, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_4 Depth=2
	addl	$3, -44(%rbp)
.LBB4_4:                                #   Parent Loop BB4_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-44(%rbp), %rax
	movq	tex_codes(,%rax,8), %rax
	cmpb	$0, (%rax)
	je	.LBB4_7
# BB#5:                                 #   in Loop: Header=BB4_4 Depth=2
	movq	-40(%rbp), %rdi
	incq	%rdi
	movslq	-44(%rbp), %rax
	movq	tex_codes+8(,%rax,8), %rsi
	callq	StringBeginsWith
	testl	%eax, %eax
	je	.LBB4_6
.LBB4_7:                                #   in Loop: Header=BB4_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	tex_codes(,%rax,8), %rax
	cmpb	$0, (%rax)
	je	.LBB4_9
# BB#8:                                 #   in Loop: Header=BB4_1 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-44(%rbp), %rax
	movq	tex_codes+16(,%rax,8), %rsi
	callq	strcpy
	movslq	-44(%rbp), %rax
	movq	tex_codes+16(,%rax,8), %rdi
	callq	strlen
	addq	%rax, -32(%rbp)
	movslq	-44(%rbp), %rax
	movq	tex_codes+8(,%rax,8), %rdi
	callq	strlen
	movq	-40(%rbp), %rcx
	leaq	1(%rax,%rcx), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB4_1
.LBB4_9:                                #   in Loop: Header=BB4_1 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	-20(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$36, %edi
	movl	$1, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB4_1
.LBB4_11:
	movq	-32(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -32(%rbp)
	movb	$0, (%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	DecodeEscapes, .Lfunc_end4-DecodeEscapes
	.cfi_endproc

	.align	16, 0x90
	.type	AddClassToTrie,@function
AddClassToTrie:                         # @AddClassToTrie
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
	movq	%rsi, -16(%rbp)
	movl	292(%rsi), %eax
	cmpl	288(%rsi), %eax
	je	.LBB5_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.168, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movl	$0, -20(%rbp)
	jmp	.LBB5_3
	.align	16, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_3 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %r9d
	movl	$36, %edi
	movl	$6, %esi
	movl	$.L.str.169, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	incl	-20(%rbp)
.LBB5_3:                                # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB5_7
# BB#4:                                 #   in Loop: Header=BB5_3 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movq	-16(%rbp), %rcx
	cmpb	$0, 8(%rcx,%rax)
	jne	.LBB5_6
# BB#5:                                 #   in Loop: Header=BB5_3 Depth=1
	movq	-16(%rbp), %rax
	movb	4(%rax), %cl
	movslq	-20(%rbp), %rdx
	movq	-8(%rbp), %rsi
	movzbl	(%rsi,%rdx), %edx
	movb	%cl, 8(%rax,%rdx)
	incl	-20(%rbp)
	jmp	.LBB5_3
.LBB5_7:
	movq	-16(%rbp), %rax
	incl	4(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	AddClassToTrie, .Lfunc_end5-AddClassToTrie
	.cfi_endproc

	.align	16, 0x90
	.type	TrieInsert,@function
TrieInsert:                             # @TrieInsert
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
	subq	$1152, %rsp             # imm = 0x480
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%r8d, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 276(%rax)
	jne	.LBB6_2
# BB#1:
	movq	-32(%rbp), %rax
	movl	4(%rax), %ecx
	leal	-1(%rcx), %edx
	sarl	$31, %edx
	shrl	$30, %edx
	leal	-1(%rcx,%rdx), %ecx
	andl	$-4, %ecx
	addl	$4, %ecx
	movl	%ecx, 4(%rax)
	movq	-32(%rbp), %rdi
	callq	NewTrieNode
	movl	%eax, -1092(%rbp)
.LBB6_2:
	movq	-24(%rbp), %rax
	decq	%rax
	movq	%rax, -1120(%rbp)
	leaq	-1072(%rbp), %rax
	movq	%rax, -1104(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -1112(%rbp)
	jmp	.LBB6_3
	.align	16, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_3 Depth=1
	incq	-1112(%rbp)
.LBB6_3:                                # =>This Inner Loop Header: Depth=1
	movq	-1112(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB6_8
# BB#4:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	-1112(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$48, %eax
	jne	.LBB6_6
# BB#5:                                 #   in Loop: Header=BB6_3 Depth=1
	movq	-1112(%rbp), %rax
	subq	-1120(%rbp), %rax
	decq	%rax
	cmpq	$15, %rax
	jl	.LBB6_7
.LBB6_6:                                #   in Loop: Header=BB6_3 Depth=1
	movq	-1112(%rbp), %rax
	movl	-1120(%rbp), %ecx
	movzbl	(%rax), %edx
	subl	%ecx, %eax
	shll	$4, %eax
	addl	$-16, %eax
	addl	$-46, %edx
	orl	%eax, %edx
	movq	-1104(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -1104(%rbp)
	movb	%dl, (%rax)
	movq	-1112(%rbp), %rax
	movq	%rax, -1120(%rbp)
	jmp	.LBB6_7
.LBB6_8:
	movq	-1104(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -1104(%rbp)
	movb	$0, (%rax)
	movl	$0, -1124(%rbp)
	jmp	.LBB6_9
	.align	16, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_9 Depth=1
	movslq	-1124(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %ecx
	movq	-32(%rbp), %rdx
	movb	8(%rdx,%rcx), %cl
	movb	%cl, -560(%rbp,%rax)
	incl	-1124(%rbp)
.LBB6_9:                                # =>This Inner Loop Header: Depth=1
	movslq	-1124(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB6_13
# BB#10:                                #   in Loop: Header=BB6_9 Depth=1
	movslq	-1124(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx,%rax), %eax
	movq	-32(%rbp), %rcx
	cmpb	$0, 8(%rcx,%rax)
	jne	.LBB6_11
# BB#12:                                #   in Loop: Header=BB6_9 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-40(%rbp), %r9
	movl	-44(%rbp), %eax
	movslq	-1124(%rbp), %rcx
	movq	-16(%rbp), %rdx
	movzbl	(%rdx,%rcx), %ecx
	movl	%ecx, 8(%rsp)
	movl	%eax, (%rsp)
	movl	$36, %edi
	movl	$2, %esi
	movl	$.L.str.170, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	incl	-1124(%rbp)
	jmp	.LBB6_9
.LBB6_13:
	movslq	-1124(%rbp), %rax
	movb	$0, -560(%rbp,%rax)
	movl	$0, -1076(%rbp)
	movl	$0, -1080(%rbp)
	jmp	.LBB6_14
	.align	16, 0x90
.LBB6_29:                               #   in Loop: Header=BB6_14 Depth=1
	movl	-1084(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -1080(%rbp)
	incl	-1076(%rbp)
.LBB6_14:                               # =>This Inner Loop Header: Depth=1
	movslq	-1076(%rbp), %rax
	cmpb	$0, -560(%rbp,%rax)
	je	.LBB6_15
# BB#19:                                #   in Loop: Header=BB6_14 Depth=1
	movslq	-1080(%rbp), %rax
	movslq	-1076(%rbp), %rcx
	movzbl	-560(%rbp,%rcx), %ecx
	addq	%rax, %rcx
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movswl	(%rax,%rcx,2), %eax
	movl	%eax, -1084(%rbp)
	testl	%eax, %eax
	je	.LBB6_20
# BB#25:                                #   in Loop: Header=BB6_14 Depth=1
	cmpl	$0, -1084(%rbp)
	jns	.LBB6_29
# BB#26:                                #   in Loop: Header=BB6_14 Depth=1
	xorl	%eax, %eax
	subl	-1084(%rbp), %eax
	movl	%eax, -1088(%rbp)
	movslq	-1088(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	280(%rcx), %rcx
	movzbl	(%rcx,%rax), %eax
	movl	%eax, -1092(%rbp)
	movq	-32(%rbp), %rax
	movl	292(%rax), %eax
	cmpl	-1088(%rbp), %eax
	jne	.LBB6_28
# BB#27:                                #   in Loop: Header=BB6_14 Depth=1
	movq	-32(%rbp), %rax
	incl	292(%rax)
.LBB6_28:                               #   in Loop: Header=BB6_14 Depth=1
	movq	-32(%rbp), %rdi
	callq	NewTrieNode
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$30, %ecx
	addl	%eax, %ecx
	sarl	$2, %ecx
	movl	%ecx, -1084(%rbp)
	movslq	-1080(%rbp), %rax
	movslq	-1076(%rbp), %rdx
	movzbl	-560(%rbp,%rdx), %edx
	addq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	264(%rax), %rax
	movw	%cx, (%rax,%rdx,2)
	movl	-1088(%rbp), %eax
	notl	%eax
	movslq	-1084(%rbp), %rcx
	movslq	-1092(%rbp), %rdx
	leaq	(%rdx,%rcx,4), %rcx
	movq	-32(%rbp), %rdx
	movq	264(%rdx), %rdx
	movw	%ax, (%rdx,%rcx,2)
	jmp	.LBB6_29
.LBB6_15:
	movslq	-1080(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	264(%rcx), %rcx
	cmpw	$0, (%rcx,%rax,2)
	je	.LBB6_17
# BB#16:
	movq	no_fpos(%rip), %r8
	movq	-16(%rbp), %r9
	movl	$36, %edi
	movl	$7, %esi
	movl	$.L.str.171, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB6_31
.LBB6_20:
	movq	-32(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	callq	NewTrieString
	cwtl
	movl	%eax, -1092(%rbp)
	testl	%eax, %eax
	js	.LBB6_21
# BB#22:
	movslq	-1076(%rbp), %rax
	leaq	-560(%rbp), %rcx
	leaq	1(%rax,%rcx), %rdi
	movq	-32(%rbp), %rsi
	callq	NewTrieString
	movw	%ax, -1094(%rbp)
	movswl	-1094(%rbp), %eax
	testl	%eax, %eax
	js	.LBB6_23
# BB#24:
	movzwl	-1094(%rbp), %eax
	negl	%eax
	movslq	-1080(%rbp), %rcx
	movslq	-1076(%rbp), %rdx
	movzbl	-560(%rbp,%rdx), %edx
	addq	%rcx, %rdx
	movq	-32(%rbp), %rcx
	movq	264(%rcx), %rcx
	movw	%ax, (%rcx,%rdx,2)
	jmp	.LBB6_31
.LBB6_17:
	movq	-32(%rbp), %rsi
	leaq	-1072(%rbp), %rdi
	callq	NewTrieString
	movw	%ax, -1094(%rbp)
	movswl	-1094(%rbp), %eax
	testl	%eax, %eax
	js	.LBB6_18
# BB#30:
	movzwl	-1094(%rbp), %eax
	negl	%eax
	movslq	-1080(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	264(%rdx), %rdx
	movw	%ax, (%rdx,%rcx,2)
.LBB6_31:
	movl	$1, -4(%rbp)
	jmp	.LBB6_32
.LBB6_21:
	movl	$0, -4(%rbp)
	jmp	.LBB6_32
.LBB6_23:
	movl	$0, -4(%rbp)
	jmp	.LBB6_32
.LBB6_18:
	movl	$0, -4(%rbp)
.LBB6_32:
	movl	-4(%rbp), %eax
	addq	$1152, %rsp             # imm = 0x480
	popq	%rbp
	retq
.Lfunc_end6:
	.size	TrieInsert, .Lfunc_end6-TrieInsert
	.cfi_endproc

	.align	16, 0x90
	.type	CompressTrie,@function
CompressTrie:                           # @CompressTrie
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
	movq	%rdi, -8(%rbp)
	movl	276(%rdi), %eax
	movl	%eax, 272(%rdi)
	movl	$0, -32(%rbp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	incl	-32(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	272(%rcx), %eax
	jge	.LBB7_5
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rcx
	movswl	(%rcx,%rax,2), %eax
	testl	%eax, %eax
	jns	.LBB7_4
# BB#3:                                 #   in Loop: Header=BB7_1 Depth=1
	movslq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rdx
	movzwl	(%rdx,%rax,2), %esi
	negl	%esi
	subl	292(%rcx), %esi
	negl	%esi
	movw	%si, (%rdx,%rax,2)
	jmp	.LBB7_4
.LBB7_5:
	movq	-8(%rbp), %rax
	movslq	276(%rax), %rcx
	addq	%rcx, %rcx
	addq	264(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movq	-8(%rbp), %rax
	movslq	292(%rax), %rcx
	addq	280(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	288(%rax), %ecx
	subl	292(%rax), %ecx
	movl	%ecx, -28(%rbp)
	movl	$0, -32(%rbp)
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_6 Depth=1
	movq	-24(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %al
	movq	-16(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -16(%rbp)
	movb	%al, (%rcx)
	incl	-32(%rbp)
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.LBB7_7
# BB#8:
	movq	-8(%rbp), %rax
	movslq	272(%rax), %rcx
	addq	%rcx, %rcx
	addq	264(%rax), %rcx
	movq	%rcx, 280(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 292(%rax)
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, 288(%rcx)
	movq	-8(%rbp), %rax
	movl	272(%rax), %ecx
	movl	288(%rax), %eax
	leal	296(%rax,%rcx,2), %eax
	movl	%eax, -28(%rbp)
	popq	%rbp
	retq
.Lfunc_end7:
	.size	CompressTrie, .Lfunc_end7-CompressTrie
	.cfi_endproc

	.align	16, 0x90
	.type	BePutInt,@function
BePutInt:                               # @BePutInt
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movzbl	-9(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movzbl	-10(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movl	-12(%rbp), %eax
	movzbl	%ah, %edi  # NOREX
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	movzbl	-12(%rbp), %edi
	movq	-8(%rbp), %rsi
	callq	_IO_putc
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	BePutInt, .Lfunc_end8-BePutInt
	.cfi_endproc

	.align	16, 0x90
	.type	BeGetInt,@function
BeGetInt:                               # @BeGetInt
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_1
# BB#2:
	movl	-28(%rbp), %eax
	shll	$24, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_3
# BB#4:
	movzbl	-28(%rbp), %eax
	shll	$16, %eax
	movq	-24(%rbp), %rcx
	orl	%eax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_5
# BB#6:
	movzbl	-28(%rbp), %eax
	shll	$8, %eax
	movq	-24(%rbp), %rcx
	orl	%eax, (%rcx)
	movq	-16(%rbp), %rdi
	callq	_IO_getc
	movl	%eax, -28(%rbp)
	cmpl	$-1, %eax
	je	.LBB9_7
# BB#8:
	movzbl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	orl	%eax, (%rcx)
	movl	$0, -4(%rbp)
	jmp	.LBB9_9
.LBB9_1:
	movl	$-1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_3:
	movl	$-1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_5:
	movl	$-1, -4(%rbp)
	jmp	.LBB9_9
.LBB9_7:
	movl	$-1, -4(%rbp)
.LBB9_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	BeGetInt, .Lfunc_end9-BeGetInt
	.cfi_endproc

	.align	16, 0x90
	.type	NewTrieNode,@function
NewTrieNode:                            # @NewTrieNode
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	276(%rdi), %eax
	addl	4(%rdi), %eax
	cmpl	272(%rdi), %eax
	jle	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$36, %edi
	movl	$5, %esi
	movl	$.L.str.172, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB10_2:
	movq	-8(%rbp), %rax
	movl	276(%rax), %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	%ecx, 276(%rax)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_3
	.align	16, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	264(%rcx), %rcx
	movw	$0, (%rcx,%rax,2)
	incl	-12(%rbp)
.LBB10_3:                               # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	276(%rcx), %eax
	jl	.LBB10_4
# BB#5:
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	NewTrieNode, .Lfunc_end10-NewTrieNode
	.cfi_endproc

	.align	16, 0x90
	.type	NewTrieString,@function
NewTrieString:                          # @NewTrieString
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$24, %rsp
.Ltmp46:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	292(%rsi), %ebx
	movq	-16(%rbp), %rdi
	callq	strlen
	subl	%eax, %ebx
	decl	%ebx
	movw	%bx, -26(%rbp)
	movswl	-26(%rbp), %eax
	testl	%eax, %eax
	js	.LBB11_2
# BB#1:
	movswl	-26(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, 292(%rcx)
	movswq	-26(%rbp), %rdi
	movq	-24(%rbp), %rax
	addq	280(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	strcpy
.LBB11_2:
	movswl	-26(%rbp), %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	NewTrieString, .Lfunc_end11-NewTrieString
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ReadHyphTable: lnum <= 0!"
	.size	.L.str.1, 26

	.type	HyphTables,@object      # @HyphTables
	.local	HyphTables
	.comm	HyphTables,512,16
	.type	TriedFile,@object       # @TriedFile
	.local	TriedFile
	.comm	TriedFile,256,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ReadHyphTable!"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Hyphenate: type(x) != ACAT!"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"no current language for word %s"
	.size	.L.str.4, 32

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"0ch"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"TrieRead: fname!"
	.size	.L.str.7, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	".lp"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	".lh"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"cannot open hyphenation file %s"
	.size	.L.str.10, 32

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Lout hyphenation information\n"
	.size	.L.str.11, 30

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Lout hyphenation placeholder\n"
	.size	.L.str.12, 30

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"header line of hyphenation file %s missing"
	.size	.L.str.13, 43

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s%n"
	.size	.L.str.14, 5

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Classes:"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Classes heading of hyphenation file %s missing"
	.size	.L.str.16, 47

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Exceptions:"
	.size	.L.str.17, 12

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Patterns:"
	.size	.L.str.18, 10

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LengthLimit:"
	.size	.L.str.19, 13

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"hyphenation file %s%s is too large (at line %d)"
	.size	.L.str.20, 48

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"%d"
	.size	.L.str.21, 3

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"bad LengthLimit in hyphenation file %s%s (line %d)"
	.size	.L.str.22, 51

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"TrieRead: state"
	.size	.L.str.23, 16

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"format error in hyphenation file %s"
	.size	.L.str.24, 36

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"w"
	.size	.L.str.25, 2

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"cannot write to hyphenation file %s"
	.size	.L.str.26, 36

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"run out of memory while reading hyphenation table"
	.size	.L.str.27, 50

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"error on read from packed hyphenation file %s"
	.size	.L.str.28, 46

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"bad magic number in hyphenation file %s"
	.size	.L.str.29, 40

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"run out of memory while constructing hyphenation table"
	.size	.L.str.30, 55

	.type	tex_codes,@object       # @tex_codes
	.data
	.align	16
tex_codes:
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	.L.str.127
	.quad	.L.str.128
	.quad	.L.str.129
	.quad	.L.str.130
	.quad	.L.str.131
	.quad	.L.str.132
	.quad	.L.str.133
	.quad	.L.str.134
	.quad	.L.str.135
	.quad	.L.str.136
	.quad	.L.str.137
	.quad	.L.str.138
	.quad	.L.str.139
	.quad	.L.str.140
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
	.quad	.L.str.155
	.quad	.L.str.156
	.quad	.L.str.157
	.quad	.L.str.158
	.quad	.L.str.159
	.quad	.L.str.160
	.quad	.L.str.161
	.quad	.L.str.162
	.quad	.L.str.163
	.quad	.L.str.164
	.quad	.L.str.165
	.quad	.L.str.166
	.quad	.L.str.167
	.quad	.L.str.167
	.quad	.L.str.167
	.size	tex_codes, 1104

	.type	.L.str.31,@object       # @.str.31
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.31:
	.asciz	"in hyphenation file %s, unknown escape sequence (line %d)"
	.size	.L.str.31, 58

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Agrave"
	.size	.L.str.32, 7

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"`A"
	.size	.L.str.33, 3

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"\300"
	.size	.L.str.34, 2

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Aacute"
	.size	.L.str.35, 7

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"'A"
	.size	.L.str.36, 3

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"\301"
	.size	.L.str.37, 2

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Acircumflex"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"^A"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"\302"
	.size	.L.str.40, 2

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Atilde"
	.size	.L.str.41, 7

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"~A"
	.size	.L.str.42, 3

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"\303"
	.size	.L.str.43, 2

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Adieresis"
	.size	.L.str.44, 10

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"\"A"
	.size	.L.str.45, 3

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"\304"
	.size	.L.str.46, 2

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"agrave"
	.size	.L.str.47, 7

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"`a"
	.size	.L.str.48, 3

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"\340"
	.size	.L.str.49, 2

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"aacute"
	.size	.L.str.50, 7

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"'a"
	.size	.L.str.51, 3

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"\341"
	.size	.L.str.52, 2

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"acircumflex"
	.size	.L.str.53, 12

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"^a"
	.size	.L.str.54, 3

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"\342"
	.size	.L.str.55, 2

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"atilde"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"~a"
	.size	.L.str.57, 3

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"\343"
	.size	.L.str.58, 2

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"adieresis"
	.size	.L.str.59, 10

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"\"a"
	.size	.L.str.60, 3

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"\344"
	.size	.L.str.61, 2

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"ccedilla"
	.size	.L.str.62, 9

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"cc"
	.size	.L.str.63, 3

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"\347"
	.size	.L.str.64, 2

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Egrave"
	.size	.L.str.65, 7

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"`E"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"\310"
	.size	.L.str.67, 2

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Eacute"
	.size	.L.str.68, 7

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"'E"
	.size	.L.str.69, 3

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"\311"
	.size	.L.str.70, 2

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Ecircumflex"
	.size	.L.str.71, 12

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"^E"
	.size	.L.str.72, 3

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"\312"
	.size	.L.str.73, 2

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Edieresis"
	.size	.L.str.74, 10

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"\"E"
	.size	.L.str.75, 3

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"\313"
	.size	.L.str.76, 2

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"egrave"
	.size	.L.str.77, 7

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"`e"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"\350"
	.size	.L.str.79, 2

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"eacute"
	.size	.L.str.80, 7

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"'e"
	.size	.L.str.81, 3

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"\351"
	.size	.L.str.82, 2

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"ecircumflex"
	.size	.L.str.83, 12

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"^e"
	.size	.L.str.84, 3

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"\352"
	.size	.L.str.85, 2

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"edieresis"
	.size	.L.str.86, 10

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"\"e"
	.size	.L.str.87, 3

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"\353"
	.size	.L.str.88, 2

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Igrave"
	.size	.L.str.89, 7

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"`I"
	.size	.L.str.90, 3

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"\314"
	.size	.L.str.91, 2

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"Iacute"
	.size	.L.str.92, 7

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"'I"
	.size	.L.str.93, 3

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"\315"
	.size	.L.str.94, 2

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Icircumflex"
	.size	.L.str.95, 12

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"^I"
	.size	.L.str.96, 3

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"\316"
	.size	.L.str.97, 2

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Idieresis"
	.size	.L.str.98, 10

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"\"I"
	.size	.L.str.99, 3

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"\317"
	.size	.L.str.100, 2

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"igrave"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"`\\i"
	.size	.L.str.102, 4

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"\354"
	.size	.L.str.103, 2

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"iacute"
	.size	.L.str.104, 7

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"'\\i"
	.size	.L.str.105, 4

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"\355"
	.size	.L.str.106, 2

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"icircumflex"
	.size	.L.str.107, 12

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"^\\i"
	.size	.L.str.108, 4

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"\356"
	.size	.L.str.109, 2

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"idieresis"
	.size	.L.str.110, 10

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"\"\\i"
	.size	.L.str.111, 4

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"\357"
	.size	.L.str.112, 2

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Ograve"
	.size	.L.str.113, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"`O"
	.size	.L.str.114, 3

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"\322"
	.size	.L.str.115, 2

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Oacute"
	.size	.L.str.116, 7

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"'O"
	.size	.L.str.117, 3

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"\323"
	.size	.L.str.118, 2

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Ocircumflex"
	.size	.L.str.119, 12

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"^O"
	.size	.L.str.120, 3

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"\324"
	.size	.L.str.121, 2

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Otilde"
	.size	.L.str.122, 7

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"~O"
	.size	.L.str.123, 3

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"\325"
	.size	.L.str.124, 2

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Odieresis"
	.size	.L.str.125, 10

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"\"O"
	.size	.L.str.126, 3

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"\326"
	.size	.L.str.127, 2

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"ograve"
	.size	.L.str.128, 7

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"`o"
	.size	.L.str.129, 3

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"\362"
	.size	.L.str.130, 2

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"oacute"
	.size	.L.str.131, 7

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"'o"
	.size	.L.str.132, 3

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"\363"
	.size	.L.str.133, 2

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"ocircumflex"
	.size	.L.str.134, 12

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"^o"
	.size	.L.str.135, 3

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"\364"
	.size	.L.str.136, 2

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"otilde"
	.size	.L.str.137, 7

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"~o"
	.size	.L.str.138, 3

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"\365"
	.size	.L.str.139, 2

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"odieresis"
	.size	.L.str.140, 10

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"\"o"
	.size	.L.str.141, 3

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"\366"
	.size	.L.str.142, 2

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"Ugrave"
	.size	.L.str.143, 7

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"`U"
	.size	.L.str.144, 3

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"\331"
	.size	.L.str.145, 2

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"Uacute"
	.size	.L.str.146, 7

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"'U"
	.size	.L.str.147, 3

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"\332"
	.size	.L.str.148, 2

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"Ucircumflex"
	.size	.L.str.149, 12

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"^U"
	.size	.L.str.150, 3

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"\333"
	.size	.L.str.151, 2

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"Udieresis"
	.size	.L.str.152, 10

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"\"U"
	.size	.L.str.153, 3

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"\334"
	.size	.L.str.154, 2

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"ugrave"
	.size	.L.str.155, 7

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"`u"
	.size	.L.str.156, 3

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"\371"
	.size	.L.str.157, 2

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"uacute"
	.size	.L.str.158, 7

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"'u"
	.size	.L.str.159, 3

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"\372"
	.size	.L.str.160, 2

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"ucircumflex"
	.size	.L.str.161, 12

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"^u"
	.size	.L.str.162, 3

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"\373"
	.size	.L.str.163, 2

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"udieresis"
	.size	.L.str.164, 10

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"\"u"
	.size	.L.str.165, 3

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"\374"
	.size	.L.str.166, 2

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.zero	1
	.size	.L.str.167, 1

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"AddClassToTrie: after insertion"
	.size	.L.str.168, 32

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"hyphenation class of %c may not be changed"
	.size	.L.str.169, 43

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"in hyphenation file %s, line %d: character (octal %o) is not in any class"
	.size	.L.str.170, 74

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"hyphenation string %s already inserted"
	.size	.L.str.171, 39

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"hyphenation trie node limit exceeded"
	.size	.L.str.172, 37


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
