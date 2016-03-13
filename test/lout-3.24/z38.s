	.text
	.file	"z38.opt"
	.globl	MapLoad
	.align	16, 0x90
	.type	MapLoad,@function
MapLoad:                                # @MapLoad
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2168, %rsp             # imm = 0x878
.Ltmp3:
	.cfi_offset %rbx, -56
.Ltmp4:
	.cfi_offset %r12, -48
.Ltmp5:
	.cfi_offset %r13, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movq	-56(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_1
# BB#2:
	movl	$1, -84(%rbp)
	jmp	.LBB0_3
	.align	16, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_3 Depth=1
	incl	-84(%rbp)
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-84(%rbp), %eax
	cmpl	maptop(%rip), %eax
	jae	.LBB0_13
# BB#4:                                 #   in Loop: Header=BB0_3 Depth=1
	movl	-84(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	(%rax), %rdi
	addq	$64, %rdi
	movq	-56(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_12
# BB#5:
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_7
# BB#6:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_8
.LBB0_7:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_9
.LBB0_1:
	movl	$0, -44(%rbp)
	jmp	.LBB0_91
.LBB0_13:
	cmpq	$0, notdef_word(%rip)
	jne	.LBB0_15
# BB#14:
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.1, %esi
	callq	MakeWord
	movq	%rax, notdef_word(%rip)
.LBB0_15:
	cmpl	$20, maptop(%rip)
	jne	.LBB0_17
# BB#16:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$38, %edi
	movl	$1, %esi
	movl	$.L.str.2, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_17:
	movl	$3464, %edi             # imm = 0xD88
	callq	malloc
	movq	%rax, -80(%rbp)
	movl	maptop(%rip), %ecx
	leal	1(%rcx), %edx
	movl	%edx, maptop(%rip)
	movl	%ecx, -84(%rbp)
	movq	%rax, MapTable(,%rcx,8)
	cmpq	$0, -80(%rbp)
	jne	.LBB0_19
# BB#18:
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$38, %edi
	movl	$2, %esi
	movl	$.L.str.3, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_19:
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rdx
	leaq	64(%rdx), %rdi
	addq	$32, %rdx
	movl	$.L.str.4, %esi
	movl	$9, %ecx
	movl	$7, %r8d
	callq	DefineFile
	movq	-80(%rbp), %rcx
	movw	%ax, 8(%rcx)
	movq	-80(%rbp), %rax
	movzwl	8(%rax), %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	OpenFile
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_21
# BB#20:
	movq	-80(%rbp), %rax
	movzwl	8(%rax), %edi
	callq	PosOfFile
	movq	%rax, %r14
	movq	-80(%rbp), %rax
	movzwl	8(%rax), %edi
	callq	FileName
	movq	%rax, %rbx
	movl	$38, %edi
	movl	$3, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
.LBB0_21:
	movl	-60(%rbp), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, 12(%rcx)
	movq	-80(%rbp), %rax
	movl	$0, 16(%rax)
	leaq	-640(%rbp), %r13
	movl	$.L.str.6, %esi
	movq	%r13, %rdi
	callq	strcpy
	movl	maptop(%rip), %edi
	callq	StringInt
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	strcat
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r13, %rsi
	callq	MakeWord
	movq	-80(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movl	$0, -92(%rbp)
	jmp	.LBB0_22
	.align	16, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_22 Depth=1
	incl	-92(%rbp)
.LBB0_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_24 Depth 2
	cmpl	$3, -92(%rbp)
	jg	.LBB0_27
# BB#23:                                #   in Loop: Header=BB0_22 Depth=1
	movl	$0, -88(%rbp)
	jmp	.LBB0_24
	.align	16, 0x90
.LBB0_25:                               #   in Loop: Header=BB0_24 Depth=2
	movslq	-88(%rbp), %rax
	movslq	-92(%rbp), %rcx
	shlq	$8, %rcx
	addq	-80(%rbp), %rcx
	movb	$0, 2433(%rax,%rcx)
	incl	-88(%rbp)
.LBB0_24:                               #   Parent Loop BB0_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$255, -88(%rbp)
	jle	.LBB0_25
	jmp	.LBB0_26
.LBB0_27:
	movl	$0, -88(%rbp)
	jmp	.LBB0_28
	.align	16, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_28 Depth=1
	movslq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	%al, 2945(%rcx,%rax)
	incl	-88(%rbp)
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -88(%rbp)
	jle	.LBB0_29
# BB#30:
	movl	$0, -88(%rbp)
	jmp	.LBB0_31
	.align	16, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_31 Depth=1
	movq	notdef_word(%rip), %rax
	movslq	-88(%rbp), %rcx
	movq	-80(%rbp), %rdx
	movq	%rax, 32(%rdx,%rcx,8)
	incl	-88(%rbp)
.LBB0_31:                               # =>This Inner Loop Header: Depth=1
	cmpl	$255, -88(%rbp)
	jle	.LBB0_32
# BB#33:
	movl	$0, -88(%rbp)
	jmp	.LBB0_34
	.align	16, 0x90
.LBB0_35:                               #   in Loop: Header=BB0_34 Depth=1
	movslq	-88(%rbp), %rax
	movq	-80(%rbp), %rcx
	movb	$0, 2080(%rcx,%rax)
	incl	-88(%rbp)
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	cmpl	$352, -88(%rbp)         # imm = 0x160
	jle	.LBB0_35
# BB#36:
	movl	$-1, -104(%rbp)
	movl	$0, -96(%rbp)
	leaq	-108(%rbp), %r14
	leaq	-112(%rbp), %r15
	leaq	-1152(%rbp), %r12
	jmp	.LBB0_37
.LBB0_62:                               #   in Loop: Header=BB0_37 Depth=1
	movzbl	-1153(%rbp), %eax
	movq	-80(%rbp), %rcx
	movq	32(%rcx,%rax,8), %rax
	movslq	-108(%rbp), %rdx
	movq	%rax, 32(%rcx,%rdx,8)
	.align	16, 0x90
.LBB0_37:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_39 Depth 2
	movq	-72(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r13, %rdi
	callq	fgets
	cmpq	%r13, %rax
	jne	.LBB0_64
# BB#38:                                #   in Loop: Header=BB0_37 Depth=1
	incl	-96(%rbp)
	movl	$0, -88(%rbp)
	jmp	.LBB0_39
	.align	16, 0x90
.LBB0_42:                               #   in Loop: Header=BB0_39 Depth=2
	incl	-88(%rbp)
.LBB0_39:                               #   Parent Loop BB0_37 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %ecx
	movb	$1, %al
	cmpl	$32, %ecx
	je	.LBB0_41
# BB#40:                                #   in Loop: Header=BB0_39 Depth=2
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$9, %eax
	sete	%al
.LBB0_41:                               #   in Loop: Header=BB0_39 Depth=2
	testb	%al, %al
	jne	.LBB0_42
# BB#43:                                #   in Loop: Header=BB0_37 Depth=1
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$35, %eax
	je	.LBB0_37
# BB#44:                                #   in Loop: Header=BB0_37 Depth=1
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB0_37
# BB#45:                                #   in Loop: Header=BB0_37 Depth=1
	movslq	-88(%rbp), %rax
	cmpb	$0, -640(%rbp,%rax)
	je	.LBB0_37
# BB#46:                                #   in Loop: Header=BB0_37 Depth=1
	movl	$.L.str.7, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	__isoc99_sscanf
	movl	%eax, -116(%rbp)
	cmpl	$1, %eax
	jg	.LBB0_48
# BB#47:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$38, %edi
	movl	$4, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_48:                               #   in Loop: Header=BB0_37 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-112(%rbp), %eax
	je	.LBB0_50
# BB#49:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	$38, %edi
	movl	$5, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_50:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	$0, -108(%rbp)
	jg	.LBB0_53
# BB#51:                                #   in Loop: Header=BB0_37 Depth=1
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_53
# BB#52:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	-108(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$38, %edi
	movl	$6, %esi
	movl	$.L.str.11, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_53:                               #   in Loop: Header=BB0_37 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jge	.LBB0_55
# BB#54:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	-108(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$38, %edi
	movl	$7, %esi
	movl	$.L.str.12, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_55:                               #   in Loop: Header=BB0_37 Depth=1
	movl	-108(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jne	.LBB0_57
# BB#56:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	-108(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$38, %edi
	movl	$8, %esi
	movl	$.L.str.13, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_57:                               #   in Loop: Header=BB0_37 Depth=1
	cmpl	$257, -108(%rbp)        # imm = 0x101
	jl	.LBB0_59
# BB#58:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-56(%rbp), %r8
	addq	$32, %r8
	movl	-108(%rbp), %r9d
	movl	-96(%rbp), %eax
	movl	%eax, 8(%rsp)
	movl	$256, (%rsp)            # imm = 0x100
	movl	$38, %edi
	movl	$9, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_59:                               #   in Loop: Header=BB0_37 Depth=1
	movl	-108(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$3, -116(%rbp)
	jl	.LBB0_37
# BB#60:                                #   in Loop: Header=BB0_37 Depth=1
	movl	$.L.str.10, %esi
	movq	%r12, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_37
# BB#61:                                #   in Loop: Header=BB0_37 Depth=1
	movq	-80(%rbp), %rsi
	movq	%r12, %rdi
	callq	NameRetrieve
	movb	%al, -1153(%rbp)
	testb	%al, %al
	jne	.LBB0_62
# BB#63:                                #   in Loop: Header=BB0_37 Depth=1
	movl	-108(%rbp), %esi
	movq	-80(%rbp), %rdx
	movq	%r12, %rdi
	callq	NameInsert
	jmp	.LBB0_37
.LBB0_64:
	movq	-72(%rbp), %rdi
	callq	rewind
	movl	$0, -96(%rbp)
	leaq	-1680(%rbp), %r14
	leaq	-2192(%rbp), %r15
	leaq	-88(%rbp), %r12
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_65 Depth=1
	incl	-96(%rbp)
	movl	$0, -88(%rbp)
	jmp	.LBB0_67
	.align	16, 0x90
.LBB0_70:                               #   in Loop: Header=BB0_67 Depth=2
	incl	-88(%rbp)
.LBB0_67:                               #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %ecx
	movb	$1, %al
	cmpl	$32, %ecx
	je	.LBB0_69
# BB#68:                                #   in Loop: Header=BB0_67 Depth=2
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$9, %eax
	sete	%al
.LBB0_69:                               #   in Loop: Header=BB0_67 Depth=2
	testb	%al, %al
	jne	.LBB0_70
# BB#71:                                #   in Loop: Header=BB0_65 Depth=1
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$35, %eax
	je	.LBB0_65
# BB#72:                                #   in Loop: Header=BB0_65 Depth=1
	movslq	-88(%rbp), %rax
	movzbl	-640(%rbp,%rax), %eax
	cmpl	$10, %eax
	je	.LBB0_65
# BB#73:                                #   in Loop: Header=BB0_65 Depth=1
	movslq	-88(%rbp), %rax
	cmpb	$0, -640(%rbp,%rax)
	je	.LBB0_65
# BB#74:                                #   in Loop: Header=BB0_65 Depth=1
	movl	$.L.str.15, %esi
	xorl	%eax, %eax
	movq	%r13, %rdi
	leaq	-108(%rbp), %rdx
	leaq	-112(%rbp), %rcx
	leaq	-1152(%rbp), %r8
	leaq	-100(%rbp), %r9
	callq	__isoc99_sscanf
	movl	%eax, -116(%rbp)
	jmp	.LBB0_75
	.align	16, 0x90
.LBB0_88:                               #   in Loop: Header=BB0_75 Depth=2
	movb	-1153(%rbp), %al
	movslq	-108(%rbp), %rcx
	movslq	-92(%rbp), %rdx
	shlq	$8, %rdx
	addq	-80(%rbp), %rdx
	movb	%al, 2433(%rcx,%rdx)
.LBB0_75:                               #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-100(%rbp), %rax
	leaq	-640(%rbp,%rax), %rdi
	movl	$.L.str.16, %esi
	xorl	%eax, %eax
	movq	%r14, %rdx
	movq	%r15, %rcx
	movq	%r12, %r8
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB0_65
# BB#76:                                #   in Loop: Header=BB0_75 Depth=2
	movl	-88(%rbp), %eax
	addl	%eax, -100(%rbp)
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_77
# BB#78:                                #   in Loop: Header=BB0_75 Depth=2
	movl	$.L.str.18, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_79
# BB#80:                                #   in Loop: Header=BB0_75 Depth=2
	movl	$.L.str.19, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_81
# BB#82:                                #   in Loop: Header=BB0_75 Depth=2
	movq	%r13, %rbx
	movl	$.L.str.20, %esi
	movq	%r14, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_83
# BB#84:                                #   in Loop: Header=BB0_75 Depth=2
	movq	-56(%rbp), %r13
	addq	$32, %r13
	movq	-80(%rbp), %rax
	movzwl	8(%rax), %edi
	callq	FileName
	movl	-96(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$38, %edi
	movl	$10, %esi
	movl	$.L.str.21, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r13, %r8
	movq	%r14, %r9
	callq	Error
	jmp	.LBB0_85
	.align	16, 0x90
.LBB0_77:                               #   in Loop: Header=BB0_75 Depth=2
	movl	$0, -92(%rbp)
	jmp	.LBB0_86
	.align	16, 0x90
.LBB0_79:                               #   in Loop: Header=BB0_75 Depth=2
	movl	$1, -92(%rbp)
	jmp	.LBB0_86
.LBB0_81:                               #   in Loop: Header=BB0_75 Depth=2
	movl	$2, -92(%rbp)
	jmp	.LBB0_86
.LBB0_83:                               #   in Loop: Header=BB0_75 Depth=2
	movl	$3, -92(%rbp)
.LBB0_85:                               #   in Loop: Header=BB0_75 Depth=2
	movq	%rbx, %r13
.LBB0_86:                               #   in Loop: Header=BB0_75 Depth=2
	movq	-80(%rbp), %rsi
	movq	%r15, %rdi
	callq	NameRetrieve
	movb	%al, -1153(%rbp)
	testb	%al, %al
	jne	.LBB0_88
# BB#87:                                #   in Loop: Header=BB0_75 Depth=2
	movq	-56(%rbp), %rbx
	addq	$32, %rbx
	movq	-80(%rbp), %rax
	movzwl	8(%rax), %edi
	callq	FileName
	movl	-96(%rbp), %ecx
	movl	%ecx, 8(%rsp)
	movq	%rax, (%rsp)
	movl	$38, %edi
	movl	$11, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r15, %r9
	callq	Error
	jmp	.LBB0_88
	.align	16, 0x90
.LBB0_65:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_67 Depth 2
                                        #     Child Loop BB0_75 Depth 2
	movq	-72(%rbp), %rdx
	movl	$512, %esi              # imm = 0x200
	movq	%r13, %rdi
	callq	fgets
	cmpq	%r13, %rax
	je	.LBB0_66
# BB#89:
	movq	-72(%rbp), %rdi
	callq	fclose
	jmp	.LBB0_90
.LBB0_8:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_9:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movl	-84(%rbp), %eax
	movq	MapTable(,%rax,8), %rcx
	movb	$1, %al
	cmpl	$0, 12(%rcx)
	jne	.LBB0_11
# BB#10:
	cmpl	$0, -60(%rbp)
	setne	%al
.LBB0_11:
	movzbl	%al, %eax
	movl	-84(%rbp), %ecx
	movq	MapTable(,%rcx,8), %rcx
	movl	%eax, 12(%rcx)
.LBB0_90:
	movl	-84(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB0_91:
	movl	-44(%rbp), %eax
	addq	$2168, %rsp             # imm = 0x878
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	MapLoad, .Lfunc_end0-MapLoad
	.cfi_endproc

	.align	16, 0x90
	.type	NameRetrieve,@function
NameRetrieve:                           # @NameRetrieve
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_1
	.align	16, 0x90
.LBB1_2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -28(%rbp)
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB1_2
# BB#3:
	movslq	-28(%rbp), %rax
	imulq	$-1180203477, %rax, %rcx # imm = 0xFFFFFFFFB9A7862B
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$8, %ecx
	addl	%edx, %ecx
	imull	$353, %ecx, %ecx        # imm = 0x161
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB1_4
	.align	16, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_4 Depth=1
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-1180203477, %rcx, %rcx # imm = 0xFFFFFFFFB9A7862B
	shrq	$32, %rcx
	leal	1(%rcx,%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$8, %ecx
	addl	%edx, %ecx
	imull	$353, %ecx, %ecx        # imm = 0x161
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	movb	2080(%rcx,%rax), %al
	movb	%al, -29(%rbp)
	testb	%al, %al
	je	.LBB1_7
# BB#5:                                 #   in Loop: Header=BB1_4 Depth=1
	movzbl	-29(%rbp), %eax
	movq	-24(%rbp), %rcx
	movq	32(%rcx,%rax,8), %rdi
	addq	$64, %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_6
.LBB1_7:
	movb	-29(%rbp), %al
	movb	%al, -1(%rbp)
	movzbl	-1(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	NameRetrieve, .Lfunc_end1-NameRetrieve
	.cfi_endproc

	.align	16, 0x90
	.type	NameInsert,@function
NameInsert:                             # @NameInsert
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_1
	.align	16, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -40(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -28(%rbp)
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB2_2
# BB#3:
	movslq	-28(%rbp), %rax
	imulq	$-1180203477, %rax, %rcx # imm = 0xFFFFFFFFB9A7862B
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$8, %ecx
	addl	%edx, %ecx
	imull	$353, %ecx, %ecx        # imm = 0x161
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB2_4
	.align	16, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	movl	-28(%rbp), %eax
	leal	1(%rax), %ecx
	movslq	%ecx, %rcx
	imulq	$-1180203477, %rcx, %rcx # imm = 0xFFFFFFFFB9A7862B
	shrq	$32, %rcx
	leal	1(%rcx,%rax), %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$8, %ecx
	addl	%edx, %ecx
	imull	$353, %ecx, %ecx        # imm = 0x161
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, -28(%rbp)
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpb	$0, 2080(%rcx,%rax)
	jne	.LBB2_5
# BB#6:
	movq	-8(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movslq	-12(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, 32(%rdx,%rcx,8)
	movb	-12(%rbp), %al
	movslq	-28(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movb	%al, 2080(%rdx,%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	NameInsert, .Lfunc_end2-NameInsert
	.cfi_endproc

	.globl	MapCharEncoding
	.align	16, 0x90
	.type	MapCharEncoding,@function
MapCharEncoding:                        # @MapCharEncoding
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	movq	MapTable(,%rax,8), %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	NameRetrieve
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	MapCharEncoding, .Lfunc_end3-MapCharEncoding
	.cfi_endproc

	.globl	MapEncodingName
	.align	16, 0x90
	.type	MapEncodingName,@function
MapEncodingName:                        # @MapEncodingName
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
	movl	%edi, -4(%rbp)
	cmpl	maptop(%rip), %edi
	jb	.LBB4_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB4_2:
	movl	-4(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	24(%rax), %rax
	addq	$64, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	MapEncodingName, .Lfunc_end4-MapEncodingName
	.cfi_endproc

	.globl	MapEnsurePrinted
	.align	16, 0x90
	.type	MapEnsurePrinted,@function
MapEnsurePrinted:                       # @MapEnsurePrinted
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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	%rax, -16(%rbp)
	cmpl	$0, 12(%rax)
	jne	.LBB5_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB5_2:
	movq	-16(%rbp), %rax
	movl	16(%rax), %eax
	cmpl	-8(%rbp), %eax
	jge	.LBB5_5
# BB#3:
	movq	-16(%rbp), %rax
	cmpl	$1, 16(%rax)
	je	.LBB5_5
# BB#4:
	movl	-8(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	movq	BackEnd(%rip), %rax
	movl	-4(%rbp), %edi
	callq	*80(%rax)
.LBB5_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	MapEnsurePrinted, .Lfunc_end5-MapEnsurePrinted
	.cfi_endproc

	.globl	MapPrintEncodings
	.align	16, 0x90
	.type	MapPrintEncodings,@function
MapPrintEncodings:                      # @MapPrintEncodings
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.LBB6_1
	.align	16, 0x90
.LBB6_4:                                #   in Loop: Header=BB6_1 Depth=1
	incl	-4(%rbp)
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	maptop(%rip), %eax
	jae	.LBB6_5
# BB#2:                                 #   in Loop: Header=BB6_1 Depth=1
	movl	-4(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	cmpl	$0, 12(%rax)
	je	.LBB6_4
# BB#3:                                 #   in Loop: Header=BB6_1 Depth=1
	movq	BackEnd(%rip), %rax
	movl	-4(%rbp), %edi
	callq	*80(%rax)
	movl	-4(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	%rax, -16(%rbp)
	movl	$1, 16(%rax)
	jmp	.LBB6_4
.LBB6_5:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	MapPrintEncodings, .Lfunc_end6-MapPrintEncodings
	.cfi_endproc

	.globl	MapPrintPSResources
	.align	16, 0x90
	.type	MapPrintPSResources,@function
MapPrintPSResources:                    # @MapPrintPSResources
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp26:
	.cfi_def_cfa_offset 16
.Ltmp27:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp28:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -12(%rbp)
	jmp	.LBB7_1
	.align	16, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_1 Depth=1
	incl	-12(%rbp)
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	cmpl	maptop(%rip), %eax
	jae	.LBB7_5
# BB#2:                                 #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	cmpl	$0, 12(%rax)
	je	.LBB7_4
# BB#3:                                 #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	movq	MapTable(,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rax), %rdx
	addq	$64, %rdx
	movl	$.L.str.26, %esi
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB7_4
.LBB7_5:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	MapPrintPSResources, .Lfunc_end7-MapPrintPSResources
	.cfi_endproc

	.globl	MapSmallCaps
	.align	16, 0x90
	.type	MapSmallCaps,@function
MapSmallCaps:                           # @MapSmallCaps
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$648, %rsp              # imm = 0x288
.Ltmp32:
	.cfi_offset %rbx, -56
.Ltmp33:
	.cfi_offset %r12, -48
.Ltmp34:
	.cfi_offset %r13, -40
.Ltmp35:
	.cfi_offset %r14, -32
.Ltmp36:
	.cfi_offset %r15, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_3
# BB#1:
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB8_3
# BB#2:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_3:
	movq	-56(%rbp), %rsi
	movzwl	40(%rsi), %edi
	andl	$4095, %edi             # imm = 0xFFF
	addq	$32, %rsi
	callq	FontMapping
	movl	%eax, -68(%rbp)
	testl	%eax, %eax
	je	.LBB8_125
# BB#4:
	cmpl	$0, -68(%rbp)
	je	.LBB8_6
# BB#5:
	movl	-68(%rbp), %eax
	cmpl	maptop(%rip), %eax
	jb	.LBB8_7
.LBB8_6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.23, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB8_7:
	movl	-68(%rbp), %eax
	movl	$2433, %ecx             # imm = 0x981
	addq	MapTable(,%rax,8), %rcx
	movq	%rcx, -632(%rbp)
	movq	BackEnd(%rip), %rax
	cmpl	$0, 16(%rax)
	je	.LBB8_8
# BB#13:
	cmpq	$0, MapSmallCaps.font_change_word(%rip)
	jne	.LBB8_15
# BB#14:
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.29, %esi
	callq	MakeWord
	movq	%rax, MapSmallCaps.font_change_word(%rip)
.LBB8_15:
	movl	$0, -660(%rbp)
	leaq	-624(%rbp), %r15
	movq	%r15, -648(%rbp)
	movq	-56(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -640(%rbp)
	movl	$4095, %r12d            # imm = 0xFFF
	movb	$1, %r13b
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	jmp	.LBB8_16
	.align	16, 0x90
.LBB8_97:                               #   in Loop: Header=BB8_16 Depth=1
	incq	-640(%rbp)
.LBB8_16:                               # =>This Inner Loop Header: Depth=1
	movq	-640(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB8_98
# BB#17:                                #   in Loop: Header=BB8_16 Depth=1
	movl	-660(%rbp), %eax
	cmpq	$4, %rax
	ja	.LBB8_97
# BB#18:                                #   in Loop: Header=BB8_16 Depth=1
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_19:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_21
# BB#20:                                #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	movb	(%rcx,%rax), %al
	movq	-648(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -648(%rbp)
	movb	%al, (%rcx)
	movq	-64(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-680(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -678(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-676(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movb	-680(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-676(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -674(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %ecx
	andl	%r12d, %ecx
	movl	-668(%rbp), %eax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	%edx, %eax
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %ecx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	%edx, %ecx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	%edx, %ecx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	%edx, %ecx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	%edx, %ecx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-680(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -672(%rbp)
	movq	-64(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -670(%rbp)
	movq	MapSmallCaps.font_change_word(%rip), %rsi
	leaq	-680(%rbp), %rdi
	callq	FontChange
	movl	-668(%rbp), %eax
	andl	%r12d, %eax
	movl	%eax, -652(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %edi
	andl	%r12d, %edi
	callq	FontHalfXHeight
	movl	%eax, %ebx
	movl	-652(%rbp), %edi
	callq	FontHalfXHeight
	subl	%eax, %ebx
	movl	%ebx, -656(%rbp)
	movl	$2, -660(%rbp)
	incq	-640(%rbp)
	jmp	.LBB8_16
.LBB8_22:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_56
# BB#23:                                #   in Loop: Header=BB8_16 Depth=1
	movq	-64(%rbp), %rax
	movzwl	(%rax), %ecx
	movzwl	-680(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -680(%rbp)
	movq	-64(%rbp), %rax
	movw	2(%rax), %ax
	movw	%ax, -678(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$3, %al
	movb	-676(%rbp), %cl
	andb	$-4, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$12, %al
	andb	$-13, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	4(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -676(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	movb	-680(%rbp), %cl
	andb	$8, %al
	andb	$-9, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movzwl	4(%rax), %ecx
	movzwl	-676(%rbp), %eax
	andl	$128, %ecx
	andl	$65407, %eax            # imm = 0xFF7F
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzbl	5(%rcx), %ecx
	andl	$1, %ecx
	shll	$8, %ecx
	andl	$-257, %eax             # imm = 0xFFFFFFFFFFFFFEFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$512, %ecx              # imm = 0x200
	andl	$-513, %eax             # imm = 0xFFFFFFFFFFFFFDFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$7168, %ecx             # imm = 0x1C00
	andl	$-7169, %eax            # imm = 0xFFFFFFFFFFFFE3FF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rcx
	movzwl	4(%rcx), %ecx
	andl	$57344, %ecx            # imm = 0xE000
	andl	$8191, %eax             # imm = 0x1FFF
	orl	%ecx, %eax
	movw	%ax, -676(%rbp)
	movq	-64(%rbp), %rax
	movw	6(%rax), %ax
	movw	%ax, -674(%rbp)
	movq	-64(%rbp), %rax
	movl	12(%rax), %ecx
	andl	%r12d, %ecx
	movl	-668(%rbp), %eax
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	%edx, %eax
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	%edx, %ecx
	andl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$12582912, %edx         # imm = 0xC00000
	andl	%edx, %ecx
	andl	$-12582913, %eax        # imm = 0xFFFFFFFFFF3FFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$1056964608, %edx       # imm = 0x3F000000
	andl	%edx, %ecx
	andl	$-1056964609, %eax      # imm = 0xFFFFFFFFC0FFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$-2147483648, %edx      # imm = 0xFFFFFFFF80000000
	andl	%edx, %ecx
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rcx
	movl	12(%rcx), %ecx
	movl	$1073741824, %edx       # imm = 0x40000000
	andl	%edx, %ecx
	andl	$-1073741825, %eax      # imm = 0xFFFFFFFFBFFFFFFF
	orl	%ecx, %eax
	movl	%eax, -668(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$1, %al
	movb	-680(%rbp), %cl
	andb	$-2, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$2, %al
	andb	$-3, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$4, %al
	andb	$-5, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movb	(%rax), %al
	andb	$112, %al
	andb	$-113, %cl
	orb	%al, %cl
	movb	%cl, -680(%rbp)
	movq	-64(%rbp), %rax
	movw	8(%rax), %ax
	movw	%ax, -672(%rbp)
	movq	-64(%rbp), %rax
	movw	10(%rax), %ax
	movw	%ax, -670(%rbp)
	movq	MapSmallCaps.font_change_word(%rip), %rsi
	leaq	-680(%rbp), %rdi
	callq	FontChange
	movl	-668(%rbp), %eax
	andl	%r12d, %eax
	movl	%eax, -652(%rbp)
	movq	-56(%rbp), %rax
	movl	40(%rax), %edi
	andl	%r12d, %edi
	callq	FontHalfXHeight
	movl	%eax, %ebx
	movl	-652(%rbp), %edi
	callq	FontHalfXHeight
	subl	%eax, %ebx
	movl	%ebx, -656(%rbp)
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	40(%rdx), %ecx
	andl	%r12d, %ecx
	movq	%r15, %rdi
	callq	DoWord
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths+24(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_25
# BB#24:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_28
.LBB8_58:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	jne	.LBB8_59
# BB#60:                                #   in Loop: Header=BB8_16 Depth=1
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-652(%rbp), %ecx
	movq	%r15, %rdi
	callq	DoWord
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movl	-656(%rbp), %esi
	movq	%rax, %rdx
	callq	DoVShift
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths+24(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_62
# BB#61:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_65
.LBB8_85:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_56
# BB#86:                                #   in Loop: Header=BB8_16 Depth=1
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	40(%rdx), %ecx
	andl	%r12d, %ecx
	movq	%r15, %rdi
	callq	DoWord
	movq	%rax, -80(%rbp)
	jmp	.LBB8_44
.LBB8_87:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_88
.LBB8_59:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	movb	(%rcx,%rax), %al
	jmp	.LBB8_57
.LBB8_56:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movb	(%rax), %al
.LBB8_57:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-648(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -648(%rbp)
	movb	%al, (%rcx)
	incq	-640(%rbp)
	jmp	.LBB8_16
.LBB8_21:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-640(%rbp), %rax
	movb	(%rax), %al
	movq	-648(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -648(%rbp)
	movb	%al, (%rcx)
	movl	$1, -660(%rbp)
	incq	-640(%rbp)
	jmp	.LBB8_16
.LBB8_88:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-652(%rbp), %ecx
	movq	%r15, %rdi
	callq	DoWord
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movl	-656(%rbp), %esi
	movq	%rax, %rdx
	callq	DoVShift
	movq	%rax, -80(%rbp)
	jmp	.LBB8_81
.LBB8_25:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_26
# BB#27:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_28
.LBB8_62:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_63
# BB#64:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_65
.LBB8_26:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_28:                               #   in Loop: Header=BB8_16 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$24, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	movl	$1048575, %esi          # imm = 0xFFFFF
	andl	%esi, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_30
# BB#29:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_33
.LBB8_30:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_31
# BB#32:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_33
.LBB8_31:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_33:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	movl	$1048575, %esi          # imm = 0xFFFFF
	andl	%esi, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_35
# BB#34:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_38
.LBB8_35:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_36
# BB#37:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_38
.LBB8_36:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_38:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_41
# BB#39:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_41
# BB#40:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_41:                               #   in Loop: Header=BB8_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_44
# BB#42:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_44
# BB#43:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_44:                               #   in Loop: Header=BB8_16 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_46
# BB#45:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_49
.LBB8_46:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_47
# BB#48:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_49
.LBB8_47:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_49:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_52
# BB#50:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_52
# BB#51:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_52:                               #   in Loop: Header=BB8_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_55
# BB#53:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_55
# BB#54:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_55:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-96(%rbp), %rdi
	callq	DoAddGap
	movq	%r15, -648(%rbp)
	movq	-640(%rbp), %rax
	movzbl	(%rax), %eax
	movq	-632(%rbp), %rcx
	movb	(%rcx,%rax), %al
	leaq	-623(%rbp), %rcx
	movq	%rcx, -648(%rbp)
	movb	%al, -624(%rbp)
	movl	$4, -660(%rbp)
	incq	-640(%rbp)
	jmp	.LBB8_16
.LBB8_63:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_65:                               #   in Loop: Header=BB8_16 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$24, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -88(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	movl	$1048575, %esi          # imm = 0xFFFFF
	andl	%esi, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-88(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_67
# BB#66:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_70
.LBB8_67:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_68
# BB#69:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_70
.LBB8_68:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_70:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	%rax, -96(%rbp)
	movq	-56(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	movl	$1048575, %esi          # imm = 0xFFFFF
	andl	%esi, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-56(%rbp), %rax
	movl	36(%rax), %eax
	andl	%r14d, %eax
	movq	-96(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_72
# BB#71:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_75
.LBB8_72:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_73
# BB#74:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_75
.LBB8_73:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_75:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_78
# BB#76:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_78
# BB#77:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_78:                               #   in Loop: Header=BB8_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_81
# BB#79:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_81
# BB#80:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_81:                               #   in Loop: Header=BB8_16 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB8_83
# BB#82:                                #   in Loop: Header=BB8_16 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_90
.LBB8_83:                               #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_84
# BB#89:                                #   in Loop: Header=BB8_16 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_90
.LBB8_84:                               #   in Loop: Header=BB8_16 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_90:                               #   in Loop: Header=BB8_16 Depth=1
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_93
# BB#91:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_93
# BB#92:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_93:                               #   in Loop: Header=BB8_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_96
# BB#94:                                #   in Loop: Header=BB8_16 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB8_96
# BB#95:                                #   in Loop: Header=BB8_16 Depth=1
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
.LBB8_96:                               #   in Loop: Header=BB8_16 Depth=1
	movq	-96(%rbp), %rdi
	callq	DoAddGap
	movq	%r15, -648(%rbp)
	movq	-640(%rbp), %rax
	movb	(%rax), %al
	leaq	-623(%rbp), %rcx
	movq	%rcx, -648(%rbp)
	movb	%al, -624(%rbp)
	movl	$3, -660(%rbp)
	jmp	.LBB8_97
.LBB8_98:
	movl	-660(%rbp), %eax
	cmpl	$4, %eax
	je	.LBB8_122
# BB#99:
	cmpl	$3, %eax
	jne	.LBB8_100
# BB#110:
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	$4095, %ecx             # imm = 0xFFF
	andl	40(%rdx), %ecx
	leaq	-624(%rbp), %rdi
	callq	DoWord
	jmp	.LBB8_111
.LBB8_8:
	movl	$0, -72(%rbp)
	jmp	.LBB8_9
	.align	16, 0x90
.LBB8_12:                               #   in Loop: Header=BB8_9 Depth=1
	incl	-72(%rbp)
.LBB8_9:                                # =>This Inner Loop Header: Depth=1
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpb	$0, 64(%rcx,%rax)
	je	.LBB8_125
# BB#10:                                #   in Loop: Header=BB8_9 Depth=1
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	64(%rcx,%rax), %eax
	movq	-632(%rbp), %rcx
	cmpb	$0, (%rcx,%rax)
	je	.LBB8_12
# BB#11:                                #   in Loop: Header=BB8_9 Depth=1
	movslq	-72(%rbp), %rax
	movq	-56(%rbp), %rcx
	movzbl	64(%rcx,%rax), %edx
	movq	-632(%rbp), %rsi
	movb	(%rsi,%rdx), %dl
	movb	%dl, 64(%rcx,%rax)
	jmp	.LBB8_12
.LBB8_122:
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-652(%rbp), %ecx
	leaq	-624(%rbp), %rdi
	callq	DoWord
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movl	-656(%rbp), %esi
	movq	%rax, %rdx
	callq	DoVShift
.LBB8_111:
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB8_113
# BB#112:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB8_116
.LBB8_100:
	cmpl	$2, %eax
	jne	.LBB8_125
# BB#101:
	movq	-648(%rbp), %rsi
	movq	-56(%rbp), %rdx
	movl	-652(%rbp), %ecx
	leaq	-624(%rbp), %rdi
	callq	DoWord
	movq	%rax, -104(%rbp)
	movq	-56(%rbp), %rdi
	movl	-656(%rbp), %esi
	movq	%rax, %rdx
	callq	DoVShift
	movq	%rax, -88(%rbp)
	jmp	.LBB8_102
.LBB8_113:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB8_114
# BB#115:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB8_116
.LBB8_114:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB8_116:
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
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_119
# BB#117:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_119
# BB#118:
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
.LBB8_119:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_102
# BB#120:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_102
# BB#121:
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
.LBB8_102:
	movq	-56(%rbp), %rcx
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB8_104
# BB#103:
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
.LBB8_104:
	movq	%rax, xx_tmp(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_res(%rip)
	movq	xx_tmp(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB8_107
# BB#105:
	cmpq	$0, zz_res(%rip)
	je	.LBB8_107
# BB#106:
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
.LBB8_107:
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB8_109
# BB#108:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB8_123
.LBB8_109:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB8_124
.LBB8_123:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB8_124:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
.LBB8_125:
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$648, %rsp              # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	MapSmallCaps, .Lfunc_end8-MapSmallCaps
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_19
	.quad	.LBB8_22
	.quad	.LBB8_58
	.quad	.LBB8_85
	.quad	.LBB8_87

	.text
	.align	16, 0x90
	.type	DoWord,@function
DoWord:                                 # @DoWord
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -16(%rbp)
	movb	$0, (%rax)
	movq	-24(%rbp), %rdx
	movzbl	32(%rdx), %edi
	addq	$32, %rdx
	movq	-8(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -40(%rbp)
	movl	$4095, %ecx             # imm = 0xFFF
	andl	-28(%rbp), %ecx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$4190208, %edx          # imm = 0x3FF000
	andl	40(%rax), %edx
	movl	$-4190209, %eax         # imm = 0xFFFFFFFFFFC00FFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$4194304, %edx          # imm = 0x400000
	andl	40(%rax), %edx
	movl	$-4194305, %eax         # imm = 0xFFFFFFFFFFBFFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movl	$528482304, %edx        # imm = 0x1F800000
	andl	40(%rax), %edx
	movl	$-528482305, %eax       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %eax
	orl	%edx, %eax
	movl	%eax, 40(%rcx)
	movq	-24(%rbp), %rax
	movl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	andl	40(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	$2147483647, %edx       # imm = 0x7FFFFFFF
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-40(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	DoWord, .Lfunc_end9-DoWord
	.cfi_endproc

	.align	16, 0x90
	.type	DoAddGap,@function
DoAddGap:                               # @DoAddGap
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
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB10_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
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
	movb	$1, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-16(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-16(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 42(%rax)
	movq	-16(%rbp), %rax
	movb	$0, 41(%rax)
	movq	-16(%rbp), %rax
	orw	$128, 44(%rax)
	movq	-16(%rbp), %rax
	andw	$-257, 44(%rax)         # imm = 0xFFFFFFFFFFFFFEFF
	movq	-16(%rbp), %rax
	orw	$512, 44(%rax)          # imm = 0x200
	movq	-16(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 44(%rax)
	movq	-16(%rbp), %rax
	movzwl	44(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 44(%rax)
	movq	-16(%rbp), %rax
	movw	$0, 46(%rax)
	movq	-16(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB10_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
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
	movq	-8(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB10_13
# BB#11:
	cmpq	$0, zz_res(%rip)
	je	.LBB10_13
# BB#12:
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
.LBB10_13:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB10_16
# BB#14:
	cmpq	$0, zz_res(%rip)
	je	.LBB10_16
# BB#15:
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
.LBB10_16:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	DoAddGap, .Lfunc_end10-DoAddGap
	.cfi_endproc

	.align	16, 0x90
	.type	DoVShift,@function
DoVShift:                               # @DoVShift
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movzbl	zz_lengths+29(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB11_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB11_5
.LBB11_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB11_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB11_5
.LBB11_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB11_5:
	movq	zz_hold(%rip), %rax
	movb	$29, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-8(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-32(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-8(%rbp), %rax
	andl	36(%rax), %esi
	movq	-32(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-32(%rbp), %rax
	movw	$160, 70(%rax)
	movq	-32(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$58367, %ecx            # imm = 0xE3FF
	orl	$1024, %ecx             # imm = 0x400
	movw	%cx, 64(%rax)
	movq	-32(%rbp), %rax
	movzwl	64(%rax), %ecx
	andl	$8191, %ecx             # imm = 0x1FFF
	orl	$8192, %ecx             # imm = 0x2000
	movw	%cx, 64(%rax)
	movw	-12(%rbp), %ax
	movq	-32(%rbp), %rcx
	movw	%ax, 66(%rcx)
	movq	-32(%rbp), %rax
	movl	$-1610612737, %ecx      # imm = 0xFFFFFFFF9FFFFFFF
	andl	40(%rax), %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB11_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB11_10
.LBB11_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB11_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB11_10
.LBB11_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB11_10:
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
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB11_13
# BB#11:
	cmpq	$0, zz_res(%rip)
	je	.LBB11_13
# BB#12:
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
.LBB11_13:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB11_16
# BB#14:
	cmpq	$0, zz_res(%rip)
	je	.LBB11_16
# BB#15:
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
.LBB11_16:
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	DoVShift, .Lfunc_end11-DoVShift
	.cfi_endproc

	.globl	MapIsLowerCase
	.align	16, 0x90
	.type	MapIsLowerCase,@function
MapIsLowerCase:                         # @MapIsLowerCase
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp48:
	.cfi_def_cfa_register %rbp
	movb	%dil, -1(%rbp)
	movl	%esi, -8(%rbp)
	movzbl	-1(%rbp), %eax
	movl	-8(%rbp), %ecx
	movq	MapTable(,%rcx,8), %rcx
	cmpb	$0, 2433(%rcx,%rax)
	setne	%al
	movzbl	%al, %eax
	movl	%eax, -12(%rbp)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	MapIsLowerCase, .Lfunc_end12-MapIsLowerCase
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"-"
	.size	.L.str, 2

	.type	maptop,@object          # @maptop
	.data
	.align	4
maptop:
	.long	1                       # 0x1
	.size	maptop, 4

	.type	MapTable,@object        # @MapTable
	.comm	MapTable,160,16
	.type	notdef_word,@object     # @notdef_word
	.local	notdef_word
	.comm	notdef_word,8,8
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	".notdef"
	.size	.L.str.1, 8

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"too many character mappings"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"run out of memory when loading character mapping"
	.size	.L.str.3, 49

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.zero	1
	.size	.L.str.4, 1

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"cannot open character mapping file %s"
	.size	.L.str.5, 38

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"vec"
	.size	.L.str.6, 4

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%d %o %s"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"character code(s) missing in mapping file (line %d)"
	.size	.L.str.8, 52

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"decimal and octal codes disagree in mapping file (line %d)"
	.size	.L.str.9, 59

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"-none-"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"code %d too small (min is 1) in mapping file (line %d)"
	.size	.L.str.11, 55

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"code %d out of order in mapping file (line %d)"
	.size	.L.str.12, 47

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"code %d repeated in mapping file (line %d)"
	.size	.L.str.13, 43

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"code %d too large (max is %d) in mapping file (line %d)"
	.size	.L.str.14, 56

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%d %o %s%n"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s %[^;];%n"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"UC"
	.size	.L.str.17, 3

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"LC"
	.size	.L.str.18, 3

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"UA"
	.size	.L.str.19, 3

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"AC"
	.size	.L.str.20, 3

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"unknown mapping name %s in mapping file %s (line %d)"
	.size	.L.str.21, 53

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"unknown character %s in mapping file %s (line %d)"
	.size	.L.str.22, 50

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"assert failed in %s"
	.size	.L.str.23, 20

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"MapEncodingName: m out of range!"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"MapEnsurePrinted: not seen_recoded!"
	.size	.L.str.25, 36

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%%%%+ encoding %s\n"
	.size	.L.str.26, 19

	.type	MapSmallCaps.font_change_word,@object # @MapSmallCaps.font_change_word
	.local	MapSmallCaps.font_change_word
	.comm	MapSmallCaps.font_change_word,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"MapSmallCaps: !is_word(type(x))"
	.size	.L.str.27, 32

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"MapSmallCaps: mapping out of range!"
	.size	.L.str.28, 36

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"0.7f"
	.size	.L.str.29, 5

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"word is too long"
	.size	.L.str.30, 17


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
