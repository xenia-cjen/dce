	.text
	.file	"z18.dce"
	.globl	TransferInit
	.align	16, 0x90
	.type	TransferInit,@function
TransferInit:                           # @TransferInit
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movabsq	$36028788437417982, %rax # imm = 0x7FFFFE007FFFFE
	movq	%rax, initial_constraint(%rip)
	movl	$8388606, initial_constraint+8(%rip) # imm = 0x7FFFFE
	movq	-8(%rbp), %rax
	movq	%rax, InitialEnvironment(%rip)
	movzwl	InitialStyle(%rip), %eax
	movl	%eax, %ecx
	andl	$65407, %ecx            # imm = 0xFF7F
	movw	%cx, InitialStyle(%rip)
	movl	%eax, %ecx
	andl	$65151, %ecx            # imm = 0xFE7F
	movw	%cx, InitialStyle(%rip)
	movl	%eax, %ecx
	andl	$64639, %ecx            # imm = 0xFC7F
	movw	%cx, InitialStyle(%rip)
	andl	$57471, %eax            # imm = 0xE07F
	orl	$1024, %eax             # imm = 0x400
	movw	%ax, InitialStyle(%rip)
	andl	$1151, %eax             # imm = 0x47F
	orl	$24576, %eax            # imm = 0x6000
	movw	%ax, InitialStyle(%rip)
	movw	$360, InitialStyle+2(%rip) # imm = 0x168
	movb	InitialStyle(%rip), %al
	movb	%al, %cl
	andb	$-2, %cl
	movb	%cl, InitialStyle(%rip)
	movb	%al, %cl
	andb	$-4, %cl
	movb	%cl, InitialStyle(%rip)
	movb	%al, %cl
	andb	$-8, %cl
	movb	%cl, InitialStyle(%rip)
	andb	$-120, %al
	movb	%al, InitialStyle(%rip)
	movzwl	InitialStyle+4(%rip), %eax
	movl	%eax, %ecx
	andl	$65407, %ecx            # imm = 0xFF7F
	movw	%cx, InitialStyle+4(%rip)
	andl	$65151, %eax            # imm = 0xFE7F
	movw	%ax, InitialStyle+4(%rip)
	orl	$512, %eax              # imm = 0x200
	movw	%ax, InitialStyle+4(%rip)
	andl	$-7553, %eax            # imm = 0xFFFFFFFFFFFFE27F
	orl	$1024, %eax             # imm = 0x400
	movw	%ax, InitialStyle+4(%rip)
	andl	$1663, %eax             # imm = 0x67F
	orl	$8192, %eax             # imm = 0x2000
	movw	%ax, InitialStyle+4(%rip)
	movw	$120, InitialStyle+6(%rip)
	movb	InitialStyle+4(%rip), %al
	movb	%al, %cl
	andb	$-4, %cl
	movb	%cl, InitialStyle+4(%rip)
	movb	%al, %cl
	andb	$-16, %cl
	movb	%cl, InitialStyle+4(%rip)
	andb	$-128, %al
	movb	%al, InitialStyle+4(%rip)
	andb	$-9, InitialStyle(%rip)
	movl	InitialStyle+12(%rip), %eax
	movl	%eax, %ecx
	andl	$-4096, %ecx            # imm = 0xFFFFFFFFFFFFF000
	movl	%ecx, InitialStyle+12(%rip)
	andl	$-4194304, %eax         # imm = 0xFFFFFFFFFFC00000
	movl	%eax, InitialStyle+12(%rip)
	andb	$63, InitialStyle+14(%rip)
	andb	$-64, InitialStyle+15(%rip)
	movl	$0, InitialStyle+8(%rip)
	movb	InitialStyle+15(%rip), %al
	movb	%al, %cl
	andb	$127, %cl
	movb	%cl, InitialStyle+15(%rip)
	andb	$63, %al
	movb	%al, InitialStyle+15(%rip)
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_5
.LBB0_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_5
.LBB0_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_5:
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	andb	$-17, 43(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-72(%rbp), %rax
	orw	$256, 42(%rax)          # imm = 0x100
	movzbl	zz_lengths+122(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_10
.LBB0_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_10
.LBB0_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_10:
	movq	zz_hold(%rip), %rax
	movb	$122, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -64(%rbp)
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_15
.LBB0_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_15
.LBB0_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_15:
	movq	zz_hold(%rip), %rax
	movb	$2, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -16(%rbp)
	movq	PrintSym(%rip), %rcx
	movq	%rcx, 80(%rax)
	movq	-16(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-16(%rbp), %rax
	orw	$16, 42(%rax)
	movq	-16(%rbp), %rax
	andw	$-9, 42(%rax)
	movq	-16(%rbp), %rax
	andw	$-5, 42(%rax)
	movq	-64(%rbp), %rax
	andw	$-33, 42(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_17
# BB#16:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_20
.LBB0_17:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_18
# BB#19:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_20
.LBB0_18:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_20:
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
	je	.LBB0_23
# BB#21:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_23
# BB#22:
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
.LBB0_23:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_26
# BB#24:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_26
# BB#25:
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
.LBB0_26:
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_28
# BB#27:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_31
.LBB0_28:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_29
# BB#30:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_31
.LBB0_29:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_31:
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, root_galley(%rip)
	andb	$-17, 43(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 128(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 136(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 152(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 144(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 112(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 104(%rax)
	movq	root_galley(%rip), %rax
	orw	$256, 42(%rax)          # imm = 0x100
	movq	no_fpos(%rip), %rax
	movw	2(%rax), %ax
	movq	root_galley(%rip), %rcx
	movw	%ax, 34(%rcx)
	movq	no_fpos(%rip), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	root_galley(%rip), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	no_fpos(%rip), %rax
	andl	4(%rax), %esi
	movq	root_galley(%rip), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 88(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 80(%rax)
	movq	root_galley(%rip), %rax
	movq	$0, 96(%rax)
	movq	root_galley(%rip), %rax
	andw	$-3, 42(%rax)
	movq	root_galley(%rip), %rax
	andw	$-129, 42(%rax)
	movq	root_galley(%rip), %rax
	movb	$-127, 40(%rax)
	movzbl	zz_lengths+2(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_33
# BB#32:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_36
.LBB0_33:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_34
# BB#35:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_36
.LBB0_34:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_36:
	movq	zz_hold(%rip), %rax
	movb	$2, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -24(%rbp)
	movq	InputSym(%rip), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_38
# BB#37:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_41
.LBB0_38:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_39
# BB#40:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_41
.LBB0_39:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_41:
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
	movq	root_galley(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_44
# BB#42:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_44
# BB#43:
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
.LBB0_44:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_47
# BB#45:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_47
# BB#46:
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
.LBB0_47:
	movq	root_galley(%rip), %rdi
	movq	-8(%rbp), %rsi
	leaq	-48(%rbp), %rax
	movq	%rax, 40(%rsp)
	leaq	-40(%rbp), %rax
	movq	%rax, 32(%rsp)
	leaq	-56(%rbp), %rax
	movq	%rax, 24(%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 16(%rsp)
	movq	$initial_constraint, 8(%rsp)
	movq	$InitialStyle, (%rsp)
	movl	$1, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	SizeGalley
	cmpq	$0, -40(%rbp)
	je	.LBB0_49
# BB#48:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_49:
	cmpq	$0, -48(%rbp)
	je	.LBB0_51
# BB#50:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_51:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_53
# BB#52:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_56
.LBB0_53:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_54
# BB#55:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_56
.LBB0_54:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_56:
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
	movq	-64(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_59
# BB#57:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_59
# BB#58:
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
.LBB0_59:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	root_galley(%rip), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_62
# BB#60:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_62
# BB#61:
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
.LBB0_62:
	movq	root_galley(%rip), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_64:                               #   in Loop: Header=BB0_63 Depth=1
	movq	-32(%rbp), %rax
.LBB0_63:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_64
# BB#65:
	movq	-32(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB0_68
# BB#66:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB0_68
# BB#67:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	je	.LBB0_69
.LBB0_68:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_69:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB0_71
# BB#70:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_71:
	movq	-32(%rbp), %rax
	orw	$32, 42(%rax)
	movl	$0, itop(%rip)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_73
# BB#72:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_76
.LBB0_73:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_74
# BB#75:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_76
.LBB0_74:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_76:
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
	movslq	itop(%rip), %rcx
	movq	%rax, targets(,%rcx,8)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_78
# BB#77:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_81
.LBB0_78:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_79
# BB#80:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_81
.LBB0_79:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_81:
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
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_84
# BB#82:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_84
# BB#83:
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
.LBB0_84:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_87
# BB#85:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_87
# BB#86:
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
.LBB0_87:
	movq	-32(%rbp), %rax
	movq	80(%rax), %rdi
	movslq	itop(%rip), %rax
	shlq	$4, %rax
	leaq	constraints(%rax), %rsi
	leaq	-80(%rbp), %rcx
	xorl	%edx, %edx
	callq	Constrained
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	TransferInit, .Lfunc_end0-TransferInit
	.cfi_endproc

	.globl	TransferBegin
	.align	16, 0x90
	.type	TransferBegin,@function
TransferBegin:                          # @TransferBegin
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
	subq	$120, %rsp
.Ltmp6:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$2, %eax
	je	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$1, %eax
	jae	.LBB1_4
# BB#3:
	movq	-24(%rbp), %rdi
	callq	CrossAddTag
.LBB1_4:
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB1_6
# BB#5:
	movq	-24(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$18, %edi
	movl	$1, %esi
	movl	$.L.str.7, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB1_6:
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB1_7
	.align	16, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_7 Depth=1
	movq	-104(%rbp), %rax
.LBB1_7:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_8
# BB#9:
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdi
	callq	GetEnv
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB1_11
# BB#10:
	movq	-24(%rbp), %rdi
	movq	no_fpos(%rip), %rsi
	callq	CopyObject
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rdi
	movq	%rax, %rsi
	callq	AttachEnv
	movq	-48(%rbp), %rdi
	xorl	%esi, %esi
	callq	SetEnv
	jmp	.LBB1_12
.LBB1_11:
	movq	-64(%rbp), %rax
.LBB1_12:
	movq	%rax, -72(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_17
.LBB1_14:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_15
# BB#16:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_17
.LBB1_15:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_17:
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
	movq	%rax, -80(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_19
# BB#18:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_22
.LBB1_19:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_20
# BB#21:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_22
.LBB1_20:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_22:
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
	movq	-80(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_25
# BB#23:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_25
# BB#24:
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
.LBB1_25:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-72(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_28
# BB#26:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_28
# BB#27:
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
.LBB1_28:
	movzbl	zz_lengths+120(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_30
# BB#29:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_33
.LBB1_30:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_31
# BB#32:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_33
.LBB1_31:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_33:
	movq	zz_hold(%rip), %rax
	movb	$120, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -40(%rbp)
	movq	$0, 88(%rax)
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_35
# BB#34:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_38
.LBB1_35:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_36
# BB#37:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_38
.LBB1_36:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_38:
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movq	-24(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-24(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-96(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-24(%rbp), %rax
	andl	36(%rax), %esi
	movq	-96(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-32(%rbp), %rax
	movq	-96(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-96(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-96(%rbp), %rax
	orw	$256, 42(%rax)          # imm = 0x100
	movq	-96(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-96(%rbp), %rax
	orw	$128, 42(%rax)
	movq	-96(%rbp), %rax
	andw	$-3, 42(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_40
# BB#39:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_43
.LBB1_40:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_41
# BB#42:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_43
.LBB1_41:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_43:
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
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_46
# BB#44:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_46
# BB#45:
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
.LBB1_46:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_49
# BB#47:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_49
# BB#48:
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
.LBB1_49:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_51
# BB#50:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_54
.LBB1_51:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_52
# BB#53:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_54
.LBB1_52:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_54:
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
	je	.LBB1_57
# BB#55:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_57
# BB#56:
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
.LBB1_57:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-24(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_60
# BB#58:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_60
# BB#59:
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
.LBB1_60:
	movq	-64(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	AttachEnv
	movq	-96(%rbp), %rdi
	callq	SetTarget
	movq	-96(%rbp), %rax
	movq	80(%rax), %rcx
	xorl	%eax, %eax
	movzbl	126(%rcx), %ecx
	btl	$5, %ecx
	jae	.LBB1_62
# BB#61:
	movq	-96(%rbp), %rdi
	callq	BuildEnclose
.LBB1_62:
	movq	-96(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-96(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-96(%rbp), %rax
	movq	$0, 144(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_64
# BB#63:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_67
.LBB1_64:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_65
# BB#66:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_67
.LBB1_65:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_67:
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
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_70
# BB#68:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_70
# BB#69:
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
.LBB1_70:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_73
# BB#71:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_73
# BB#72:
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
.LBB1_73:
	movq	-96(%rbp), %rax
	cmpq	$0, 88(%rax)
	je	.LBB1_75
# BB#74:
	movq	-96(%rbp), %rax
	movq	88(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$11, %eax
	jb	.LBB1_76
.LBB1_75:
	movq	-96(%rbp), %rdi
	callq	FlushGalley
.LBB1_76:
	movq	-96(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_77
	.align	16, 0x90
.LBB1_78:                               #   in Loop: Header=BB1_77 Depth=1
	movq	-40(%rbp), %rax
.LBB1_77:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_78
# BB#79:
	movq	-40(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	jne	.LBB1_122
# BB#80:
	movq	-96(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$1, %eax
	jae	.LBB1_81
.LBB1_122:
	movq	-96(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB1_162
# BB#123:
	movl	itop(%rip), %eax
	incl	%eax
	movl	%eax, itop(%rip)
	cmpl	$30, %eax
	jl	.LBB1_125
# BB#124:
	movq	-24(%rbp), %r8
	addq	$32, %r8
	movl	$18, %edi
	movl	$2, %esi
	movl	$.L.str.8, %edx
	movl	$1, %ecx
	movl	$30, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_125:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_127
# BB#126:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_130
.LBB1_162:
	movq	no_fpos(%rip), %rsi
	movq	-32(%rbp), %rax
	movzbl	40(%rax), %r8d
	movl	$108, %edi
	jmp	.LBB1_163
.LBB1_127:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_128
# BB#129:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_130
.LBB1_81:
	movq	-40(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB1_82
	.align	16, 0x90
.LBB1_91:                               #   in Loop: Header=BB1_82 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_82:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB1_92
# BB#83:                                #   in Loop: Header=BB1_82 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_85
# BB#84:                                #   in Loop: Header=BB1_82 Depth=1
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
.LBB1_85:                               #   in Loop: Header=BB1_82 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_87
# BB#86:                                #   in Loop: Header=BB1_82 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB1_87:                               #   in Loop: Header=BB1_82 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_89
# BB#88:                                #   in Loop: Header=BB1_82 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_90
.LBB1_89:                               #   in Loop: Header=BB1_82 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_90:                               #   in Loop: Header=BB1_82 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_91
	.align	16, 0x90
.LBB1_101:                              #   in Loop: Header=BB1_92 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_92:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_102
# BB#93:                                #   in Loop: Header=BB1_92 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_95
# BB#94:                                #   in Loop: Header=BB1_92 Depth=1
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
.LBB1_95:                               #   in Loop: Header=BB1_92 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_97
# BB#96:                                #   in Loop: Header=BB1_92 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB1_97:                               #   in Loop: Header=BB1_92 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_99
# BB#98:                                #   in Loop: Header=BB1_92 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_100
.LBB1_99:                               #   in Loop: Header=BB1_92 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_101
	.align	16, 0x90
.LBB1_100:                              #   in Loop: Header=BB1_92 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_101
.LBB1_102:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_104
# BB#103:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_105
.LBB1_104:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_106
.LBB1_128:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_130:
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
	movslq	itop(%rip), %rcx
	movq	%rax, targets(,%rcx,8)
	movq	$0, -104(%rbp)
	movq	-96(%rbp), %rax
	jmp	.LBB1_131
	.align	16, 0x90
.LBB1_152:                              #   in Loop: Header=BB1_131 Depth=1
	movq	-56(%rbp), %rax
.LBB1_131:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_133 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB1_154
# BB#132:                               #   in Loop: Header=BB1_131 Depth=1
	movq	-56(%rbp), %rax
	jmp	.LBB1_133
	.align	16, 0x90
.LBB1_134:                              #   in Loop: Header=BB1_133 Depth=2
	movq	-48(%rbp), %rax
.LBB1_133:                              #   Parent Loop BB1_131 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_134
# BB#135:                               #   in Loop: Header=BB1_131 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB1_152
# BB#136:                               #   in Loop: Header=BB1_131 Depth=1
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	jne	.LBB1_152
# BB#137:
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	movslq	itop(%rip), %rax
	shlq	$4, %rax
	leaq	constraints(%rax), %rsi
	leaq	-112(%rbp), %rcx
	xorl	%edx, %edx
	callq	Constrained
	movslq	itop(%rip), %rax
	shlq	$4, %rax
	cmpl	$0, constraints(%rax)
	js	.LBB1_153
# BB#138:
	movslq	itop(%rip), %rax
	shlq	$4, %rax
	cmpl	$0, constraints+4(%rax)
	js	.LBB1_153
# BB#139:
	movslq	itop(%rip), %rax
	shlq	$4, %rax
	cmpl	$0, constraints+8(%rax)
	js	.LBB1_153
# BB#140:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB1_142
# BB#141:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB1_145
.LBB1_153:
	movq	-96(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movl	$18, %edi
	movl	$3, %esi
	movl	$.L.str.9, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB1_154:
	cmpq	$0, -104(%rbp)
	je	.LBB1_156
# BB#155:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jae	.LBB1_157
.LBB1_156:
	movq	no_fpos(%rip), %rsi
	movq	-32(%rbp), %rax
	movzbl	40(%rax), %r8d
	movl	$110, %edi
.LBB1_163:
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	callq	NewToken
	movq	%rax, -88(%rbp)
.LBB1_164:
	movq	-80(%rbp), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	jmp	.LBB1_165
.LBB1_157:
	movq	-104(%rbp), %rax
	movq	80(%rax), %rdi
	leaq	-128(%rbp), %rsi
	leaq	-112(%rbp), %rcx
	movl	$1, %edx
	callq	Constrained
	cmpl	$8388607, -128(%rbp)    # imm = 0x7FFFFF
	jne	.LBB1_160
# BB#158:
	cmpl	$8388607, -124(%rbp)    # imm = 0x7FFFFF
	jne	.LBB1_160
# BB#159:
	cmpl	$8388607, -120(%rbp)    # imm = 0x7FFFFF
	je	.LBB1_161
.LBB1_160:
	movq	-104(%rbp), %rbx
	addq	$32, %rbx
	movq	-32(%rbp), %rdi
	callq	SymName
	movq	%rax, %r9
	movl	$18, %edi
	movl	$4, %esi
	movl	$.L.str.10, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB1_164
.LBB1_105:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_106:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-80(%rbp), %rdi
	callq	DisposeObject
	movq	-24(%rbp), %rax
	cmpq	%rax, (%rax)
	je	.LBB1_121
# BB#107:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB1_108
	.align	16, 0x90
.LBB1_109:                              #   in Loop: Header=BB1_108 Depth=1
	movq	-64(%rbp), %rax
.LBB1_108:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_109
# BB#110:
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$82, %eax
	jne	.LBB1_121
# BB#111:
	movq	-24(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, xx_link(%rip)
	movq	%rcx, zz_hold(%rip)
	xorl	%eax, %eax
	cmpq	%rcx, 24(%rcx)
	je	.LBB1_113
# BB#112:
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
.LBB1_113:
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_115
# BB#114:
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB1_115:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_117
# BB#116:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_118
.LBB1_117:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_119
.LBB1_161:
	movq	no_fpos(%rip), %rsi
	movq	-32(%rbp), %rax
	movzbl	40(%rax), %r8d
	movl	$109, %edi
	jmp	.LBB1_163
.LBB1_118:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_119:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	xx_tmp(%rip), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB1_121
# BB#120:
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB1_121:
	movq	-24(%rbp), %rax
.LBB1_165:
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB1_142:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB1_143
# BB#144:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB1_145
.LBB1_143:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB1_145:
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
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_148
# BB#146:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_148
# BB#147:
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
.LBB1_148:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB1_151
# BB#149:
	cmpq	$0, zz_res(%rip)
	je	.LBB1_151
# BB#150:
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
.LBB1_151:
	movq	-48(%rbp), %rax
	movq	%rax, -104(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	callq	DetachEnv
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	80(%rax), %rsi
	callq	AttachEnv
	jmp	.LBB1_154
.Lfunc_end1:
	.size	TransferBegin, .Lfunc_end1-TransferBegin
	.cfi_endproc

	.globl	TransferComponent
	.align	16, 0x90
	.type	TransferComponent,@function
TransferComponent:                      # @TransferComponent
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
	pushq	%rbx
	subq	$152, %rsp
.Ltmp10:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_1
# BB#2:
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_3
	.align	16, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-88(%rbp), %rax
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_4
# BB#5:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB2_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_7:
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_9
# BB#8:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_12
.LBB2_1:
	movq	-16(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB2_92
.LBB2_9:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_10
# BB#11:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_12
.LBB2_10:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_12:
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	andb	$-17, 43(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-72(%rbp), %rax
	orw	$256, 42(%rax)          # imm = 0x100
	movq	-16(%rbp), %rax
	movw	34(%rax), %ax
	movq	-72(%rbp), %rcx
	movw	%ax, 34(%rcx)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
	movq	-72(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-72(%rbp), %rax
	movb	$-127, 40(%rax)
	movq	-72(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-72(%rbp), %rax
	andw	$-129, 42(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_14
# BB#13:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_17
.LBB2_14:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_15
# BB#16:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_17
.LBB2_15:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_17:
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
	je	.LBB2_20
# BB#18:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_20
# BB#19:
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
.LBB2_20:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_23
# BB#21:
	cmpq	$0, zz_res(%rip)
	je	.LBB2_23
# BB#22:
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
.LBB2_23:
	movq	-88(%rbp), %rax
	movq	80(%rax), %rdi
	movq	%rdi, -80(%rbp)
	callq	GetEnv
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movzwl	42(%rdx), %ecx
	shrl	$2, %ecx
	andl	$1, %ecx
	addq	$64, %rdx
	movslq	itop(%rip), %rsi
	shlq	$4, %rsi
	leaq	constraints(%rsi), %rsi
	leaq	-56(%rbp), %rbx
	movq	%rbx, 40(%rsp)
	leaq	-48(%rbp), %rbx
	movq	%rbx, 32(%rsp)
	leaq	-64(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 16(%rsp)
	movl	$1, %edx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, %rsi
	callq	SizeGalley
	cmpq	$0, -48(%rbp)
	je	.LBB2_25
# BB#24:
	movq	-48(%rbp), %rdi
	callq	ExpandRecursives
.LBB2_25:
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-80(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-72(%rbp), %rdi
	movq	-88(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rdi, %rsi
	callq	Promote
	movq	-72(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB2_26
	.align	16, 0x90
.LBB2_35:                               #   in Loop: Header=BB2_26 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_26:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB2_36
# BB#27:                                #   in Loop: Header=BB2_26 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_29
# BB#28:                                #   in Loop: Header=BB2_26 Depth=1
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
.LBB2_29:                               #   in Loop: Header=BB2_26 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_31
# BB#30:                                #   in Loop: Header=BB2_26 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB2_31:                               #   in Loop: Header=BB2_26 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_33
# BB#32:                                #   in Loop: Header=BB2_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_34
.LBB2_33:                               #   in Loop: Header=BB2_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_26 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_35
	.align	16, 0x90
.LBB2_45:                               #   in Loop: Header=BB2_36 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB2_36:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_46
# BB#37:                                #   in Loop: Header=BB2_36 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB2_39
# BB#38:                                #   in Loop: Header=BB2_36 Depth=1
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
.LBB2_39:                               #   in Loop: Header=BB2_36 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_41
# BB#40:                                #   in Loop: Header=BB2_36 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB2_41:                               #   in Loop: Header=BB2_36 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_43
# BB#42:                                #   in Loop: Header=BB2_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_44
.LBB2_43:                               #   in Loop: Header=BB2_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_45
	.align	16, 0x90
.LBB2_44:                               #   in Loop: Header=BB2_36 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB2_45
.LBB2_46:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB2_48
# BB#47:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB2_49
.LBB2_48:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB2_50
.LBB2_49:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB2_50:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_85
# BB#51:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB2_53
# BB#52:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_56
.LBB2_53:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_54
# BB#55:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_56
.LBB2_54:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB2_56:
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
	movb	$1, %bl
	jmp	.LBB2_57
	.align	16, 0x90
.LBB2_83:                               #   in Loop: Header=BB2_57 Depth=1
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
.LBB2_57:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_59 Depth 2
                                        #     Child Loop BB2_66 Depth 2
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB2_84
# BB#58:                                #   in Loop: Header=BB2_57 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB2_59
	.align	16, 0x90
.LBB2_60:                               #   in Loop: Header=BB2_59 Depth=2
	movq	-24(%rbp), %rax
.LBB2_59:                               #   Parent Loop BB2_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_60
# BB#61:                                #   in Loop: Header=BB2_57 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB2_63
# BB#62:                                #   in Loop: Header=BB2_57 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_63:                               #   in Loop: Header=BB2_57 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB2_65
# BB#64:                                #   in Loop: Header=BB2_57 Depth=1
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-24(%rbp), %rax
	movq	$0, 104(%rax)
.LBB2_65:                               #   in Loop: Header=BB2_57 Depth=1
	movq	-24(%rbp), %rdi
	callq	DetachGalley
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_66
	.align	16, 0x90
.LBB2_67:                               #   in Loop: Header=BB2_66 Depth=2
	movq	-104(%rbp), %rax
.LBB2_66:                               #   Parent Loop BB2_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_67
# BB#68:                                #   in Loop: Header=BB2_57 Depth=1
	movq	-104(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB2_70
# BB#69:                                #   in Loop: Header=BB2_57 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB2_70:                               #   in Loop: Header=BB2_57 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_73
# BB#71:                                #   in Loop: Header=BB2_57 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_73
# BB#72:                                #   in Loop: Header=BB2_57 Depth=1
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
.LBB2_73:                               #   in Loop: Header=BB2_57 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB2_75
# BB#74:                                #   in Loop: Header=BB2_57 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB2_78
	.align	16, 0x90
.LBB2_75:                               #   in Loop: Header=BB2_57 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB2_76
# BB#77:                                #   in Loop: Header=BB2_57 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB2_78
.LBB2_76:                               #   in Loop: Header=BB2_57 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB2_78:                               #   in Loop: Header=BB2_57 Depth=1
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
	je	.LBB2_81
# BB#79:                                #   in Loop: Header=BB2_57 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB2_81
# BB#80:                                #   in Loop: Header=BB2_57 Depth=1
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
.LBB2_81:                               #   in Loop: Header=BB2_57 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB2_57
# BB#82:                                #   in Loop: Header=BB2_57 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB2_83
	jmp	.LBB2_57
.LBB2_84:
	movq	-96(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB2_85:
	cmpq	$0, -56(%rbp)
	je	.LBB2_87
# BB#86:
	movq	-56(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB2_87:
	movq	-88(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB2_92
# BB#88:
	movq	-88(%rbp), %rax
	andw	$-33, 42(%rax)
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_89
	.align	16, 0x90
.LBB2_90:                               #   in Loop: Header=BB2_89 Depth=1
	movq	-24(%rbp), %rax
.LBB2_89:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB2_90
# BB#91:
	movq	-24(%rbp), %rdi
	callq	FlushGalley
.LBB2_92:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	TransferComponent, .Lfunc_end2-TransferComponent
	.cfi_endproc

	.globl	TransferEnd
	.align	16, 0x90
	.type	TransferEnd,@function
TransferEnd:                            # @TransferEnd
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
	pushq	%rbx
	subq	$168, %rsp
.Ltmp14:
	.cfi_offset %rbx, -24
	movq	%rdi, -16(%rbp)
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_1
# BB#2:
	movslq	itop(%rip), %rax
	movq	targets(,%rax,8), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_3
	.align	16, 0x90
.LBB3_4:                                #   in Loop: Header=BB3_3 Depth=1
	movq	-80(%rbp), %rax
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_4
# BB#5:
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_7
# BB#6:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_10
.LBB3_1:
	movq	-16(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB3_146
.LBB3_7:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_8
# BB#9:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_10
.LBB3_8:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_10:
	movq	zz_hold(%rip), %rax
	movb	$8, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -72(%rbp)
	movq	-16(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-16(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	36(%rax), %eax
	andl	%ecx, %eax
	movq	-72(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-16(%rbp), %rax
	andl	36(%rax), %esi
	movq	-72(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-72(%rbp), %rax
	andw	$-4097, 42(%rax)        # imm = 0xFFFFFFFFFFFFEFFF
	movq	-72(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 144(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 136(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-72(%rbp), %rax
	orw	$256, 42(%rax)          # imm = 0x100
	movq	-72(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-72(%rbp), %rax
	movb	$-127, 40(%rax)
	movq	-72(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-72(%rbp), %rax
	andw	$-129, 42(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_12
# BB#11:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_15
.LBB3_12:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_13
# BB#14:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_15
.LBB3_13:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_15:
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
	je	.LBB3_18
# BB#16:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_18
# BB#17:
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
.LBB3_18:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-16(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_21
# BB#19:
	cmpq	$0, zz_res(%rip)
	je	.LBB3_21
# BB#20:
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
.LBB3_21:
	movq	-80(%rbp), %rax
	movq	80(%rax), %rdi
	movq	%rdi, -64(%rbp)
	callq	GetEnv
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movzwl	42(%rsi), %ecx
	movl	%ecx, %edx
	shrl	$4, %edx
	andl	$1, %edx
	shrl	$2, %ecx
	andl	$1, %ecx
	addq	$64, %rsi
	movslq	itop(%rip), %rbx
	shlq	$4, %rbx
	leaq	constraints(%rbx), %r8
	leaq	-32(%rbp), %rbx
	movq	%rbx, 40(%rsp)
	leaq	-24(%rbp), %rbx
	movq	%rbx, 32(%rsp)
	leaq	-40(%rbp), %rbx
	movq	%rbx, 24(%rsp)
	movq	%r8, 8(%rsp)
	movq	%rsi, (%rsp)
	movq	$0, 48(%rsp)
	movq	$0, 16(%rsp)
	xorl	%r8d, %r8d
	movl	$1, %r9d
	movq	%rax, %rsi
	callq	SizeGalley
	cmpq	$0, -24(%rbp)
	je	.LBB3_23
# BB#22:
	movq	-24(%rbp), %rdi
	callq	ExpandRecursives
.LBB3_23:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rax
	movl	48(%rax), %esi
	movl	56(%rax), %edx
	xorl	%ecx, %ecx
	callq	AdjustSize
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$4, %eax
	jb	.LBB3_28
# BB#24:
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB3_25
	.align	16, 0x90
.LBB3_26:                               #   in Loop: Header=BB3_25 Depth=1
	movq	-48(%rbp), %rax
.LBB3_25:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_26
# BB#27:
	movq	-64(%rbp), %rdi
	movq	-48(%rbp), %rax
	movl	52(%rax), %esi
	movl	60(%rax), %edx
	movl	$1, %ecx
	callq	AdjustSize
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movl	$19, %esi
	callq	Interpose
.LBB3_28:
	movq	-72(%rbp), %rdi
	movq	-80(%rbp), %rdx
	movl	$1, %ecx
	movq	%rdi, %rsi
	callq	Promote
	movq	-72(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB3_29
	.align	16, 0x90
.LBB3_38:                               #   in Loop: Header=BB3_29 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB3_39
# BB#30:                                #   in Loop: Header=BB3_29 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_32
# BB#31:                                #   in Loop: Header=BB3_29 Depth=1
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
.LBB3_32:                               #   in Loop: Header=BB3_29 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_34
# BB#33:                                #   in Loop: Header=BB3_29 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_34:                               #   in Loop: Header=BB3_29 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_36
# BB#35:                                #   in Loop: Header=BB3_29 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_37
.LBB3_36:                               #   in Loop: Header=BB3_29 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_37:                               #   in Loop: Header=BB3_29 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_38
	.align	16, 0x90
.LBB3_48:                               #   in Loop: Header=BB3_39 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_49
# BB#40:                                #   in Loop: Header=BB3_39 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_42
# BB#41:                                #   in Loop: Header=BB3_39 Depth=1
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
.LBB3_42:                               #   in Loop: Header=BB3_39 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_44
# BB#43:                                #   in Loop: Header=BB3_39 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_44:                               #   in Loop: Header=BB3_39 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_46
# BB#45:                                #   in Loop: Header=BB3_39 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_47
.LBB3_46:                               #   in Loop: Header=BB3_39 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_48
	.align	16, 0x90
.LBB3_47:                               #   in Loop: Header=BB3_39 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_48
.LBB3_49:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_51
# BB#50:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_52
.LBB3_51:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_53
.LBB3_52:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_53:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-80(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_88
# BB#54:
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB3_56
# BB#55:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_59
.LBB3_56:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_57
# BB#58:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_59
.LBB3_57:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB3_59:
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
	movq	%rax, -104(%rbp)
	movb	$1, %bl
	jmp	.LBB3_60
	.align	16, 0x90
.LBB3_86:                               #   in Loop: Header=BB3_60 Depth=1
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
.LBB3_60:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_62 Depth 2
                                        #     Child Loop BB3_69 Depth 2
	movq	-80(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_87
# BB#61:                                #   in Loop: Header=BB3_60 Depth=1
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB3_62
	.align	16, 0x90
.LBB3_63:                               #   in Loop: Header=BB3_62 Depth=2
	movq	-88(%rbp), %rax
.LBB3_62:                               #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_63
# BB#64:                                #   in Loop: Header=BB3_60 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB3_66
# BB#65:                                #   in Loop: Header=BB3_60 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str.1, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB3_66:                               #   in Loop: Header=BB3_60 Depth=1
	movq	-88(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB3_68
# BB#67:                                #   in Loop: Header=BB3_60 Depth=1
	movq	-88(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-88(%rbp), %rax
	movq	$0, 104(%rax)
.LBB3_68:                               #   in Loop: Header=BB3_60 Depth=1
	movq	-88(%rbp), %rdi
	callq	DetachGalley
	movq	-88(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_69
	.align	16, 0x90
.LBB3_70:                               #   in Loop: Header=BB3_69 Depth=2
	movq	-112(%rbp), %rax
.LBB3_69:                               #   Parent Loop BB3_60 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_70
# BB#71:                                #   in Loop: Header=BB3_60 Depth=1
	movq	-112(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_73
# BB#72:                                #   in Loop: Header=BB3_60 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_73:                               #   in Loop: Header=BB3_60 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_76
# BB#74:                                #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_76
# BB#75:                                #   in Loop: Header=BB3_60 Depth=1
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
.LBB3_76:                               #   in Loop: Header=BB3_60 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB3_78
# BB#77:                                #   in Loop: Header=BB3_60 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB3_81
	.align	16, 0x90
.LBB3_78:                               #   in Loop: Header=BB3_60 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB3_79
# BB#80:                                #   in Loop: Header=BB3_60 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB3_81
.LBB3_79:                               #   in Loop: Header=BB3_60 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB3_81:                               #   in Loop: Header=BB3_60 Depth=1
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
	movq	-104(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_84
# BB#82:                                #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB3_84
# BB#83:                                #   in Loop: Header=BB3_60 Depth=1
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
.LBB3_84:                               #   in Loop: Header=BB3_60 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB3_60
# BB#85:                                #   in Loop: Header=BB3_60 Depth=1
	cmpq	$0, zz_res(%rip)
	jne	.LBB3_86
	jmp	.LBB3_60
.LBB3_87:
	movq	-104(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB3_88:
	cmpq	$0, -32(%rbp)
	je	.LBB3_90
# BB#89:
	movq	-32(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB3_90:
	movq	-80(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB3_120
# BB#91:
	movq	-80(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_92
	.align	16, 0x90
.LBB3_93:                               #   in Loop: Header=BB3_92 Depth=1
	movq	-88(%rbp), %rax
.LBB3_92:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB3_93
# BB#94:
	movq	-80(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB3_95
	.align	16, 0x90
.LBB3_104:                              #   in Loop: Header=BB3_95 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_95:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB3_105
# BB#96:                                #   in Loop: Header=BB3_95 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_98
# BB#97:                                #   in Loop: Header=BB3_95 Depth=1
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
.LBB3_98:                               #   in Loop: Header=BB3_95 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_100
# BB#99:                                #   in Loop: Header=BB3_95 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_100:                              #   in Loop: Header=BB3_95 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_102
# BB#101:                               #   in Loop: Header=BB3_95 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_103
.LBB3_102:                              #   in Loop: Header=BB3_95 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_104
	.align	16, 0x90
.LBB3_103:                              #   in Loop: Header=BB3_95 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_104
	.align	16, 0x90
.LBB3_114:                              #   in Loop: Header=BB3_105 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_105:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_115
# BB#106:                               #   in Loop: Header=BB3_105 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_108
# BB#107:                               #   in Loop: Header=BB3_105 Depth=1
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
.LBB3_108:                              #   in Loop: Header=BB3_105 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_110
# BB#109:                               #   in Loop: Header=BB3_105 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_110:                              #   in Loop: Header=BB3_105 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_112
# BB#111:                               #   in Loop: Header=BB3_105 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_113
.LBB3_112:                              #   in Loop: Header=BB3_105 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_114
	.align	16, 0x90
.LBB3_113:                              #   in Loop: Header=BB3_105 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_114
.LBB3_115:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_117
# BB#116:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_118
.LBB3_117:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_119
.LBB3_120:
	movq	-80(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB3_121
	.align	16, 0x90
.LBB3_130:                              #   in Loop: Header=BB3_121 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_121:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB3_131
# BB#122:                               #   in Loop: Header=BB3_121 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_124
# BB#123:                               #   in Loop: Header=BB3_121 Depth=1
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
.LBB3_124:                              #   in Loop: Header=BB3_121 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_126
# BB#125:                               #   in Loop: Header=BB3_121 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_126:                              #   in Loop: Header=BB3_121 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_128
# BB#127:                               #   in Loop: Header=BB3_121 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_129
.LBB3_128:                              #   in Loop: Header=BB3_121 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_130
	.align	16, 0x90
.LBB3_129:                              #   in Loop: Header=BB3_121 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_130
	.align	16, 0x90
.LBB3_140:                              #   in Loop: Header=BB3_131 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_131:                              # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB3_141
# BB#132:                               #   in Loop: Header=BB3_131 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB3_134
# BB#133:                               #   in Loop: Header=BB3_131 Depth=1
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
.LBB3_134:                              #   in Loop: Header=BB3_131 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB3_136
# BB#135:                               #   in Loop: Header=BB3_131 Depth=1
	movq	zz_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, zz_res(%rip)
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	zz_res(%rip), %rax
	movq	zz_hold(%rip), %rcx
	movq	(%rcx), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 8(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
.LBB3_136:                              #   in Loop: Header=BB3_131 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_138
# BB#137:                               #   in Loop: Header=BB3_131 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_139
.LBB3_138:                              #   in Loop: Header=BB3_131 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_140
	.align	16, 0x90
.LBB3_139:                              #   in Loop: Header=BB3_131 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB3_140
.LBB3_141:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB3_143
# BB#142:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB3_144
.LBB3_143:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB3_145
.LBB3_118:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_119:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-88(%rbp), %rdi
	callq	FlushGalley
	jmp	.LBB3_146
.LBB3_144:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB3_145:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB3_146:
	movslq	itop(%rip), %rax
	leal	-1(%rax), %ecx
	movl	%ecx, itop(%rip)
	movq	targets(,%rax,8), %rdi
	callq	DisposeObject
	addq	$168, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	TransferEnd, .Lfunc_end3-TransferEnd
	.cfi_endproc

	.globl	TransferClose
	.align	16, 0x90
	.type	TransferClose,@function
TransferClose:                          # @TransferClose
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
	movq	root_galley(%rip), %rax
	cmpq	%rax, (%rax)
	je	.LBB4_4
# BB#1:
	movq	$0, -8(%rbp)
	movq	root_galley(%rip), %rdi
	leaq	-8(%rbp), %rdx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%rdi, %rsi
	callq	FreeGalley
	cmpq	$0, -8(%rbp)
	je	.LBB4_3
# BB#2:
	movq	-8(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
.LBB4_3:
	movq	root_galley(%rip), %rdi
	callq	FlushGalley
.LBB4_4:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	TransferClose, .Lfunc_end4-TransferClose
	.cfi_endproc

	.type	initial_constraint,@object # @initial_constraint
	.local	initial_constraint
	.comm	initial_constraint,16,4
	.type	InitialEnvironment,@object # @InitialEnvironment
	.comm	InitialEnvironment,8,8
	.type	InitialStyle,@object    # @InitialStyle
	.comm	InitialStyle,16,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word is too long"
	.size	.L.str, 17

	.type	root_galley,@object     # @root_galley
	.local	root_galley
	.comm	root_galley,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"assert failed in %s"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"TransferInit: recs   != nilobj!"
	.size	.L.str.2, 32

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"TransferInit: inners != nilobj!"
	.size	.L.str.3, 32

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"TransferInit: initial galley!"
	.size	.L.str.4, 30

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"TransferInit: input sym not external!"
	.size	.L.str.5, 38

	.type	itop,@object            # @itop
	.local	itop
	.comm	itop,4,4
	.type	targets,@object         # @targets
	.local	targets
	.comm	targets,240,16
	.type	constraints,@object     # @constraints
	.local	constraints
	.comm	constraints,480,16
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"TransferBegin: non-CLOSURE!"
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"cannot attach galley %s"
	.size	.L.str.7, 24

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"galley nested too deeply (max is %d)"
	.size	.L.str.8, 37

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"galley %s deleted (insufficient width at target)"
	.size	.L.str.9, 49

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"right parameter of %s is vertically constrained"
	.size	.L.str.10, 48

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"TransferComponent: internal!"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"TransferComponent: input child!"
	.size	.L.str.12, 32

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"TransferEnd: input child!"
	.size	.L.str.13, 26


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
