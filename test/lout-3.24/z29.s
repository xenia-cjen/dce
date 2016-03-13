	.text
	.file	"z29.opt"
	.globl	InitSym
	.align	16, 0x90
	.type	InitSym,@function
InitSym:                                # @InitSym
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
	movl	$0, scope_top(%rip)
	movl	$0, suppress_scope(%rip)
	movl	$0, suppress_visible(%rip)
	movl	$0, -4(%rbp)
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	leaq	symtab(%rax), %rcx
	movq	%rcx, symtab+8(%rax)
	movslq	-4(%rbp), %rax
	shlq	$4, %rax
	movq	%rcx, symtab(%rax)
	incl	-4(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1782, -4(%rbp)         # imm = 0x6F6
	jle	.LBB0_2
# BB#3:
	popq	%rbp
	retq
.Lfunc_end0:
	.size	InitSym, .Lfunc_end0-InitSym
	.cfi_endproc

	.globl	PushScope
	.align	16, 0x90
	.type	PushScope,@function
PushScope:                              # @PushScope
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	cmpl	$0, suppress_scope(%rip)
	je	.LBB1_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB1_2:
	cmpl	$300, scope_top(%rip)   # imm = 0x12C
	jl	.LBB1_4
# BB#3:
	movq	-8(%rbp), %r8
	addq	$32, %r8
	movl	$29, %edi
	movl	$2, %esi
	movl	$.L.str.2, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB1_4:
	movq	-8(%rbp), %rax
	movslq	scope_top(%rip), %rcx
	movq	%rax, scope(,%rcx,8)
	movl	-12(%rbp), %eax
	movslq	scope_top(%rip), %rcx
	movl	%eax, npars_only(,%rcx,4)
	movl	-16(%rbp), %eax
	movslq	scope_top(%rip), %rcx
	movl	%eax, vis_only(,%rcx,4)
	movslq	scope_top(%rip), %rax
	movl	$0, body_ok(,%rax,4)
	incl	scope_top(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	PushScope, .Lfunc_end1-PushScope
	.cfi_endproc

	.globl	PopScope
	.align	16, 0x90
	.type	PopScope,@function
PopScope:                               # @PopScope
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
	cmpl	$0, scope_top(%rip)
	jg	.LBB2_2
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
	cmpl	$0, suppress_scope(%rip)
	je	.LBB2_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB2_4:
	decl	scope_top(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	PopScope, .Lfunc_end2-PopScope
	.cfi_endproc

	.globl	SuppressVisible
	.align	16, 0x90
	.type	SuppressVisible,@function
SuppressVisible:                        # @SuppressVisible
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
	movl	$1, suppress_visible(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	SuppressVisible, .Lfunc_end3-SuppressVisible
	.cfi_endproc

	.globl	UnSuppressVisible
	.align	16, 0x90
	.type	UnSuppressVisible,@function
UnSuppressVisible:                      # @UnSuppressVisible
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
	movl	$0, suppress_visible(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	UnSuppressVisible, .Lfunc_end4-UnSuppressVisible
	.cfi_endproc

	.globl	SuppressScope
	.align	16, 0x90
	.type	SuppressScope,@function
SuppressScope:                          # @SuppressScope
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
	movl	$1, suppress_scope(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	SuppressScope, .Lfunc_end5-SuppressScope
	.cfi_endproc

	.globl	UnSuppressScope
	.align	16, 0x90
	.type	UnSuppressScope,@function
UnSuppressScope:                        # @UnSuppressScope
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
	movl	$0, suppress_scope(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	UnSuppressScope, .Lfunc_end6-UnSuppressScope
	.cfi_endproc

	.globl	SwitchScope
	.align	16, 0x90
	.type	SwitchScope,@function
SwitchScope:                            # @SwitchScope
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
	subq	$2416, %rsp             # imm = 0x970
	movq	%rdi, -8(%rbp)
	testq	%rdi, %rdi
	je	.LBB7_1
# BB#3:
	movl	$0, -12(%rbp)
	jmp	.LBB7_4
	.align	16, 0x90
.LBB7_5:                                #   in Loop: Header=BB7_4 Depth=1
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-12(%rbp), %rcx
	leal	1(%rcx), %edx
	movl	%edx, -12(%rbp)
	movq	%rax, -2416(%rbp,%rcx,8)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	jne	.LBB7_5
	jmp	.LBB7_6
	.align	16, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_6 Depth=1
	movslq	-12(%rbp), %rax
	leaq	-1(%rax), %rcx
	movl	%ecx, -12(%rbp)
	movq	-2424(%rbp,%rax,8), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
.LBB7_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jg	.LBB7_7
	jmp	.LBB7_2
.LBB7_1:
	movq	StartSym(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
.LBB7_2:
	addq	$2416, %rsp             # imm = 0x970
	popq	%rbp
	retq
.Lfunc_end7:
	.size	SwitchScope, .Lfunc_end7-SwitchScope
	.cfi_endproc

	.globl	UnSwitchScope
	.align	16, 0x90
	.type	UnSwitchScope,@function
UnSwitchScope:                          # @UnSwitchScope
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
	testq	%rdi, %rdi
	jne	.LBB8_3
# BB#1:
	callq	PopScope
	jmp	.LBB8_2
	.align	16, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_3 Depth=1
	callq	PopScope
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -8(%rbp)
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	cmpq	StartSym(%rip), %rax
	jne	.LBB8_4
.LBB8_2:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	UnSwitchScope, .Lfunc_end8-UnSwitchScope
	.cfi_endproc

	.globl	BodyParAllowed
	.align	16, 0x90
	.type	BodyParAllowed,@function
BodyParAllowed:                         # @BodyParAllowed
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
	movslq	scope_top(%rip), %rax
	movl	$1, body_ok-4(,%rax,4)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	BodyParAllowed, .Lfunc_end9-BodyParAllowed
	.cfi_endproc

	.globl	BodyParNotAllowed
	.align	16, 0x90
	.type	BodyParNotAllowed,@function
BodyParNotAllowed:                      # @BodyParNotAllowed
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
	movslq	scope_top(%rip), %rax
	movl	$0, body_ok-4(,%rax,4)
	popq	%rbp
	retq
.Lfunc_end10:
	.size	BodyParNotAllowed, .Lfunc_end10-BodyParNotAllowed
	.cfi_endproc

	.globl	DebugScope
	.align	16, 0x90
	.type	DebugScope,@function
DebugScope:                             # @DebugScope
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
	cmpl	$0, suppress_scope(%rip)
	jne	.LBB11_4
# BB#1:
	movl	$0, -4(%rbp)
	jmp	.LBB11_2
	.align	16, 0x90
.LBB11_3:                               #   in Loop: Header=BB11_2 Depth=1
	incl	-4(%rbp)
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	scope_top(%rip), %eax
	jl	.LBB11_3
.LBB11_4:
	popq	%rbp
	retq
.Lfunc_end11:
	.size	DebugScope, .Lfunc_end11-DebugScope
	.cfi_endproc

	.globl	GetScopeSnapshot
	.align	16, 0x90
	.type	GetScopeSnapshot,@function
GetScopeSnapshot:                       # @GetScopeSnapshot
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
.Ltmp39:
	.cfi_offset %rbx, -56
.Ltmp40:
	.cfi_offset %r12, -48
.Ltmp41:
	.cfi_offset %r13, -40
.Ltmp42:
	.cfi_offset %r14, -32
.Ltmp43:
	.cfi_offset %r15, -24
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB12_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB12_5
.LBB12_2:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB12_3
# BB#4:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB12_5
.LBB12_3:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB12_5:
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
	movq	%rax, -48(%rbp)
	movl	scope_top(%rip), %eax
	decl	%eax
	movl	%eax, -60(%rbp)
	movb	$1, %bl
	movl	$-4096, %r15d           # imm = 0xFFFFFFFFFFFFF000
	movl	$1023, %r12d            # imm = 0x3FF
	movl	$-4190209, %r13d        # imm = 0xFFFFFFFFFFC00FFF
	movl	$-4194305, %r14d        # imm = 0xFFFFFFFFFFBFFFFF
	jmp	.LBB12_6
	.align	16, 0x90
.LBB12_34:                              #   in Loop: Header=BB12_6 Depth=1
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	npars_only(,%rax,4), %eax
	movl	$4095, %edx             # imm = 0xFFF
	andl	%edx, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	vis_only(,%rax,4), %eax
	andl	%r12d, %eax
	shll	$12, %eax
	movl	40(%rcx), %edx
	andl	%r13d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movslq	-60(%rbp), %rax
	movl	body_ok(,%rax,4), %eax
	movq	-56(%rbp), %rcx
	andl	$1, %eax
	shll	$22, %eax
	movl	40(%rcx), %edx
	andl	%r14d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	decl	-60(%rbp)
.LBB12_6:                               # =>This Inner Loop Header: Depth=1
	movslq	-60(%rbp), %rax
	movq	scope(,%rax,8), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB12_35
# BB#7:                                 #   in Loop: Header=BB12_6 Depth=1
	movzbl	zz_lengths+149(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB12_9
# BB#8:                                 #   in Loop: Header=BB12_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB12_12
	.align	16, 0x90
.LBB12_9:                               #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB12_10
# BB#11:                                #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB12_12
.LBB12_10:                              #   in Loop: Header=BB12_6 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB12_12:                              #   in Loop: Header=BB12_6 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$-107, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -56(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB12_14
# BB#13:                                #   in Loop: Header=BB12_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB12_17
	.align	16, 0x90
.LBB12_14:                              #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB12_15
# BB#16:                                #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB12_17
.LBB12_15:                              #   in Loop: Header=BB12_6 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB12_17:                              #   in Loop: Header=BB12_6 Depth=1
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
	movq	-48(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB12_20
# BB#18:                                #   in Loop: Header=BB12_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB12_20
# BB#19:                                #   in Loop: Header=BB12_6 Depth=1
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
.LBB12_20:                              #   in Loop: Header=BB12_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-56(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB12_23
# BB#21:                                #   in Loop: Header=BB12_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB12_23
# BB#22:                                #   in Loop: Header=BB12_6 Depth=1
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
.LBB12_23:                              #   in Loop: Header=BB12_6 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%bl, %bl
	jne	.LBB12_25
# BB#24:                                #   in Loop: Header=BB12_6 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB12_28
	.align	16, 0x90
.LBB12_25:                              #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB12_26
# BB#27:                                #   in Loop: Header=BB12_6 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB12_28
.LBB12_26:                              #   in Loop: Header=BB12_6 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB12_28:                              #   in Loop: Header=BB12_6 Depth=1
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
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB12_31
# BB#29:                                #   in Loop: Header=BB12_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB12_31
# BB#30:                                #   in Loop: Header=BB12_6 Depth=1
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
.LBB12_31:                              #   in Loop: Header=BB12_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movslq	-60(%rbp), %rax
	movq	scope(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB12_34
# BB#32:                                #   in Loop: Header=BB12_6 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB12_34
# BB#33:                                #   in Loop: Header=BB12_6 Depth=1
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
	jmp	.LBB12_34
.LBB12_35:
	movl	suppress_visible(%rip), %eax
	movq	-48(%rbp), %rcx
	andl	$63, %eax
	shll	$23, %eax
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-48(%rbp), %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	GetScopeSnapshot, .Lfunc_end12-GetScopeSnapshot
	.cfi_endproc

	.globl	LoadScopeSnapshot
	.align	16, 0x90
	.type	LoadScopeSnapshot,@function
LoadScopeSnapshot:                      # @LoadScopeSnapshot
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movzbl	32(%rdi), %eax
	cmpl	$17, %eax
	je	.LBB13_2
# BB#1:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_2:
	movq	StartSym(%rip), %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	PushScope
	movq	-8(%rbp), %rax
	jmp	.LBB13_3
	.align	16, 0x90
.LBB13_12:                              #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	40(%rax), %edx
	movl	%edx, %esi
	andl	$4095, %esi             # imm = 0xFFF
	shrl	$12, %edx
	andl	$1023, %edx             # imm = 0x3FF
	callq	PushScope
	movq	-24(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$22, %eax
	andl	$1, %eax
	movslq	scope_top(%rip), %rcx
	movl	%eax, body_ok-4(,%rcx,4)
	movq	-16(%rbp), %rax
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_5 Depth 2
                                        #     Child Loop BB13_10 Depth 2
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB13_13
# BB#4:                                 #   in Loop: Header=BB13_3 Depth=1
	movq	-16(%rbp), %rax
	jmp	.LBB13_5
	.align	16, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_5 Depth=2
	movq	-24(%rbp), %rax
.LBB13_5:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB13_6
# BB#7:                                 #   in Loop: Header=BB13_3 Depth=1
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$149, %eax
	je	.LBB13_9
# BB#8:                                 #   in Loop: Header=BB13_3 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.7, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB13_9:                               #   in Loop: Header=BB13_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB13_10
	.align	16, 0x90
.LBB13_11:                              #   in Loop: Header=BB13_10 Depth=2
	movq	-32(%rbp), %rax
.LBB13_10:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB13_11
	jmp	.LBB13_12
.LBB13_13:
	movl	suppress_visible(%rip), %eax
	movl	%eax, -36(%rbp)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movl	%eax, suppress_visible(%rip)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	andl	$63, %eax
	shll	$23, %eax
	movl	$-528482305, %edx       # imm = 0xFFFFFFFFE07FFFFF
	andl	40(%rcx), %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	LoadScopeSnapshot, .Lfunc_end13-LoadScopeSnapshot
	.cfi_endproc

	.globl	ClearScopeSnapshot
	.align	16, 0x90
	.type	ClearScopeSnapshot,@function
ClearScopeSnapshot:                     # @ClearScopeSnapshot
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
	movq	%rdi, -8(%rbp)
	jmp	.LBB14_1
	.align	16, 0x90
.LBB14_2:                               #   in Loop: Header=BB14_1 Depth=1
	decl	scope_top(%rip)
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	movslq	scope_top(%rip), %rax
	movq	scope-8(,%rax,8), %rax
	cmpq	StartSym(%rip), %rax
	jne	.LBB14_2
# BB#3:
	decl	scope_top(%rip)
	movq	-8(%rbp), %rax
	movl	40(%rax), %eax
	shrl	$23, %eax
	andl	$63, %eax
	movl	%eax, suppress_visible(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	ClearScopeSnapshot, .Lfunc_end14-ClearScopeSnapshot
	.cfi_endproc

	.globl	InsertSym
	.align	16, 0x90
	.type	InsertSym,@function
InsertSym:                              # @InsertSym
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
	subq	$160, %rsp
.Ltmp53:
	.cfi_offset %rbx, -32
.Ltmp54:
	.cfi_offset %r14, -24
	movq	32(%rbp), %r10
	movq	24(%rbp), %rbx
	movl	16(%rbp), %eax
	movq	%rdi, -24(%rbp)
	movb	%sil, -25(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%cl, -41(%rbp)
	movl	%r8d, -48(%rbp)
	movl	%r9d, -52(%rbp)
	movl	%eax, -56(%rbp)
	movq	%rbx, -64(%rbp)
	movq	%r10, -72(%rbp)
	movq	-24(%rbp), %rdi
	callq	LexLegalName
	testl	%eax, %eax
	jne	.LBB15_2
# BB#1:
	movq	-40(%rbp), %r8
	movq	-24(%rbp), %r9
	movl	$29, %edi
	movl	$3, %esi
	movl	$.L.str.8, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB15_2:
	movzbl	-25(%rbp), %eax
	movzbl	zz_lengths(%rax), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB15_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_7
.LBB15_4:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_5
# BB#6:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_7
.LBB15_5:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB15_7:
	movb	-25(%rbp), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 32(%rcx)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -112(%rbp)
	movq	-40(%rbp), %rcx
	movw	2(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-40(%rbp), %rax
	movl	$1048575, %ecx          # imm = 0xFFFFF
	movl	4(%rax), %eax
	andl	%ecx, %eax
	movq	-112(%rbp), %rdx
	movl	$-1048576, %esi         # imm = 0xFFFFFFFFFFF00000
	movl	36(%rdx), %edi
	andl	%esi, %edi
	orl	%eax, %edi
	movl	%edi, 36(%rdx)
	movq	-40(%rbp), %rax
	andl	4(%rax), %esi
	movq	-112(%rbp), %rax
	andl	36(%rax), %ecx
	orl	%esi, %ecx
	movl	%ecx, 36(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16776959, %edx         # imm = 0xFFFEFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$12582911, %edx         # imm = 0xBFFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$16, %edx
	movw	%dx, 41(%rax)
	movb	-41(%rbp), %al
	movq	-112(%rbp), %rcx
	movb	%al, 40(%rcx)
	movl	-48(%rbp), %eax
	movq	-112(%rbp), %rcx
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %esi
	shll	$16, %esi
	orl	%edx, %esi
	andl	$1, %eax
	shll	$9, %eax
	andl	$16776703, %esi         # imm = 0xFFFDFF
	leal	(%rax,%rsi), %eax
	shrl	$16, %esi
	movb	%sil, 43(%rcx)
	movw	%ax, 41(%rcx)
	movl	-52(%rbp), %eax
	movq	-112(%rbp), %rcx
	movzwl	41(%rcx), %edx
	movzbl	43(%rcx), %esi
	shll	$16, %esi
	orl	%edx, %esi
	andl	$1, %eax
	shll	$10, %eax
	andl	$16776191, %esi         # imm = 0xFFFBFF
	leal	(%rax,%rsi), %eax
	shrl	$16, %esi
	movb	%sil, 43(%rcx)
	movw	%ax, 41(%rcx)
	movw	-56(%rbp), %ax
	movq	-112(%rbp), %rcx
	movw	%ax, 120(%rcx)
	movq	-64(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-72(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-112(%rbp), %rax
	movq	$0, 64(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 72(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 80(%rax)
	movq	-112(%rbp), %rax
	movq	$0, 88(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16773119, %edx         # imm = 0xFFEFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16775167, %edx         # imm = 0xFFF7FF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16711679, %edx         # imm = 0xFEFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$15728639, %edx         # imm = 0xEFFFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$32, %ecx
	movb	%cl, 43(%rax)
	movq	-112(%rbp), %rax
	movw	$0, 122(%rax)
	movq	-112(%rbp), %rax
	andb	$-65, 126(%rax)
	movq	-112(%rbp), %rax
	movb	$0, 124(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16744447, %edx         # imm = 0xFF7FFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB15_10
# BB#8:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB15_10
# BB#9:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, 41(%rax)
.LBB15_10:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16252927, %edx         # imm = 0xF7FFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777211, %edx         # imm = 0xFFFFFB
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777207, %edx         # imm = 0xFFFFF7
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jl	.LBB15_13
# BB#11:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jg	.LBB15_13
# BB#12:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	43(%rax), %ecx
	movzwl	41(%rax), %edx
	movw	%dx, 41(%rax)
	orl	$8, %ecx
	movb	%cl, 43(%rax)
.LBB15_13:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$144, %eax
	jne	.LBB15_15
# BB#14:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4, %edx
	movw	%dx, 41(%rax)
.LBB15_15:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB15_17
# BB#16:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$8, %edx
	movw	%dx, 41(%rax)
.LBB15_17:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB15_28
# BB#18:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	%rax, (%rax)
	je	.LBB15_27
# BB#19:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	jmp	.LBB15_20
	.align	16, 0x90
.LBB15_21:                              #   in Loop: Header=BB15_20 Depth=1
	movq	-120(%rbp), %rax
.LBB15_20:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_21
# BB#22:
	movq	-120(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB15_27
# BB#23:
	movq	-120(%rbp), %rax
	movzbl	125(%rax), %eax
	cmpl	$122, %eax
	je	.LBB15_25
# BB#24:
	movq	-120(%rbp), %rax
	movzbl	125(%rax), %eax
	cmpl	$32, %eax
	jne	.LBB15_26
.LBB15_25:
	movq	-112(%rbp), %rax
	movb	$32, 125(%rax)
	jmp	.LBB15_28
.LBB15_27:
	movq	-112(%rbp), %rax
	movb	$97, 125(%rax)
.LBB15_28:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777151, %edx         # imm = 0xFFFFBF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777087, %edx         # imm = 0xFFFF7F
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-24(%rbp), %rdi
	movl	$.L.str.9, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB15_30
# BB#29:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777183, %edx         # imm = 0xFFFFDF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	jmp	.LBB15_40
.LBB15_30:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$64, %edx
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32, %edx
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$14, %eax
	jae	.LBB15_40
# BB#31:
	cmpq	$0, -72(%rbp)
	je	.LBB15_40
# BB#32:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB15_34
# BB#33:
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB15_40
.LBB15_34:
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	cmpq	8(%rax), %rcx
	je	.LBB15_40
# BB#35:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB15_36
	.align	16, 0x90
.LBB15_37:                              #   in Loop: Header=BB15_36 Depth=1
	movq	-160(%rbp), %rax
.LBB15_36:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-160(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_37
# BB#38:
	movq	-160(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB15_40
# BB#39:
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	movq	-160(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
.LBB15_40:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777214, %edx         # imm = 0xFFFFFE
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16777213, %edx         # imm = 0xFFFFFD
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16769023, %edx         # imm = 0xFFDFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	shll	$16, %edx
	orl	%ecx, %edx
	andl	$16760831, %edx         # imm = 0xFFBFFF
	movw	%dx, 41(%rax)
	shrl	$16, %edx
	movb	%dl, 43(%rax)
	movq	-112(%rbp), %rax
	andb	$-2, 126(%rax)
	movq	-112(%rbp), %rax
	andb	$-3, 126(%rax)
	movq	-112(%rbp), %rax
	andb	$-5, 126(%rax)
	movq	-112(%rbp), %rax
	andb	$-9, 126(%rax)
	movq	-112(%rbp), %rax
	andb	$-17, 126(%rax)
	movq	-112(%rbp), %rax
	andb	$-33, 126(%rax)
	movq	-112(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB15_66
# BB#41:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB15_66
# BB#42:
	movq	-24(%rbp), %rdi
	movl	$.L.str.10, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_44
# BB#43:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2, %edx
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$1, %edx
	movw	%dx, 41(%rax)
.LBB15_44:
	movq	-24(%rbp), %rdi
	movl	$.L.str.11, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_46
# BB#45:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	orb	$2, 126(%rax)
	movq	-112(%rbp), %rax
	orb	$1, 126(%rax)
.LBB15_46:
	movq	-24(%rbp), %rdi
	movl	$.L.str.12, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_62
# BB#47:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$32768, %edx            # imm = 0x8000
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$16384, %edx            # imm = 0x4000
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$8192, %edx             # imm = 0x2000
	movw	%dx, 41(%rax)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	jmp	.LBB15_48
	.align	16, 0x90
.LBB15_61:                              #   in Loop: Header=BB15_48 Depth=1
	movq	-128(%rbp), %rax
.LBB15_48:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_50 Depth 2
                                        #     Child Loop BB15_57 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	movq	-112(%rbp), %rcx
	cmpq	48(%rcx), %rax
	je	.LBB15_62
# BB#49:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-128(%rbp), %rax
	jmp	.LBB15_50
	.align	16, 0x90
.LBB15_51:                              #   in Loop: Header=BB15_50 Depth=2
	movq	-96(%rbp), %rax
.LBB15_50:                              #   Parent Loop BB15_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_51
# BB#52:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-96(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$5, %eax
	jae	.LBB15_61
# BB#53:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-96(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB15_61
# BB#54:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$6, %eax
	je	.LBB15_56
# BB#55:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	movzbl	32(%rax), %eax
	cmpl	$7, %eax
	jne	.LBB15_61
.LBB15_56:                              #   in Loop: Header=BB15_48 Depth=1
	movq	-96(%rbp), %rax
	movq	56(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB15_57
	.align	16, 0x90
.LBB15_58:                              #   in Loop: Header=BB15_57 Depth=2
	movq	-168(%rbp), %rax
.LBB15_57:                              #   Parent Loop BB15_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_58
# BB#59:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-168(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jne	.LBB15_61
# BB#60:                                #   in Loop: Header=BB15_48 Depth=1
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$4096, %edx             # imm = 0x1000
	movw	%dx, 41(%rax)
	movq	-168(%rbp), %rax
	movq	80(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %edx
	movb	%dl, 43(%rax)
	shll	$16, %edx
	orl	%ecx, %edx
	orl	$2048, %edx             # imm = 0x800
	movw	%dx, 41(%rax)
	jmp	.LBB15_61
.LBB15_62:
	movq	-24(%rbp), %rdi
	movl	$.L.str.13, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_64
# BB#63:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	orb	$8, 126(%rax)
	movq	-112(%rbp), %rax
	orb	$4, 126(%rax)
.LBB15_64:
	movq	-24(%rbp), %rdi
	movl	$.L.str.14, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_66
# BB#65:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	orb	$32, 126(%rax)
	movq	-112(%rbp), %rax
	orb	$16, 126(%rax)
.LBB15_66:
	movq	-24(%rbp), %rdi
	movl	$.L.str.15, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_74
# BB#67:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$143, %eax
	jne	.LBB15_69
# BB#68:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	StartSym(%rip), %rax
	je	.LBB15_69
# BB#70:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$3, %eax
	jae	.LBB15_71
# BB#73:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rcx
	movq	%rax, 104(%rcx)
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movb	$104, 40(%rax)
	jmp	.LBB15_74
.LBB15_69:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$29, %edi
	movl	$4, %esi
	movl	$.L.str.16, %edx
	movl	$2, %ecx
.LBB15_72:
	xorl	%eax, %eax
	callq	Error
.LBB15_74:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB15_80
# BB#75:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB15_80
# BB#76:
	movq	-112(%rbp), %rax
	testb	$1, 41(%rax)
	jne	.LBB15_79
# BB#77:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$13, %eax
	jb	.LBB15_79
# BB#78:
	movq	-112(%rbp), %rax
	testb	$1, 126(%rax)
	je	.LBB15_80
.LBB15_79:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$29, %edi
	movl	$5, %esi
	movl	$.L.str.18, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB15_80:
	movq	-112(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB15_86
# BB#81:
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$6, %eax
	jae	.LBB15_86
# BB#82:
	movq	-112(%rbp), %rax
	testb	$1, 41(%rax)
	jne	.LBB15_85
# BB#83:
	movq	-112(%rbp), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$13, %eax
	jb	.LBB15_85
# BB#84:
	movq	-112(%rbp), %rax
	testb	$1, 126(%rax)
	je	.LBB15_86
.LBB15_85:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$29, %edi
	movl	$6, %esi
	movl	$.L.str.19, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB15_86:
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, -148(%rbp)
	movl	%eax, -80(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -76(%rbp)
	jmp	.LBB15_87
	.align	16, 0x90
.LBB15_88:                              #   in Loop: Header=BB15_87 Depth=1
	movq	-88(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -88(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -76(%rbp)
.LBB15_87:                              # =>This Inner Loop Header: Depth=1
	decl	-80(%rbp)
	jne	.LBB15_88
# BB#89:
	movslq	-76(%rbp), %rax
	imulq	$-1828311933, %rax, %rcx # imm = 0xFFFFFFFF93062C83
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$10, %ecx
	addl	%edx, %ecx
	imull	$1783, %ecx, %ecx       # imm = 0x6F7
	subl	%ecx, %eax
	movl	%eax, -76(%rbp)
	movslq	-76(%rbp), %rax
	shlq	$4, %rax
	leaq	symtab(%rax), %rcx
	movq	%rcx, -136(%rbp)
	movq	symtab+8(%rax), %rax
	movq	%rax, -144(%rbp)
	movl	$4095, %ebx             # imm = 0xFFF
	jmp	.LBB15_90
	.align	16, 0x90
.LBB15_105:                             #   in Loop: Header=BB15_90 Depth=1
	movq	-144(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -144(%rbp)
.LBB15_90:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_92 Depth 2
	movq	-144(%rbp), %rax
	cmpq	-136(%rbp), %rax
	je	.LBB15_106
# BB#91:                                #   in Loop: Header=BB15_90 Depth=1
	movq	-144(%rbp), %rax
	jmp	.LBB15_92
	.align	16, 0x90
.LBB15_93:                              #   in Loop: Header=BB15_92 Depth=2
	movq	-96(%rbp), %rax
.LBB15_92:                              #   Parent Loop BB15_90 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_93
# BB#94:                                #   in Loop: Header=BB15_90 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	andl	%ebx, %eax
	cmpl	-148(%rbp), %eax
	jne	.LBB15_105
# BB#95:                                #   in Loop: Header=BB15_90 Depth=1
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB15_105
# BB#96:
	movq	-96(%rbp), %rax
	jmp	.LBB15_97
	.align	16, 0x90
.LBB15_104:                             #   in Loop: Header=BB15_97 Depth=1
	movq	-128(%rbp), %rax
.LBB15_97:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_99 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-128(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB15_122
# BB#98:                                #   in Loop: Header=BB15_97 Depth=1
	movq	-128(%rbp), %rax
	jmp	.LBB15_99
	.align	16, 0x90
.LBB15_100:                             #   in Loop: Header=BB15_99 Depth=2
	movq	-104(%rbp), %rax
.LBB15_99:                              #   Parent Loop BB15_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB15_100
# BB#101:                               #   in Loop: Header=BB15_97 Depth=1
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	-104(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB15_104
# BB#102:
	movq	-112(%rbp), %rbx
	addq	$32, %rbx
	movq	-24(%rbp), %r14
	movq	-104(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, (%rsp)
	movl	$29, %edi
	movl	$7, %esi
	movl	$.L.str.20, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	cmpl	$0, AltErrorFormat(%rip)
	je	.LBB15_122
# BB#103:
	movq	-104(%rbp), %r8
	addq	$32, %r8
	movq	-24(%rbp), %r9
	movl	$29, %edi
	movl	$13, %esi
	movl	$.L.str.21, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_122
.LBB15_106:
	movl	-148(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB15_108
# BB#107:
	movq	-40(%rbp), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_111
.LBB15_108:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_109
# BB#110:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_111
.LBB15_109:
	movl	zz_size(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB15_111:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movl	$4095, %ecx             # imm = 0xFFF
	andl	-148(%rbp), %ecx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-96(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB15_113
# BB#112:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_116
.LBB15_113:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_114
# BB#115:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_116
.LBB15_114:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB15_116:
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
	movq	-136(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_119
# BB#117:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_119
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
.LBB15_119:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_122
# BB#120:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_122
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
.LBB15_122:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB15_124
# BB#123:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_127
.LBB15_124:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_125
# BB#126:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_127
.LBB15_125:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB15_127:
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
	je	.LBB15_130
# BB#128:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_130
# BB#129:
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
.LBB15_130:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_133
# BB#131:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_133
# BB#132:
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
.LBB15_133:
	movq	-112(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB15_145
# BB#134:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB15_136
# BB#135:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB15_139
.LBB15_136:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB15_137
# BB#138:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB15_139
.LBB15_137:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB15_139:
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
	movq	-112(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_142
# BB#140:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_142
# BB#141:
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
.LBB15_142:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-112(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB15_145
# BB#143:
	cmpq	$0, zz_res(%rip)
	je	.LBB15_145
# BB#144:
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
.LBB15_145:
	movq	-112(%rbp), %rax
	addq	$160, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB15_71:
	movq	-112(%rbp), %r8
	addq	$32, %r8
	movl	$29, %edi
	movl	$14, %esi
	movl	$.L.str.17, %edx
	movl	$2, %ecx
	movl	$.L.str.15, %r9d
	jmp	.LBB15_72
.LBB15_26:
	movq	-120(%rbp), %rax
	movzbl	125(%rax), %eax
	incl	%eax
	movq	-112(%rbp), %rcx
	movb	%al, 125(%rcx)
	jmp	.LBB15_28
.Lfunc_end15:
	.size	InsertSym, .Lfunc_end15-InsertSym
	.cfi_endproc

	.globl	InsertAlternativeName
	.align	16, 0x90
	.type	InsertAlternativeName,@function
InsertAlternativeName:                  # @InsertAlternativeName
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
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	strlen
	movl	%eax, -60(%rbp)
	movl	%eax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB16_1
	.align	16, 0x90
.LBB16_2:                               #   in Loop: Header=BB16_1 Depth=1
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -44(%rbp)
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	decl	-48(%rbp)
	jne	.LBB16_2
# BB#3:
	movslq	-44(%rbp), %rax
	imulq	$-1828311933, %rax, %rcx # imm = 0xFFFFFFFF93062C83
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$10, %ecx
	addl	%edx, %ecx
	imull	$1783, %ecx, %ecx       # imm = 0x6F7
	subl	%ecx, %eax
	movl	%eax, -44(%rbp)
	movslq	-44(%rbp), %rax
	shlq	$4, %rax
	leaq	symtab(%rax), %rcx
	movq	%rcx, -72(%rbp)
	movq	symtab+8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$4095, %ebx             # imm = 0xFFF
	jmp	.LBB16_4
	.align	16, 0x90
.LBB16_18:                              #   in Loop: Header=BB16_4 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB16_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_6 Depth 2
	movq	-88(%rbp), %rax
	cmpq	-72(%rbp), %rax
	je	.LBB16_19
# BB#5:                                 #   in Loop: Header=BB16_4 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB16_6
	.align	16, 0x90
.LBB16_7:                               #   in Loop: Header=BB16_6 Depth=2
	movq	-96(%rbp), %rax
.LBB16_6:                               #   Parent Loop BB16_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB16_7
# BB#8:                                 #   in Loop: Header=BB16_4 Depth=1
	movq	-96(%rbp), %rax
	movl	40(%rax), %eax
	andl	%ebx, %eax
	cmpl	-60(%rbp), %eax
	jne	.LBB16_18
# BB#9:                                 #   in Loop: Header=BB16_4 Depth=1
	movq	-24(%rbp), %rdi
	movq	-96(%rbp), %rsi
	addq	$64, %rsi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB16_18
# BB#10:
	movq	-96(%rbp), %rax
	jmp	.LBB16_11
	.align	16, 0x90
.LBB16_17:                              #   in Loop: Header=BB16_11 Depth=1
	movq	-80(%rbp), %rax
.LBB16_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_13 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB16_35
# BB#12:                                #   in Loop: Header=BB16_11 Depth=1
	movq	-80(%rbp), %rax
	jmp	.LBB16_13
	.align	16, 0x90
.LBB16_14:                              #   in Loop: Header=BB16_13 Depth=2
	movq	-104(%rbp), %rax
.LBB16_13:                              #   Parent Loop BB16_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB16_14
# BB#15:                                #   in Loop: Header=BB16_11 Depth=1
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	-104(%rbp), %rcx
	cmpq	48(%rcx), %rax
	jne	.LBB16_17
# BB#16:
	movq	-32(%rbp), %rbx
	addq	$32, %rbx
	movq	-24(%rbp), %r14
	movq	-104(%rbp), %rdi
	addq	$32, %rdi
	callq	EchoFilePos
	movq	%rax, (%rsp)
	movl	$29, %edi
	movl	$12, %esi
	movl	$.L.str.22, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	movq	%r14, %r9
	callq	Error
	jmp	.LBB16_35
.LBB16_19:
	movl	-60(%rbp), %eax
	addl	$69, %eax
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	decq	%rax
	shrq	$3, %rax
	incq	%rax
	movl	%eax, zz_size(%rip)
	cltq
	cmpq	$265, %rax              # imm = 0x109
	jb	.LBB16_21
# BB#20:
	movq	-40(%rbp), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB16_24
.LBB16_21:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB16_22
# BB#23:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB16_24
.LBB16_22:
	movl	zz_size(%rip), %edi
	movq	-40(%rbp), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB16_24:
	movb	zz_size(%rip), %al
	movq	zz_hold(%rip), %rcx
	movb	%al, 33(%rcx)
	movq	zz_hold(%rip), %rax
	movb	$11, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -96(%rbp)
	movl	$4095, %ecx             # imm = 0xFFF
	andl	-60(%rbp), %ecx
	movl	$-4096, %edx            # imm = 0xFFFFFFFFFFFFF000
	andl	40(%rax), %edx
	orl	%ecx, %edx
	movl	%edx, 40(%rax)
	movq	-96(%rbp), %rdi
	addq	$64, %rdi
	movq	-24(%rbp), %rsi
	callq	strcpy
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB16_26
# BB#25:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB16_29
.LBB16_26:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB16_27
# BB#28:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB16_29
.LBB16_27:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB16_29:
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
	je	.LBB16_32
# BB#30:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_32
# BB#31:
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
.LBB16_32:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-96(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB16_35
# BB#33:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_35
# BB#34:
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
.LBB16_35:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB16_37
# BB#36:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.5, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB16_40
.LBB16_37:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB16_38
# BB#39:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB16_40
.LBB16_38:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB16_40:
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
	je	.LBB16_43
# BB#41:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_43
# BB#42:
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
.LBB16_43:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-32(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB16_46
# BB#44:
	cmpq	$0, zz_res(%rip)
	je	.LBB16_46
# BB#45:
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
.LBB16_46:
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	InsertAlternativeName, .Lfunc_end16-InsertAlternativeName
	.cfi_endproc

	.globl	SearchSym
	.align	16, 0x90
	.type	SearchSym,@function
SearchSym:                              # @SearchSym
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$104, %rsp
.Ltmp63:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	%esi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB17_1
	.align	16, 0x90
.LBB17_2:                               #   in Loop: Header=BB17_1 Depth=1
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	addl	%eax, -36(%rbp)
.LBB17_1:                               # =>This Inner Loop Header: Depth=1
	decl	-32(%rbp)
	jne	.LBB17_2
# BB#3:
	movslq	-36(%rbp), %rax
	imulq	$-1828311933, %rax, %rcx # imm = 0xFFFFFFFF93062C83
	shrq	$32, %rcx
	addl	%eax, %ecx
	movl	%ecx, %edx
	shrl	$31, %edx
	sarl	$10, %ecx
	addl	%edx, %ecx
	imull	$1783, %ecx, %ecx       # imm = 0x6F7
	subl	%ecx, %eax
	movl	%eax, -36(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	leaq	symtab(%rax), %rcx
	movq	%rcx, -96(%rbp)
	movq	symtab+8(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$4095, %ebx             # imm = 0xFFF
	jmp	.LBB17_4
	.align	16, 0x90
.LBB17_37:                              #   in Loop: Header=BB17_4 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -88(%rbp)
.LBB17_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_6 Depth 2
                                        #     Child Loop BB17_10 Depth 2
                                        #     Child Loop BB17_16 Depth 2
                                        #       Child Loop BB17_17 Depth 3
                                        #         Child Loop BB17_19 Depth 4
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	je	.LBB17_38
# BB#5:                                 #   in Loop: Header=BB17_4 Depth=1
	movq	-88(%rbp), %rax
	jmp	.LBB17_6
	.align	16, 0x90
.LBB17_7:                               #   in Loop: Header=BB17_6 Depth=2
	movq	-64(%rbp), %rax
.LBB17_6:                               #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_7
# BB#8:                                 #   in Loop: Header=BB17_4 Depth=1
	movq	-64(%rbp), %rax
	movl	40(%rax), %eax
	andl	%ebx, %eax
	cmpl	%eax, -32(%rbp)
	jne	.LBB17_37
# BB#9:                                 #   in Loop: Header=BB17_4 Depth=1
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -56(%rbp)
	.align	16, 0x90
.LBB17_10:                              #   Parent Loop BB17_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, -48(%rbp)
	movzbl	(%rax), %eax
	movq	-56(%rbp), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, -56(%rbp)
	movzbl	(%rcx), %ecx
	cmpl	%ecx, %eax
	jne	.LBB17_11
# BB#12:                                #   in Loop: Header=BB17_10 Depth=2
	decl	-32(%rbp)
	setne	%al
	jmp	.LBB17_13
	.align	16, 0x90
.LBB17_11:                              #   in Loop: Header=BB17_10 Depth=2
	xorl	%eax, %eax
.LBB17_13:                              #   in Loop: Header=BB17_10 Depth=2
	testb	%al, %al
	jne	.LBB17_10
# BB#14:                                #   in Loop: Header=BB17_4 Depth=1
	cmpl	$0, -32(%rbp)
	jne	.LBB17_37
# BB#15:                                #   in Loop: Header=BB17_4 Depth=1
	movl	scope_top(%rip), %eax
	movl	%eax, -100(%rbp)
.LBB17_16:                              #   Parent Loop BB17_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB17_17 Depth 3
                                        #         Child Loop BB17_19 Depth 4
	decl	-100(%rbp)
	movq	-64(%rbp), %rax
	jmp	.LBB17_17
	.align	16, 0x90
.LBB17_35:                              #   in Loop: Header=BB17_17 Depth=3
	movq	-80(%rbp), %rax
.LBB17_17:                              #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB17_19 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-64(%rbp), %rax
	je	.LBB17_36
# BB#18:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-80(%rbp), %rax
	jmp	.LBB17_19
	.align	16, 0x90
.LBB17_20:                              #   in Loop: Header=BB17_19 Depth=4
	movq	-72(%rbp), %rax
.LBB17_19:                              #   Parent Loop BB17_4 Depth=1
                                        #     Parent Loop BB17_16 Depth=2
                                        #       Parent Loop BB17_17 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB17_20
# BB#21:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movslq	-100(%rbp), %rcx
	cmpq	scope(,%rcx,8), %rax
	jne	.LBB17_35
# BB#22:                                #   in Loop: Header=BB17_17 Depth=3
	movslq	-100(%rbp), %rax
	cmpl	$0, npars_only(,%rax,4)
	je	.LBB17_24
# BB#23:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB17_35
.LBB17_24:                              #   in Loop: Header=BB17_17 Depth=3
	movslq	-100(%rbp), %rax
	cmpl	$0, vis_only(,%rax,4)
	je	.LBB17_27
# BB#25:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-72(%rbp), %rax
	testb	$1, 43(%rax)
	jne	.LBB17_27
# BB#26:                                #   in Loop: Header=BB17_17 Depth=3
	cmpl	$0, suppress_visible(%rip)
	je	.LBB17_35
	.align	16, 0x90
.LBB17_27:                              #   in Loop: Header=BB17_17 Depth=3
	movslq	-100(%rbp), %rax
	cmpl	$0, body_ok(,%rax,4)
	jne	.LBB17_31
# BB#28:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-72(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$146, %eax
	jne	.LBB17_31
# BB#29:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-72(%rbp), %rax
	movq	48(%rax), %rax
	movzwl	41(%rax), %ecx
	movzbl	43(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	btl	$8, %eax
	jae	.LBB17_31
# BB#30:                                #   in Loop: Header=BB17_17 Depth=3
	cmpl	$0, suppress_visible(%rip)
	je	.LBB17_35
	.align	16, 0x90
.LBB17_31:                              #   in Loop: Header=BB17_17 Depth=3
	cmpl	$0, suppress_scope(%rip)
	je	.LBB17_34
# BB#32:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.23, %esi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB17_34
# BB#33:                                #   in Loop: Header=BB17_17 Depth=3
	movq	-64(%rbp), %rdi
	addq	$64, %rdi
	movl	$.L.str.24, %esi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB17_35
	jmp	.LBB17_34
	.align	16, 0x90
.LBB17_36:                              #   in Loop: Header=BB17_16 Depth=2
	movslq	-100(%rbp), %rax
	movq	scope(,%rax,8), %rax
	cmpq	StartSym(%rip), %rax
	jne	.LBB17_16
	jmp	.LBB17_37
.LBB17_34:
	movq	-72(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB17_39
.LBB17_38:
	movq	$0, -16(%rbp)
.LBB17_39:
	movq	-16(%rbp), %rax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	SearchSym, .Lfunc_end17-SearchSym
	.cfi_endproc

	.globl	SymName
	.align	16, 0x90
	.type	SymName,@function
SymName:                                # @SymName
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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	testq	%rdi, %rdi
	je	.LBB18_1
# BB#2:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB18_3
	.align	16, 0x90
.LBB18_4:                               #   in Loop: Header=BB18_3 Depth=1
	movq	-24(%rbp), %rax
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB18_4
# BB#5:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB18_8
# BB#6:
	movq	-24(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB18_8
# BB#7:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.26, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB18_8:
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB18_9
.LBB18_1:
	movq	$.L.str.25, -8(%rbp)
.LBB18_9:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	SymName, .Lfunc_end18-SymName
	.cfi_endproc

	.globl	FullSymName
	.align	16, 0x90
	.type	FullSymName,@function
FullSymName:                            # @FullSymName
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
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
.Ltmp70:
	.cfi_offset %rbx, -32
.Ltmp71:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB19_1
# BB#2:
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	jne	.LBB19_4
# BB#3:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB19_4:
	movl	$0, -212(%rbp)
	jmp	.LBB19_5
	.align	16, 0x90
.LBB19_9:                               #   in Loop: Header=BB19_5 Depth=1
	movq	-32(%rbp), %rax
	movslq	-212(%rbp), %rcx
	movq	%rax, -208(%rbp,%rcx,8)
	movq	-32(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	incl	-212(%rbp)
.LBB19_5:                               # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 48(%rax)
	je	.LBB19_6
# BB#7:                                 #   in Loop: Header=BB19_5 Depth=1
	cmpl	$20, -212(%rbp)
	setl	%al
	jmp	.LBB19_8
	.align	16, 0x90
.LBB19_6:                               #   in Loop: Header=BB19_5 Depth=1
	xorl	%eax, %eax
.LBB19_8:                               #   in Loop: Header=BB19_5 Depth=1
	testb	%al, %al
	jne	.LBB19_9
# BB#10:
	movl	$FullSymName.buff, %edi
	movl	$.L.str.28, %esi
	callq	strcpy
	jmp	.LBB19_11
	.align	16, 0x90
.LBB19_14:                              #   in Loop: Header=BB19_11 Depth=1
	movq	FullSymName.sname(%rip), %rsi
	movl	$FullSymName.buff, %edi
	callq	strcat
	movq	-40(%rbp), %rsi
	movl	$FullSymName.buff, %edi
	callq	strcat
.LBB19_11:                              # =>This Inner Loop Header: Depth=1
	decl	-212(%rbp)
	cmpl	$0, -212(%rbp)
	jle	.LBB19_15
# BB#12:                                #   in Loop: Header=BB19_11 Depth=1
	movslq	-212(%rbp), %rax
	movq	-208(%rbp,%rax,8), %rdi
	callq	SymName
	movq	%rax, FullSymName.sname(%rip)
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	-40(%rbp), %rdi
	callq	strlen
	movq	%rax, %rbx
	addq	%r14, %rbx
	movl	$FullSymName.buff, %edi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB19_14
# BB#13:                                #   in Loop: Header=BB19_11 Depth=1
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$29, %edi
	movl	$8, %esi
	movl	$.L.str.29, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB19_14
.LBB19_15:
	movq	-208(%rbp), %rdi
	callq	SymName
	movq	%rax, FullSymName.sname(%rip)
	movq	%rax, %rdi
	callq	strlen
	movq	%rax, %rbx
	movl	$FullSymName.buff, %edi
	callq	strlen
	addq	%rbx, %rax
	cmpq	$512, %rax              # imm = 0x200
	jb	.LBB19_17
# BB#16:
	movq	-32(%rbp), %r8
	addq	$32, %r8
	movl	$29, %edi
	movl	$9, %esi
	movl	$.L.str.29, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
.LBB19_17:
	movq	FullSymName.sname(%rip), %rsi
	movl	$FullSymName.buff, %edi
	callq	strcat
	movq	$FullSymName.buff, -24(%rbp)
	jmp	.LBB19_18
.LBB19_1:
	movq	$.L.str.25, -24(%rbp)
.LBB19_18:
	movq	-24(%rbp), %rax
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	FullSymName, .Lfunc_end19-FullSymName
	.cfi_endproc

	.globl	ChildSym
	.align	16, 0x90
	.type	ChildSym,@function
ChildSym:                               # @ChildSym
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
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
.Ltmp75:
	.cfi_offset %rbx, -32
.Ltmp76:
	.cfi_offset %r14, -24
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movq	-32(%rbp), %rax
	jmp	.LBB20_1
	.align	16, 0x90
.LBB20_8:                               #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
.LBB20_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_3 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.LBB20_9
# BB#2:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB20_3
	.align	16, 0x90
.LBB20_4:                               #   in Loop: Header=BB20_3 Depth=2
	movq	-56(%rbp), %rax
.LBB20_3:                               #   Parent Loop BB20_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB20_4
# BB#5:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	-56(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	-36(%rbp), %eax
	jne	.LBB20_8
# BB#6:                                 #   in Loop: Header=BB20_1 Depth=1
	movq	-56(%rbp), %rax
	movq	48(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB20_8
# BB#7:
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB20_10
.LBB20_9:
	movq	-32(%rbp), %rdi
	leaq	32(%rdi), %r14
	callq	SymName
	movq	%rax, %rbx
	movl	-36(%rbp), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$29, %edi
	movl	$10, %esi
	movl	$.L.str.30, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r9
	callq	Error
	movq	$0, -24(%rbp)
.LBB20_10:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end20:
	.size	ChildSym, .Lfunc_end20-ChildSym
	.cfi_endproc

	.globl	ChildSymWithCode
	.align	16, 0x90
	.type	ChildSymWithCode,@function
ChildSymWithCode:                       # @ChildSymWithCode
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
	subq	$56, %rsp
.Ltmp80:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movb	%sil, -25(%rbp)
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	jmp	.LBB21_1
	.align	16, 0x90
.LBB21_9:                               #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
.LBB21_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB21_3 Depth 2
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	80(%rcx), %rax
	je	.LBB21_10
# BB#2:                                 #   in Loop: Header=BB21_1 Depth=1
	movq	-40(%rbp), %rax
	jmp	.LBB21_3
	.align	16, 0x90
.LBB21_4:                               #   in Loop: Header=BB21_3 Depth=2
	movq	-48(%rbp), %rax
.LBB21_3:                               #   Parent Loop BB21_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB21_4
# BB#5:                                 #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$145, %eax
	jne	.LBB21_9
# BB#6:                                 #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	-24(%rbp), %rcx
	cmpq	80(%rcx), %rax
	jne	.LBB21_9
# BB#7:                                 #   in Loop: Header=BB21_1 Depth=1
	movq	-48(%rbp), %rax
	movzbl	125(%rax), %eax
	movzbl	-25(%rbp), %ecx
	cmpl	%ecx, %eax
	jne	.LBB21_9
# BB#8:
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB21_11
.LBB21_10:
	movq	-24(%rbp), %rbx
	movq	80(%rbx), %rdi
	addq	$32, %rbx
	callq	SymName
	movq	%rax, %r9
	movsbl	-25(%rbp), %eax
	movl	%eax, (%rsp)
	movl	$29, %edi
	movl	$11, %esi
	movl	$.L.str.31, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	movq	$0, -16(%rbp)
.LBB21_11:
	movq	-16(%rbp), %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	ChildSymWithCode, .Lfunc_end21-ChildSymWithCode
	.cfi_endproc

	.type	scope_top,@object       # @scope_top
	.local	scope_top
	.comm	scope_top,4,4
	.type	suppress_scope,@object  # @suppress_scope
	.local	suppress_scope
	.comm	suppress_scope,4,4
	.type	suppress_visible,@object # @suppress_visible
	.local	suppress_visible
	.comm	suppress_visible,4,4
	.type	symtab,@object          # @symtab
	.local	symtab
	.comm	symtab,28528,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"PushScope: suppress_scope!"
	.size	.L.str.1, 27

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"scope depth limit exceeded"
	.size	.L.str.2, 27

	.type	scope,@object           # @scope
	.local	scope
	.comm	scope,2400,16
	.type	npars_only,@object      # @npars_only
	.local	npars_only
	.comm	npars_only,1200,16
	.type	vis_only,@object        # @vis_only
	.local	vis_only
	.comm	vis_only,1200,16
	.type	body_ok,@object         # @body_ok
	.local	body_ok
	.comm	body_ok,1200,16
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"PopScope: tried to pop empty scope stack"
	.size	.L.str.3, 41

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"PopScope: suppress_scope!"
	.size	.L.str.4, 26

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"word is too long"
	.size	.L.str.5, 17

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"LoadScopeSnapshot: type(ss)!"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"LoadScopeSnapshot: type(x)!"
	.size	.L.str.7, 28

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"invalid symbol name %s"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"@Target"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"@Tag"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"@Optimize"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@Key"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"@Merge"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"@Enclose"
	.size	.L.str.14, 9

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"@Filter"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s must be a local definition"
	.size	.L.str.16, 30

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%s must lie within a symbol with a right parameter"
	.size	.L.str.17, 51

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"a body parameter may not be named %s"
	.size	.L.str.18, 37

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"the right parameter of a galley may not be called %s"
	.size	.L.str.19, 53

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"symbol %s previously defined at%s"
	.size	.L.str.20, 34

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"symbol %s previously defined here"
	.size	.L.str.21, 34

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"symbol name %s previously defined at%s"
	.size	.L.str.22, 39

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@Include"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"@SysInclude"
	.size	.L.str.24, 12

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"<nilobj>"
	.size	.L.str.25, 9

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"SymName: !is_word(type(p))!"
	.size	.L.str.26, 28

	.type	FullSymName.buff,@object # @FullSymName.buff
	.local	FullSymName.buff
	.comm	FullSymName.buff,512,16
	.type	FullSymName.sname,@object # @FullSymName.sname
	.local	FullSymName.sname
	.comm	FullSymName.sname,8,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"FullSymName: enclosing(x) == nilobj!"
	.size	.L.str.27, 37

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.zero	1
	.size	.L.str.28, 1

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"full name of symbol is too long"
	.size	.L.str.29, 32

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"symbol %s has missing %s"
	.size	.L.str.30, 25

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"symbol %s has erroneous code %c (database out of date?)"
	.size	.L.str.31, 56


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
