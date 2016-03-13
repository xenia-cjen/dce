	.text
	.file	"z01.opt"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	4
.LCPI0_0:
	.long	1123024896              # float 120
.LCPI0_1:
	.long	1101004800              # float 20
.LCPI0_2:
	.long	1152647168              # float 1440
.LCPI0_3:
	.long	1141751808              # float 567
	.text
	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	subq	$2248, %rsp             # imm = 0x8C8
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
	movl	$0, -44(%rbp)
	movl	%edi, -48(%rbp)
	movq	%rsi, -56(%rbp)
	movl	$.L.str, %edi
	callq	getenv
	movq	%rax, -136(%rbp)
	testq	%rax, %rax
	jne	.LBB0_2
# BB#1:
	movq	$.L.str.1, -136(%rbp)
.LBB0_2:
	movl	$5, %edi
	movl	$.L.str.2, %esi
	callq	setlocale
	movq	%rax, -2248(%rbp)
	testq	%rax, %rax
	jne	.LBB0_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$6, %esi
	movl	$.L.str.3, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	movq	$.L.str.4, -2248(%rbp)
.LBB0_4:
	movq	-136(%rbp), %rdx
	movq	-2248(%rbp), %r8
	leaq	-2240(%rbp), %rbx
	movl	$.L.str.5, %esi
	movl	$.L.str.6, %ecx
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r8, %r9
	callq	sprintf
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	catopen
	movq	%rax, MsgCat(%rip)
	movl	$0, TotalWordCount(%rip)
	movl	$0, -1724(%rbp)
	movq	PS_BackEnd(%rip), %rax
	movq	%rax, BackEnd(%rip)
	movl	$144, PlainCharWidth(%rip)
	movl	$240, PlainCharHeight(%rip)
	movl	$0, PlainFormFeed(%rip)
	movl	$0, InitializeAll(%rip)
	movl	$1, UseCollate(%rip)
	movl	$1, AllowCrossDb(%rip)
	movl	$1, InMemoryDbIndexes(%rip)
	movl	$0, Encapsulated(%rip)
	movl	$0, SafeExecution(%rip)
	movl	$1, Kern(%rip)
	callq	MemInit
	callq	InitSym
	callq	LexInit
	callq	InitFiles
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.2, %esi
	callq	MakeWord
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.2, %esi
	callq	MakeWord
	movl	$3, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movl	$.L.str.2, %esi
	callq	MakeWord
	movl	$1, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movl	$0, -108(%rbp)
	movl	$0, AltErrorFormat(%rip)
	movq	$.L.str.7, -120(%rbp)
	movq	$.L.str.8, -128(%rbp)
	movl	$0, -112(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_6
# BB#5:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_9
.LBB0_6:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_7
# BB#8:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_9
.LBB0_7:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_9:
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
	movq	%rax, CommandOptions(%rip)
	movl	$1, -60(%rbp)
	movb	$1, %bl
	movl	$1048575, %r13d         # imm = 0xFFFFF
	movl	$-1048576, %r14d        # imm = 0xFFFFFFFFFFF00000
	leaq	-1696(%rbp), %r12
	movabsq	$4294968832, %r15       # imm = 0x100000600
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_187:                              #   in Loop: Header=BB0_10 Depth=1
	incl	-60(%rbp)
.LBB0_10:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_130 Depth 2
	movl	-60(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB0_188
# BB#11:                                #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	jne	.LBB0_183
# BB#12:                                #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %eax
	leal	-67(%rax), %ecx
	cmpl	$53, %ecx
	jbe	.LBB0_200
# BB#13:                                #   in Loop: Header=BB0_10 Depth=1
	testl	%eax, %eax
	je	.LBB0_101
# BB#14:                                #   in Loop: Header=BB0_10 Depth=1
	cmpl	$45, %eax
	je	.LBB0_15
.LBB0_182:                              #   in Loop: Header=BB0_10 Depth=1
	movq	stderr(%rip), %rdi
	callq	PrintUsage
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %r9
	movl	$1, %edi
	movl	$26, %esi
	movl	$.L.str.66, %edx
.LBB0_25:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	incl	-60(%rbp)
	jmp	.LBB0_10
	.align	16, 0x90
.LBB0_183:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	%rdi, -72(%rbp)
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -64(%rbp)
	js	.LBB0_186
# BB#184:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-64(%rbp), %rdi
	addq	-72(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_186
# BB#185:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-64(%rbp), %rdi
	addq	-72(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	strcpy
	.align	16, 0x90
.LBB0_186:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.2, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	incl	-112(%rbp)
	jmp	.LBB0_187
	.align	16, 0x90
.LBB0_200:                              #   in Loop: Header=BB0_10 Depth=1
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_43:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_45
# BB#44:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$12, %esi
	movl	$.L.str.18, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_45:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$7, %edi
	jmp	.LBB0_46
.LBB0_40:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_42
# BB#41:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$11, %esi
	movl	$.L.str.17, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_42:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$3, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$4, %edi
	jmp	.LBB0_46
.LBB0_37:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	incq	%rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_39
# BB#38:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$10, %esi
	movl	$.L.str.16, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_39:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, Encapsulated(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_47:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_49
# BB#48:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$13, %esi
	movl	$.L.str.19, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_49:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$5, %edi
	jmp	.LBB0_46
.LBB0_50:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_52
# BB#51:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$14, %esi
	movl	$.L.str.20, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_52:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$6, %edi
	jmp	.LBB0_46
.LBB0_53:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_55
# BB#54:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$15, %esi
	movl	$.L.str.21, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_55:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$1, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-72(%rbp), %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movl	$2, %edi
.LBB0_46:                               #   in Loop: Header=BB0_10 Depth=1
	movq	%rax, %rsi
	callq	AddToPath
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_30:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, UseCollate(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_27:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, InMemoryDbIndexes(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_69:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	incq	%rdi
	movl	$.L.str.56, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_70
# BB#71:                                #   in Loop: Header=BB0_10 Depth=1
	movl	$1, PlainFormFeed(%rip)
.LBB0_72:                               #   in Loop: Header=BB0_10 Depth=1
	movq	Plain_BackEnd(%rip), %rax
	movq	%rax, BackEnd(%rip)
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	cmpb	$0, 2(%rax)
	je	.LBB0_187
# BB#73:                                #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	addq	$2, %rdi
	leaq	-2252(%rbp), %rdx
	leaq	-2257(%rbp), %rcx
	leaq	-2256(%rbp), %r8
	leaq	-2258(%rbp), %r9
	movl	$.L.str.57, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	cmpl	$4, %eax
	je	.LBB0_75
# BB#74:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %r9d
	movl	$1, %edi
	movl	$19, %esi
	movl	$.L.str.58, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_75:                               #   in Loop: Header=BB0_10 Depth=1
	movzbl	-2257(%rbp), %eax
	cmpl	$108, %eax
	jg	.LBB0_79
# BB#76:                                #   in Loop: Header=BB0_10 Depth=1
	cmpl	$99, %eax
	jne	.LBB0_77
# BB#82:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2252(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_3(%rip), %xmm0
	jmp	.LBB0_83
.LBB0_70:                               #   in Loop: Header=BB0_10 Depth=1
	movq	PDF_BackEnd(%rip), %rax
	movq	%rax, BackEnd(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_180:                              #   in Loop: Header=BB0_10 Depth=1
	movl	$1, SafeExecution(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_181:                              #   in Loop: Header=BB0_10 Depth=1
	movl	$0, SafeExecution(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_36:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, AltErrorFormat(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_31:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -120(%rbp)
	testq	%rax, %rax
	jne	.LBB0_187
# BB#32:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$8, %esi
	movl	$.L.str.13, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_99:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %r9
	movl	$1, %edi
	movl	$4, %esi
	movl	$.L.str.60, %edx
	jmp	.LBB0_25
.LBB0_33:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_35
# BB#34:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$9, %esi
	movl	$.L.str.14, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_35:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rdi
	callq	ErrorInit
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_62:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$7, %edi
	callq	FirstFile
	testw	%ax, %ax
	je	.LBB0_64
# BB#63:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$17, %esi
	movl	$.L.str.23, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_64:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_66
# BB#65:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$18, %esi
	movl	$.L.str.24, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_66:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rdi
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.2, %esi
	movl	$7, %ecx
	movl	$1, %r8d
	callq	DefineFile
	movq	-72(%rbp), %rdi
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.25, %esi
	movl	$8, %ecx
	movl	$1, %r8d
	callq	DefineFile
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_56:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -72(%rbp)
	testq	%rax, %rax
	jne	.LBB0_58
# BB#57:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$16, %esi
	movl	$.L.str.22, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_58:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rdi
	callq	strlen
	addl	$-3, %eax
	movl	%eax, -64(%rbp)
	js	.LBB0_61
# BB#59:                                #   in Loop: Header=BB0_10 Depth=1
	movslq	-64(%rbp), %rdi
	addq	-72(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_61
# BB#60:                                #   in Loop: Header=BB0_10 Depth=1
	movslq	-64(%rbp), %rdi
	addq	-72(%rbp), %rdi
	movl	$.L.str.2, %esi
	callq	strcpy
.LBB0_61:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-72(%rbp), %rdi
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.2, %esi
	xorl	%ecx, %ecx
	movl	$2, %r8d
	callq	DefineFile
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_28:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, Kern(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_29:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, UseCollate(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_100:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	leaq	-152(%rbp), %rdx
	movl	$.L.str.61, %esi
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movq	-152(%rbp), %rdx
	movq	%rdx, MemCheck(%rip)
	movq	stderr(%rip), %rdi
	movl	$.L.str.62, %esi
	xorl	%eax, %eax
	callq	fprintf
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_21:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	leaq	-60(%rbp), %rdx
	callq	GetArg
	movq	%rax, -128(%rbp)
	testq	%rax, %rax
	jne	.LBB0_23
# BB#22:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$7, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_23:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-128(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	StringEndsWith
	testl	%eax, %eax
	je	.LBB0_187
# BB#24:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movq	-128(%rbp), %r9
	movq	$.L.str.11, (%rsp)
	movl	$1, %edi
	movl	$28, %esi
	movl	$.L.str.12, %edx
	jmp	.LBB0_25
.LBB0_26:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$0, AllowCrossDb(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_68:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, -1724(%rbp)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_97:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$1, InitializeAll(%rip)
	movl	$0, AllowCrossDb(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_101:                              #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -108(%rbp)
	je	.LBB0_103
# BB#102:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$23, %esi
	movl	$.L.str.63, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_103:                              #   in Loop: Header=BB0_10 Depth=1
	movl	$1, -108(%rbp)
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.8, %edi
	movl	$.L.str.2, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_15:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	addq	$2, %rdi
	movl	$.L.str.64, %esi
	xorl	%eax, %eax
	leaq	-672(%rbp), %rdx
	leaq	-1184(%rbp), %rcx
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	jne	.LBB0_18
# BB#16:                                #   in Loop: Header=BB0_10 Depth=1
	leaq	-672(%rbp), %rdi
	callq	strlen
	testq	%rax, %rax
	je	.LBB0_18
# BB#17:                                #   in Loop: Header=BB0_10 Depth=1
	leaq	-1184(%rbp), %rdi
	callq	strlen
	testq	%rax, %rax
	jne	.LBB0_19
.LBB0_18:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %r9
	addq	$2, %r9
	movl	$1, %edi
	movl	$24, %esi
	movl	$.L.str.65, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_19:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	leaq	-672(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -88(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_104
# BB#20:                                #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_107
.LBB0_79:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$109, %eax
	jne	.LBB0_80
# BB#84:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2252(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_83
.LBB0_104:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_105
# BB#106:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_107
.LBB0_77:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$105, %eax
	jne	.LBB0_85
# BB#78:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2252(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_2(%rip), %xmm0
	jmp	.LBB0_83
.LBB0_80:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$112, %eax
	jne	.LBB0_85
# BB#81:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2252(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_1(%rip), %xmm0
.LBB0_83:                               #   in Loop: Header=BB0_10 Depth=1
	cvttss2si	%xmm0, %eax
	movl	%eax, PlainCharWidth(%rip)
	jmp	.LBB0_86
.LBB0_85:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %r9d
	movl	$1, %edi
	movl	$20, %esi
	movl	$.L.str.59, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_86:                               #   in Loop: Header=BB0_10 Depth=1
	movzbl	-2258(%rbp), %eax
	cmpl	$108, %eax
	jg	.LBB0_90
# BB#87:                                #   in Loop: Header=BB0_10 Depth=1
	cmpl	$99, %eax
	jne	.LBB0_88
# BB#93:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2256(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_3(%rip), %xmm0
	jmp	.LBB0_94
.LBB0_90:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$109, %eax
	jne	.LBB0_91
# BB#95:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2256(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_0(%rip), %xmm0
	jmp	.LBB0_94
.LBB0_88:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$105, %eax
	jne	.LBB0_96
# BB#89:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2256(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_2(%rip), %xmm0
	jmp	.LBB0_94
.LBB0_91:                               #   in Loop: Header=BB0_10 Depth=1
	cmpl	$112, %eax
	jne	.LBB0_96
# BB#92:                                #   in Loop: Header=BB0_10 Depth=1
	movss	-2256(%rbp), %xmm0      # xmm0 = mem[0],zero,zero,zero
	mulss	.LCPI0_1(%rip), %xmm0
.LBB0_94:                               #   in Loop: Header=BB0_10 Depth=1
	cvttss2si	%xmm0, %eax
	movl	%eax, PlainCharHeight(%rip)
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_96:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movsbl	1(%rax), %r9d
	movl	$1, %edi
	movl	$21, %esi
	movl	$.L.str.59, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	incl	-60(%rbp)
	jmp	.LBB0_10
.LBB0_105:                              #   in Loop: Header=BB0_10 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_107:                              #   in Loop: Header=BB0_10 Depth=1
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
	movq	CommandOptions(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_110
# BB#108:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_110
# BB#109:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_110:                              #   in Loop: Header=BB0_10 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_113
# BB#111:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_113
# BB#112:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_113:                              #   in Loop: Header=BB0_10 Depth=1
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_115
# BB#114:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_118
.LBB0_115:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_116
# BB#117:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_118
.LBB0_116:                              #   in Loop: Header=BB0_10 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_118:                              #   in Loop: Header=BB0_10 Depth=1
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
	movq	%rax, -88(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_120
# BB#119:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_123
.LBB0_120:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_121
# BB#122:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_123
.LBB0_121:                              #   in Loop: Header=BB0_10 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_123:                              #   in Loop: Header=BB0_10 Depth=1
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
	movq	CommandOptions(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_126
# BB#124:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_126
# BB#125:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_126:                              #   in Loop: Header=BB0_10 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_129
# BB#127:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_129
# BB#128:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_129:                              #   in Loop: Header=BB0_10 Depth=1
	movl	$0, -1708(%rbp)
	leaq	-1184(%rbp), %rax
	movq	%rax, -1704(%rbp)
	jmp	.LBB0_130
	.align	16, 0x90
.LBB0_165:                              #   in Loop: Header=BB0_130 Depth=2
	incq	-1704(%rbp)
.LBB0_130:                              #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-1704(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB0_166
# BB#131:                               #   in Loop: Header=BB0_130 Depth=2
	movq	-1704(%rbp), %rax
	movzbl	(%rax), %eax
	cmpl	$32, %eax
	ja	.LBB0_132
# BB#201:                               #   in Loop: Header=BB0_130 Depth=2
	btq	%rax, %r15
	jb	.LBB0_134
	.align	16, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_130 Depth=2
	cmpl	$125, %eax
	je	.LBB0_134
# BB#133:                               #   in Loop: Header=BB0_130 Depth=2
	cmpl	$123, %eax
	je	.LBB0_134
# BB#164:                               #   in Loop: Header=BB0_130 Depth=2
	movq	-1704(%rbp), %rax
	movb	(%rax), %al
	movslq	-1708(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -1708(%rbp)
	movb	%al, -1696(%rbp,%rcx)
	jmp	.LBB0_165
	.align	16, 0x90
.LBB0_134:                              #   in Loop: Header=BB0_130 Depth=2
	cmpl	$0, -1708(%rbp)
	jle	.LBB0_165
# BB#135:                               #   in Loop: Header=BB0_130 Depth=2
	movslq	-1708(%rbp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -1708(%rbp)
	movb	$0, -1696(%rbp,%rax)
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_152
# BB#136:                               #   in Loop: Header=BB0_130 Depth=2
	movzbl	zz_lengths+1(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_138
# BB#137:                               #   in Loop: Header=BB0_130 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_141
.LBB0_138:                              #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_139
# BB#140:                               #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_141
.LBB0_139:                              #   in Loop: Header=BB0_130 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_130 Depth=2
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
	movq	%rax, -2272(%rbp)
	movb	$1, 41(%rax)
	movq	-2272(%rbp), %rax
	movb	$0, 42(%rax)
	movq	no_fpos(%rip), %rax
	movw	2(%rax), %ax
	movq	-2272(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	no_fpos(%rip), %rax
	movl	4(%rax), %eax
	andl	%r13d, %eax
	movq	-2272(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	no_fpos(%rip), %rax
	movl	4(%rax), %eax
	andl	%r14d, %eax
	movq	-2272(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_143
# BB#142:                               #   in Loop: Header=BB0_130 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_146
.LBB0_143:                              #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_144
# BB#145:                               #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_146
.LBB0_144:                              #   in Loop: Header=BB0_130 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_146:                              #   in Loop: Header=BB0_130 Depth=2
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
	je	.LBB0_149
# BB#147:                               #   in Loop: Header=BB0_130 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_149
# BB#148:                               #   in Loop: Header=BB0_130 Depth=2
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
.LBB0_149:                              #   in Loop: Header=BB0_130 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-2272(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_152
# BB#150:                               #   in Loop: Header=BB0_130 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_152
# BB#151:                               #   in Loop: Header=BB0_130 Depth=2
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
.LBB0_152:                              #   in Loop: Header=BB0_130 Depth=2
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r12, %rsi
	callq	MakeWord
	movq	%rax, -1720(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_154
# BB#153:                               #   in Loop: Header=BB0_130 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_157
.LBB0_154:                              #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_155
# BB#156:                               #   in Loop: Header=BB0_130 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_157
.LBB0_155:                              #   in Loop: Header=BB0_130 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_157:                              #   in Loop: Header=BB0_130 Depth=2
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
	je	.LBB0_160
# BB#158:                               #   in Loop: Header=BB0_130 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_160
# BB#159:                               #   in Loop: Header=BB0_130 Depth=2
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
.LBB0_160:                              #   in Loop: Header=BB0_130 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1720(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_163
# BB#161:                               #   in Loop: Header=BB0_130 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_163
# BB#162:                               #   in Loop: Header=BB0_130 Depth=2
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
.LBB0_163:                              #   in Loop: Header=BB0_130 Depth=2
	movl	$0, -1708(%rbp)
	incq	-1704(%rbp)
	jmp	.LBB0_130
.LBB0_166:                              #   in Loop: Header=BB0_10 Depth=1
	cmpl	$0, -1708(%rbp)
	jle	.LBB0_178
# BB#167:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	-1708(%rbp), %rax
	leal	1(%rax), %ecx
	movl	%ecx, -1708(%rbp)
	movb	$0, -1696(%rbp,%rax)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	movq	%r12, %rsi
	callq	MakeWord
	movq	%rax, -1720(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB0_169
# BB#168:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_172
.LBB0_169:                              #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_170
# BB#171:                               #   in Loop: Header=BB0_10 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_172
.LBB0_170:                              #   in Loop: Header=BB0_10 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_172:                              #   in Loop: Header=BB0_10 Depth=1
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
	je	.LBB0_175
# BB#173:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_175
# BB#174:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_175:                              #   in Loop: Header=BB0_10 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1720(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_178
# BB#176:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_178
# BB#177:                               #   in Loop: Header=BB0_10 Depth=1
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
.LBB0_178:                              #   in Loop: Header=BB0_10 Depth=1
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_187
# BB#179:                               #   in Loop: Header=BB0_10 Depth=1
	movq	no_fpos(%rip), %r8
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	(%rcx,%rax,8), %r9
	addq	$2, %r9
	movl	$1, %edi
	movl	$25, %esi
	movl	$.L.str.65, %edx
	jmp	.LBB0_25
.LBB0_188:
	cmpl	$0, UseCollate(%rip)
	je	.LBB0_191
# BB#189:
	movl	$3, %edi
	movl	$.L.str.2, %esi
	callq	setlocale
	testq	%rax, %rax
	jne	.LBB0_191
# BB#190:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$30, %esi
	movl	$.L.str.67, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_191:
	movq	-128(%rbp), %rdi
	movl	$.L.str.8, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_193
# BB#192:
	movq	stdout(%rip), %rax
	movq	%rax, -144(%rbp)
	jmp	.LBB0_195
.LBB0_193:
	movq	-128(%rbp), %rdi
	movq	BackEnd(%rip), %rax
	cmpl	$2, (%rax)
	movl	$.L.str.68, %esi
	callq	fopen
	movq	%rax, -144(%rbp)
	testq	%rax, %rax
	jne	.LBB0_195
# BB#194:
	movq	no_fpos(%rip), %r8
	movq	-128(%rbp), %r9
	movl	$1, %edi
	movl	$27, %esi
	movl	$.L.str.69, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_195:
	callq	ColourInit
	callq	LanguageInit
	movq	BackEnd(%rip), %rax
	movq	-144(%rbp), %rdi
	callq	*48(%rax)
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.70, %edx
	callq	MakeWordThree
	movl	$5, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.71, %edx
	callq	MakeWordThree
	movl	$6, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.72, %edx
	callq	MakeWordThree
	movl	$7, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.42, %edx
	callq	MakeWordThree
	movl	$4, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.42, %edx
	callq	MakeWordThree
	movl	$3, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.40, %edx
	callq	MakeWordThree
	movl	$2, %edi
	movq	%rax, %rsi
	callq	AddToPath
	movq	-136(%rbp), %rdi
	movl	$.L.str.39, %esi
	movl	$.L.str.40, %edx
	callq	MakeWordThree
	movl	$1, %edi
	movq	%rax, %rsi
	callq	AddToPath
	cmpl	$0, -112(%rbp)
	jne	.LBB0_197
# BB#196:
	movq	no_fpos(%rip), %rdx
	movl	$.L.str.8, %edi
	movl	$.L.str.2, %esi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	DefineFile
.LBB0_197:
	movq	$0, StartSym(%rip)
	movl	$.L.str.73, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, StartSym(%rip)
	movl	$.L.str.74, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, GalleySym(%rip)
	movl	$.L.str.75, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, ForceGalleySym(%rip)
	movl	$.L.str.76, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, InputSym(%rip)
	movl	$.L.str.77, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, PrintSym(%rip)
	movl	$.L.str.78, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, FilterInSym(%rip)
	movl	$.L.str.79, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, FilterOutSym(%rip)
	movl	$.L.str.80, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movq	%rax, FilterErrSym(%rip)
	movl	$.L.str.81, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movq	%rax, OptGallSym(%rip)
	movl	$.L.str.82, %edi
	movl	$53, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movq	%rax, VerbatimSym(%rip)
	movl	$.L.str.83, %edi
	movl	$54, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movq	%rax, RawVerbatimSym(%rip)
	movl	$.L.str.84, %edi
	movl	$104, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	callq	load
	movl	$.L.str.85, %edi
	movl	$105, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$2, %r9d
	callq	load
	movl	$.L.str.86, %edi
	movl	$82, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.87, %edi
	movl	$83, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.88, %edi
	movl	$84, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.89, %edi
	movl	$85, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.90, %edi
	movl	$86, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.91, %edi
	movl	$87, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.92, %edi
	movl	$88, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.93, %edi
	movl	$89, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.94, %edi
	movl	$90, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.95, %edi
	movl	$91, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.96, %edi
	movl	$102, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$3, %r9d
	callq	load
	movl	$.L.str.97, %edi
	movl	$103, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$4, %r9d
	callq	load
	movl	$.L.str.98, %edi
	movl	$112, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.99, %edi
	movl	$113, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.100, %edi
	movl	$114, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.101, %edi
	movl	$115, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.102, %edi
	movl	$116, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.103, %edi
	movl	$117, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.104, %edi
	movl	$106, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.105, %edi
	movl	$107, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.106, %edi
	movl	$52, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.107, %edi
	movl	$55, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.108, %edi
	movl	$56, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.109, %edi
	movl	$58, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.110, %edi
	movl	$59, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.111, %edi
	movl	$60, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.112, %edi
	movl	$61, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.113, %edi
	movl	$62, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.114, %edi
	movl	$63, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.115, %edi
	movl	$64, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.116, %edi
	movl	$65, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.117, %edi
	movl	$65, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.118, %edi
	movl	$66, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.119, %edi
	movl	$67, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.120, %edi
	movl	$68, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.121, %edi
	movl	$69, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.122, %edi
	movl	$70, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.123, %edi
	movl	$71, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.124, %edi
	movl	$72, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.125, %edi
	movl	$73, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.126, %edi
	movl	$74, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.127, %edi
	movl	$75, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.128, %edi
	movl	$76, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.129, %edi
	movl	$77, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.130, %edi
	movl	$78, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.131, %edi
	movl	$79, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.132, %edi
	movl	$80, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.133, %edi
	movl	$92, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.134, %edi
	movl	$93, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.135, %edi
	movl	$26, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.136, %edi
	movl	$27, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.137, %edi
	movl	$28, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.138, %edi
	movl	$29, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.139, %edi
	movl	$20, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.140, %edi
	movl	$21, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.141, %edi
	movl	$22, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.142, %edi
	movl	$23, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.143, %edi
	movl	$24, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.144, %edi
	movl	$25, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.145, %edi
	movl	$30, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.146, %edi
	movl	$31, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.147, %edi
	movl	$32, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.148, %edi
	movl	$33, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.149, %edi
	movl	$35, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.150, %edi
	movl	$34, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.151, %edi
	movl	$36, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.152, %edi
	movl	$37, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.153, %edi
	movl	$38, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.154, %edi
	movl	$39, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.155, %edi
	movl	$40, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.156, %edi
	movl	$41, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.157, %edi
	movl	$44, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.158, %edi
	movl	$42, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.159, %edi
	movl	$43, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.160, %edi
	movl	$45, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.161, %edi
	movl	$46, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.162, %edi
	movl	$47, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.163, %edi
	movl	$48, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.164, %edi
	movl	$49, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.165, %edi
	movl	$50, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.166, %edi
	movl	$51, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.167, %edi
	movl	$94, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.168, %edi
	movl	$95, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.169, %edi
	movl	$96, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.170, %edi
	movl	$97, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.171, %edi
	movl	$98, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.172, %edi
	movl	$99, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.173, %edi
	movl	$6, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$101, %r9d
	callq	load
	movl	$.L.str.174, %edi
	movl	$7, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$101, %r9d
	callq	load
	movl	$.L.str.175, %edi
	movl	$5, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	load
	movl	$.L.str.176, %edi
	movl	$4, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	movl	$1, %r8d
	movl	$100, %r9d
	callq	load
	movl	$.L.str.177, %edi
	movl	$19, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	andb	$-3, 43(%rax)
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16515071, %edx         # imm = 0xFBFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movl	$.L.str.178, %edi
	movl	$19, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	orb	$2, 43(%rax)
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16515071, %edx         # imm = 0xFBFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movl	$.L.str.39, %edi
	movl	$19, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	andb	$-3, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	movl	$.L.str.179, %edi
	movl	$19, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$5, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	orb	$2, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	movl	$.L.str.180, %edi
	movl	$18, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	andb	$-3, 43(%rax)
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16515071, %edx         # imm = 0xFBFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movl	$.L.str.181, %edi
	movl	$18, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	orb	$2, 43(%rax)
	movq	-104(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16515071, %edx         # imm = 0xFBFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movl	$.L.str.182, %edi
	movl	$18, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	andb	$-3, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	movl	$.L.str.183, %edi
	movl	$18, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$6, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	orb	$2, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	movl	$.L.str.184, %edi
	movl	$17, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$7, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	andb	$-3, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	movl	$.L.str.185, %edi
	movl	$17, %esi
	movl	$1, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movl	$7, %r9d
	callq	load
	movq	%rax, -104(%rbp)
	orb	$2, 43(%rax)
	movq	-104(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$4, %ecx
	movb	%cl, 43(%rax)
	callq	FontInit
	callq	InitTime
	callq	FilterInit
	callq	EnvInit
	movq	StartSym(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	xorl	%edi, %edi
	callq	FirstFile
	movzwl	%ax, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$1, %ecx
	xorl	%r8d, %r8d
	callq	LexPush
	movq	-120(%rbp), %rdi
	callq	InitParser
	movq	no_fpos(%rip), %rsi
	movq	StartSym(%rip), %r9
	movl	$104, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	callq	NewToken
	movq	%rax, -80(%rbp)
	movq	StartSym(%rip), %rsi
	leaq	-80(%rbp), %rdi
	movl	$1, %edx
	movl	$1, %ecx
	callq	Parse
	movq	%rax, -96(%rbp)
	movq	CommandOptions(%rip), %rdi
	callq	DisposeObject
	movq	-96(%rbp), %rdi
	callq	TransferEnd
	callq	TransferClose
	movq	BackEnd(%rip), %rax
	callq	*104(%rax)
	movq	BackEnd(%rip), %rcx
	xorl	%eax, %eax
	callq	*224(%rcx)
	callq	CrossClose
	callq	CloseFiles
	movl	$1, %edi
	callq	FilterScavenge
	cmpl	$0, -1724(%rbp)
	je	.LBB0_199
# BB#198:
	movq	no_fpos(%rip), %r8
	movl	TotalWordCount(%rip), %r9d
	movl	$1, %edi
	movl	$29, %esi
	movl	$.L.str.186, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB0_199:
	callq	CheckErrorBlocks
	movq	MsgCat(%rip), %rdi
	callq	catclose
	xorl	%edi, %edi
	callq	exit
.LBB0_67:
	movq	stderr(%rip), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.27, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.28, %esi
	movl	$.L.str.29, %edx
	movl	$.L.str.30, %ecx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.28, %esi
	movl	$.L.str.31, %edx
	movl	$.L.str.32, %ecx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.33, %esi
	movl	$.L.str.34, %edx
	movl	$.L.str.35, %ecx
	movl	$.L.str.36, %r8d
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	-136(%rbp), %rcx
	movl	$.L.str.37, %esi
	movl	$.L.str.38, %edx
	movl	$.L.str.39, %r8d
	movl	$.L.str.40, %r9d
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movq	-136(%rbp), %rcx
	movl	$.L.str.37, %esi
	movl	$.L.str.41, %edx
	movl	$.L.str.39, %r8d
	movl	$.L.str.42, %r9d
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.43, %esi
	movl	$.L.str.44, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.45, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.47, %esi
	movl	$.L.str.44, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.48, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.49, %esi
	movl	$.L.str.46, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.50, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.51, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.52, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.53, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.54, %esi
	xorl	%eax, %eax
	callq	fprintf
	movq	stderr(%rip), %rdi
	movl	$.L.str.55, %esi
	xorl	%eax, %eax
	callq	fprintf
	xorl	%edi, %edi
	callq	exit
.LBB0_98:
	movq	stderr(%rip), %rdi
	callq	PrintUsage
	xorl	%edi, %edi
	callq	exit
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_43
	.quad	.LBB0_40
	.quad	.LBB0_37
	.quad	.LBB0_47
	.quad	.LBB0_182
	.quad	.LBB0_50
	.quad	.LBB0_53
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_30
	.quad	.LBB0_27
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_69
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_180
	.quad	.LBB0_182
	.quad	.LBB0_181
	.quad	.LBB0_67
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_70
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_36
	.quad	.LBB0_182
	.quad	.LBB0_31
	.quad	.LBB0_99
	.quad	.LBB0_33
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_62
	.quad	.LBB0_56
	.quad	.LBB0_182
	.quad	.LBB0_28
	.quad	.LBB0_29
	.quad	.LBB0_100
	.quad	.LBB0_182
	.quad	.LBB0_21
	.quad	.LBB0_72
	.quad	.LBB0_182
	.quad	.LBB0_182
	.quad	.LBB0_26
	.quad	.LBB0_182
	.quad	.LBB0_98
	.quad	.LBB0_182
	.quad	.LBB0_68
	.quad	.LBB0_97

	.text
	.align	16, 0x90
	.type	GetArg,@function
GetArg:                                 # @GetArg
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movslq	(%rdx), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	addq	$2, %rdi
	movl	$.L.str.2, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_2
# BB#1:
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	addq	$2, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_6
.LBB1_2:
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %ecx
	decl	%ecx
	cmpl	%ecx, (%rax)
	jge	.LBB1_5
# BB#3:
	movq	-32(%rbp), %rax
	movslq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	8(%rcx,%rax,8), %rax
	movzbl	(%rax), %eax
	cmpl	$45, %eax
	je	.LBB1_5
# BB#4:
	movq	-32(%rbp), %rax
	movslq	(%rax), %rcx
	leal	1(%rcx), %edx
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB1_6
.LBB1_5:
	movq	$0, -8(%rbp)
.LBB1_6:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	GetArg, .Lfunc_end1-GetArg
	.cfi_endproc

	.align	16, 0x90
	.type	PrintUsage,@function
PrintUsage:                             # @PrintUsage
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.L.str.26, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.187, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.188, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.189, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.190, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.191, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.192, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.193, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.194, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.195, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.196, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.197, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.198, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.199, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.200, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.201, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.202, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.203, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.204, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.205, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.206, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.207, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.208, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.209, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.210, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.211, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.212, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.213, %edx
	xorl	%eax, %eax
	callq	fprintf
	movq	-8(%rbp), %rdi
	movl	$.L.str.26, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	callq	fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	PrintUsage, .Lfunc_end2-PrintUsage
	.cfi_endproc

	.align	16, 0x90
	.type	load,@function
load:                                   # @load
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movb	%r9b, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	no_fpos(%rip), %rdx
	movl	-24(%rbp), %r8d
	movl	-12(%rbp), %eax
	movq	StartSym(%rip), %rsi
	movzbl	-25(%rbp), %ecx
	movq	%rsi, 8(%rsp)
	movl	%eax, (%rsp)
	movq	$0, 16(%rsp)
	movl	$143, %esi
	xorl	%r9d, %r9d
	callq	InsertSym
	movq	%rax, -40(%rbp)
	cmpl	$0, -16(%rbp)
	je	.LBB3_2
# BB#1:
	movq	no_fpos(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.214, %edi
	movl	$144, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
.LBB3_2:
	cmpl	$0, -20(%rbp)
	je	.LBB3_4
# BB#3:
	movq	no_fpos(%rip), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, 8(%rsp)
	movq	$0, 16(%rsp)
	movl	$0, (%rsp)
	movl	$.L.str.215, %edi
	movl	$146, %esi
	movl	$100, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	InsertSym
.LBB3_4:
	cmpl	$0, -16(%rbp)
	je	.LBB3_9
# BB#5:
	cmpl	$0, -20(%rbp)
	je	.LBB3_9
# BB#6:
	cmpl	$79, -12(%rbp)
	je	.LBB3_9
# BB#7:
	cmpl	$80, -12(%rbp)
	je	.LBB3_9
# BB#8:
	movq	-40(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$16, %edx
	movw	%dx, 41(%rax)
.LBB3_9:
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	load, .Lfunc_end3-load
	.cfi_endproc

	.type	MemCheck,@object        # @MemCheck
	.bss
	.globl	MemCheck
	.align	8
MemCheck:
	.quad	0
	.size	MemCheck, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"LOUTLIB"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/usr/staff/jeff/lout.lib"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"unable to initialize locale"
	.size	.L.str.3, 28

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"C"
	.size	.L.str.4, 2

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s/%s/%s/LC_MESSAGES/errors.%s"
	.size	.L.str.5, 31

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"locale"
	.size	.L.str.6, 7

	.type	MsgCat,@object          # @MsgCat
	.comm	MsgCat,8,8
	.type	TotalWordCount,@object  # @TotalWordCount
	.comm	TotalWordCount,4,4
	.type	BackEnd,@object         # @BackEnd
	.comm	BackEnd,8,8
	.type	InitializeAll,@object   # @InitializeAll
	.comm	InitializeAll,4,4
	.type	UseCollate,@object      # @UseCollate
	.comm	UseCollate,4,4
	.type	AllowCrossDb,@object    # @AllowCrossDb
	.comm	AllowCrossDb,4,4
	.type	InMemoryDbIndexes,@object # @InMemoryDbIndexes
	.comm	InMemoryDbIndexes,4,4
	.type	SafeExecution,@object   # @SafeExecution
	.comm	SafeExecution,4,4
	.type	Kern,@object            # @Kern
	.comm	Kern,4,4
	.type	AltErrorFormat,@object  # @AltErrorFormat
	.comm	AltErrorFormat,4,4
	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"lout"
	.size	.L.str.7, 5

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-"
	.size	.L.str.8, 2

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"word is too long"
	.size	.L.str.9, 17

	.type	CommandOptions,@object  # @CommandOptions
	.comm	CommandOptions,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"usage: -o <filename>"
	.size	.L.str.10, 21

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	".lt"
	.size	.L.str.11, 4

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"-o: output file name %s ends with %s"
	.size	.L.str.12, 37

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"usage: -c <filename>"
	.size	.L.str.13, 21

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"usage: -e <filename>"
	.size	.L.str.14, 21

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"EPS"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"usage: -EPS"
	.size	.L.str.16, 12

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"usage: -D <directoryname>"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"usage: -C <directoryname>"
	.size	.L.str.18, 26

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"usage: -F <directoryname>"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"usage: -H <directoryname>"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"usage: -I <directoryname>"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"usage: -i <filename>"
	.size	.L.str.22, 21

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"two -h options illegal"
	.size	.L.str.23, 23

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"usage: -h <filename>"
	.size	.L.str.24, 21

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	".lh"
	.size	.L.str.25, 4

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"%s\n"
	.size	.L.str.26, 4

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Basser Lout Version 3.24 (October 2000)"
	.size	.L.str.27, 40

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"%-28s %s\n"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Basser Lout written by:"
	.size	.L.str.29, 24

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Jeffrey H. Kingston (jeff@cs.usyd.edu.au)"
	.size	.L.str.30, 42

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Free source available from:"
	.size	.L.str.31, 28

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"ftp://ftp.cs.usyd.edu.au/jeff/lout"
	.size	.L.str.32, 35

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"%-28s %s %s\n"
	.size	.L.str.33, 13

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"This executable compiled:"
	.size	.L.str.34, 26

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"15:11:04"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Mar 13 2016"
	.size	.L.str.36, 12

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"%-28s %s%s%s\n"
	.size	.L.str.37, 14

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"System include directory:"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"/"
	.size	.L.str.39, 2

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"include"
	.size	.L.str.40, 8

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"System database directory:"
	.size	.L.str.41, 27

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"data"
	.size	.L.str.42, 5

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Database index files created afresh automatically:%s\n"
	.size	.L.str.43, 54

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	" yes"
	.size	.L.str.44, 5

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Safe execution (disabling system()) is default:%s\n"
	.size	.L.str.45, 51

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	" no"
	.size	.L.str.46, 4

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"strcoll() used for sorting by default:%s\n"
	.size	.L.str.47, 42

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"PDF compression on:%s\n"
	.size	.L.str.48, 23

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Debugging (-d, -dd, -ddd flags) available:%s\n"
	.size	.L.str.49, 46

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"\n"
	.size	.L.str.50, 2

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Basser Lout comes with ABSOLUTELY NO WARRANTY.\n"
	.size	.L.str.51, 48

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"This is free software, and you are welcome to\n"
	.size	.L.str.52, 47

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"redistribute it under certain conditions.  For\n"
	.size	.L.str.53, 48

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"details on both points, consult the GNU General\n"
	.size	.L.str.54, 49

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Public License (distributed with this software).\n"
	.size	.L.str.55, 50

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"PDF"
	.size	.L.str.56, 4

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"%f%c%f%c"
	.size	.L.str.57, 9

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"usage: lout -%c<length><length>"
	.size	.L.str.58, 32

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"lout -%c: units must be c, i, p, or m"
	.size	.L.str.59, 38

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"%s - debug flags not implemented"
	.size	.L.str.60, 33

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"-m%ld"
	.size	.L.str.61, 6

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"checking memory location %ld\n"
	.size	.L.str.62, 30

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"standard input specified twice"
	.size	.L.str.63, 31

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"%[^{ ] { %[^}] }"
	.size	.L.str.64, 17

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"error in command-line option %s"
	.size	.L.str.65, 32

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"unknown command line flag %s"
	.size	.L.str.66, 29

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"unable to initialize collation"
	.size	.L.str.67, 31

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"w"
	.size	.L.str.68, 2

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"cannot open output file %s"
	.size	.L.str.69, 27

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"font"
	.size	.L.str.70, 5

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"hyph"
	.size	.L.str.71, 5

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"maps"
	.size	.L.str.72, 5

	.type	StartSym,@object        # @StartSym
	.comm	StartSym,8,8
	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"\\Start"
	.size	.L.str.73, 7

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"@Galley"
	.size	.L.str.74, 8

	.type	GalleySym,@object       # @GalleySym
	.comm	GalleySym,8,8
	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"@ForceGalley"
	.size	.L.str.75, 13

	.type	ForceGalleySym,@object  # @ForceGalleySym
	.comm	ForceGalleySym,8,8
	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"@LInput"
	.size	.L.str.76, 8

	.type	InputSym,@object        # @InputSym
	.comm	InputSym,8,8
	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"\\Print"
	.size	.L.str.77, 7

	.type	PrintSym,@object        # @PrintSym
	.comm	PrintSym,8,8
	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"@FilterIn"
	.size	.L.str.78, 10

	.type	FilterInSym,@object     # @FilterInSym
	.comm	FilterInSym,8,8
	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"@FilterOut"
	.size	.L.str.79, 11

	.type	FilterOutSym,@object    # @FilterOutSym
	.comm	FilterOutSym,8,8
	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"@FilterErr"
	.size	.L.str.80, 11

	.type	FilterErrSym,@object    # @FilterErrSym
	.comm	FilterErrSym,8,8
	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"@OptGall"
	.size	.L.str.81, 9

	.type	OptGallSym,@object      # @OptGallSym
	.comm	OptGallSym,8,8
	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"@Verbatim"
	.size	.L.str.82, 10

	.type	VerbatimSym,@object     # @VerbatimSym
	.comm	VerbatimSym,8,8
	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"@RawVerbatim"
	.size	.L.str.83, 13

	.type	RawVerbatimSym,@object  # @RawVerbatimSym
	.comm	RawVerbatimSym,8,8
	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"@Begin"
	.size	.L.str.84, 7

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"@End"
	.size	.L.str.85, 5

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"@LEnv"
	.size	.L.str.86, 6

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"@@A"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"@@B"
	.size	.L.str.88, 4

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"@@C"
	.size	.L.str.89, 4

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"@@D"
	.size	.L.str.90, 4

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"@@E"
	.size	.L.str.91, 4

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"@LClos"
	.size	.L.str.92, 7

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"@@V"
	.size	.L.str.93, 4

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"@LUse"
	.size	.L.str.94, 6

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"@LEO"
	.size	.L.str.95, 5

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"{"
	.size	.L.str.96, 2

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"}"
	.size	.L.str.97, 2

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"@Include"
	.size	.L.str.98, 9

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"@SysInclude"
	.size	.L.str.99, 12

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"@PrependGraphic"
	.size	.L.str.100, 16

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"@SysPrependGraphic"
	.size	.L.str.101, 19

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"@Database"
	.size	.L.str.102, 10

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"@SysDatabase"
	.size	.L.str.103, 13

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"@Use"
	.size	.L.str.104, 5

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"@NotRevealed"
	.size	.L.str.105, 13

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"@Case"
	.size	.L.str.106, 6

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"@Yield"
	.size	.L.str.107, 7

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"@BackEnd"
	.size	.L.str.108, 9

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"@Char"
	.size	.L.str.109, 6

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"@Font"
	.size	.L.str.110, 6

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"@Space"
	.size	.L.str.111, 7

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"@YUnit"
	.size	.L.str.112, 7

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"@ZUnit"
	.size	.L.str.113, 7

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"@Break"
	.size	.L.str.114, 7

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"@Underline"
	.size	.L.str.115, 11

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"@SetColour"
	.size	.L.str.116, 11

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"@SetColor"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"@Outline"
	.size	.L.str.118, 9

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"@Language"
	.size	.L.str.119, 10

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"@CurrLang"
	.size	.L.str.120, 10

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"@CurrFamily"
	.size	.L.str.121, 12

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"@CurrFace"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"@CurrYUnit"
	.size	.L.str.123, 11

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"@CurrZUnit"
	.size	.L.str.124, 11

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"@Common"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"@Rump"
	.size	.L.str.126, 6

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"@Meld"
	.size	.L.str.127, 6

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"@Insert"
	.size	.L.str.128, 8

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"@OneOf"
	.size	.L.str.129, 7

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"@Next"
	.size	.L.str.130, 6

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"@Plus"
	.size	.L.str.131, 6

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"@Minus"
	.size	.L.str.132, 7

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"@Open"
	.size	.L.str.133, 6

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"@Tagged"
	.size	.L.str.134, 8

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"@Wide"
	.size	.L.str.135, 6

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"@High"
	.size	.L.str.136, 6

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"@HShift"
	.size	.L.str.137, 8

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"@VShift"
	.size	.L.str.138, 8

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"@BeginHeaderComponent"
	.size	.L.str.139, 22

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"@EndHeaderComponent"
	.size	.L.str.140, 20

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"@SetHeaderComponent"
	.size	.L.str.141, 20

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"@ClearHeaderComponent"
	.size	.L.str.142, 22

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"@OneCol"
	.size	.L.str.143, 8

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"@OneRow"
	.size	.L.str.144, 8

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"@HScale"
	.size	.L.str.145, 8

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"@VScale"
	.size	.L.str.146, 8

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"@HCover"
	.size	.L.str.147, 8

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"@VCover"
	.size	.L.str.148, 8

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"@KernShrink"
	.size	.L.str.149, 12

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"@Scale"
	.size	.L.str.150, 7

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"@HContract"
	.size	.L.str.151, 11

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"@VContract"
	.size	.L.str.152, 11

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"@HLimited"
	.size	.L.str.153, 10

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"@VLimited"
	.size	.L.str.154, 10

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"@HExpand"
	.size	.L.str.155, 9

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"@VExpand"
	.size	.L.str.156, 9

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"@StartHVSpan"
	.size	.L.str.157, 13

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"@StartHSpan"
	.size	.L.str.158, 12

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"@StartVSpan"
	.size	.L.str.159, 12

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"@HSpan"
	.size	.L.str.160, 7

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"@VSpan"
	.size	.L.str.161, 7

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"@PAdjust"
	.size	.L.str.162, 9

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"@HAdjust"
	.size	.L.str.163, 9

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"@VAdjust"
	.size	.L.str.164, 9

	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"@Rotate"
	.size	.L.str.165, 8

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"@Background"
	.size	.L.str.166, 12

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"@IncludeGraphic"
	.size	.L.str.167, 16

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"@SysIncludeGraphic"
	.size	.L.str.168, 19

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"@PlainGraphic"
	.size	.L.str.169, 14

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"@Graphic"
	.size	.L.str.170, 9

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"@LinkSource"
	.size	.L.str.171, 12

	.type	.L.str.172,@object      # @.str.172
.L.str.172:
	.asciz	"@LinkDest"
	.size	.L.str.172, 10

	.type	.L.str.173,@object      # @.str.173
.L.str.173:
	.asciz	"&&"
	.size	.L.str.173, 3

	.type	.L.str.174,@object      # @.str.174
.L.str.174:
	.asciz	"&&&"
	.size	.L.str.174, 4

	.type	.L.str.175,@object      # @.str.175
.L.str.175:
	.asciz	"@Null"
	.size	.L.str.175, 6

	.type	.L.str.176,@object      # @.str.176
.L.str.176:
	.asciz	"@PageLabel"
	.size	.L.str.176, 11

	.type	.L.str.177,@object      # @.str.177
.L.str.177:
	.asciz	"//"
	.size	.L.str.177, 3

	.type	.L.str.178,@object      # @.str.178
.L.str.178:
	.asciz	"^//"
	.size	.L.str.178, 4

	.type	.L.str.179,@object      # @.str.179
.L.str.179:
	.asciz	"^/"
	.size	.L.str.179, 3

	.type	.L.str.180,@object      # @.str.180
.L.str.180:
	.asciz	"||"
	.size	.L.str.180, 3

	.type	.L.str.181,@object      # @.str.181
.L.str.181:
	.asciz	"^||"
	.size	.L.str.181, 4

	.type	.L.str.182,@object      # @.str.182
.L.str.182:
	.asciz	"|"
	.size	.L.str.182, 2

	.type	.L.str.183,@object      # @.str.183
.L.str.183:
	.asciz	"^|"
	.size	.L.str.183, 3

	.type	.L.str.184,@object      # @.str.184
.L.str.184:
	.asciz	"&"
	.size	.L.str.184, 2

	.type	.L.str.185,@object      # @.str.185
.L.str.185:
	.asciz	"^&"
	.size	.L.str.185, 3

	.type	.L.str.186,@object      # @.str.186
.L.str.186:
	.asciz	"total of all words printed: %d"
	.size	.L.str.186, 31

	.type	.L.str.187,@object      # @.str.187
.L.str.187:
	.asciz	"usage:  lout options files"
	.size	.L.str.187, 27

	.type	.L.str.188,@object      # @.str.188
.L.str.188:
	.asciz	"  -s              suppress access to cross reference database"
	.size	.L.str.188, 62

	.type	.L.str.189,@object      # @.str.189
.L.str.189:
	.asciz	"  -EPS            EPS (Encapsulated PostScript) output"
	.size	.L.str.189, 55

	.type	.L.str.190,@object      # @.str.190
.L.str.190:
	.asciz	"  -PDF or -Z      PDF (Adobe Portable Document Format) output"
	.size	.L.str.190, 62

	.type	.L.str.191,@object      # @.str.191
.L.str.191:
	.asciz	"  -p              plain text output instead of PostScript"
	.size	.L.str.191, 58

	.type	.L.str.192,@object      # @.str.192
.L.str.192:
	.asciz	"  -P              like -p but with form-feed char between pages"
	.size	.L.str.192, 64

	.type	.L.str.193,@object      # @.str.193
.L.str.193:
	.asciz	"  -S              safe execution (disable calls to system(3))"
	.size	.L.str.193, 62

	.type	.L.str.194,@object      # @.str.194
.L.str.194:
	.asciz	"  -U              unsafe execution (allow calls to system(3))"
	.size	.L.str.194, 62

	.type	.L.str.195,@object      # @.str.195
.L.str.195:
	.asciz	"  -l              ASCII collation order when sorting indexes etc."
	.size	.L.str.195, 66

	.type	.L.str.196,@object      # @.str.196
.L.str.196:
	.asciz	"  -L              locale collation order when sorting indexes etc."
	.size	.L.str.196, 67

	.type	.L.str.197,@object      # @.str.197
.L.str.197:
	.asciz	"  -o file         output to file instead of stdout"
	.size	.L.str.197, 51

	.type	.L.str.198,@object      # @.str.198
.L.str.198:
	.asciz	"  -e file         error messages to file instead of stderr"
	.size	.L.str.198, 59

	.type	.L.str.199,@object      # @.str.199
.L.str.199:
	.asciz	"  -a              alternative error format:  file:line:col ..."
	.size	.L.str.199, 63

	.type	.L.str.200,@object      # @.str.200
.L.str.200:
	.asciz	"  -w              print total number of words in output"
	.size	.L.str.200, 56

	.type	.L.str.201,@object      # @.str.201
.L.str.201:
	.asciz	"  -i file         like @SysInclude { file }; not recommended"
	.size	.L.str.201, 61

	.type	.L.str.202,@object      # @.str.202
.L.str.202:
	.asciz	"  -I directory    add directory to include file search path"
	.size	.L.str.202, 60

	.type	.L.str.203,@object      # @.str.203
.L.str.203:
	.asciz	"  -C directory    add directory to LCM file search path"
	.size	.L.str.203, 56

	.type	.L.str.204,@object      # @.str.204
.L.str.204:
	.asciz	"  -F directory    add directory to font metrics file search path"
	.size	.L.str.204, 65

	.type	.L.str.205,@object      # @.str.205
.L.str.205:
	.asciz	"  -H directory    add directory to hyphenation file search path"
	.size	.L.str.205, 64

	.type	.L.str.206,@object      # @.str.206
.L.str.206:
	.asciz	"  -D directory    add directory to database file search path"
	.size	.L.str.206, 61

	.type	.L.str.207,@object      # @.str.207
.L.str.207:
	.asciz	"  --option{value} set option e.g. --'@InitialFont{Times Base 10p}'"
	.size	.L.str.207, 67

	.type	.L.str.208,@object      # @.str.208
.L.str.208:
	.asciz	"  -c file         use file.li instead of lout.li for crossrefs"
	.size	.L.str.208, 63

	.type	.L.str.209,@object      # @.str.209
.L.str.209:
	.asciz	"  -M              save memory (don't read in database indexes)"
	.size	.L.str.209, 63

	.type	.L.str.210,@object      # @.str.210
.L.str.210:
	.asciz	"  -x              initializing run, not for ordinary use"
	.size	.L.str.210, 57

	.type	.L.str.211,@object      # @.str.211
.L.str.211:
	.asciz	"  -u              print this usage message on stderr and exit"
	.size	.L.str.211, 62

	.type	.L.str.212,@object      # @.str.212
.L.str.212:
	.asciz	"  -V              print version and configuration information"
	.size	.L.str.212, 62

	.type	.L.str.213,@object      # @.str.213
.L.str.213:
	.asciz	"  -               a file name denoting standard input"
	.size	.L.str.213, 54

	.type	.L.str.214,@object      # @.str.214
.L.str.214:
	.asciz	"pa"
	.size	.L.str.214, 3

	.type	.L.str.215,@object      # @.str.215
.L.str.215:
	.asciz	"pb"
	.size	.L.str.215, 3


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
