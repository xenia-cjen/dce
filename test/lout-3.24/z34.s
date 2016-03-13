	.text
	.file	"z34.opt"
	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI0_0:
	.quad	4614256656552045848     # double 3.1415926535897931
.LCPI0_1:
	.quad	4676566000559194112     # double 46080
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI0_2:
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
	.long	2147483648              # 0x80000000
.LCPI0_3:
	.zero	16
	.text
	.globl	RotateSize
	.align	16, 0x90
	.type	RotateSize,@function
RotateSize:                             # @RotateSize
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
	subq	$208, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	%r9d, -44(%rbp)
	cvtsi2sdl	%r9d, %xmm0
	addsd	%xmm0, %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	movsd	%xmm0, -184(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -104(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	48(%rax), %xmm0
	movaps	.LCPI0_2(%rip), %xmm1   # xmm1 = [2147483648,2147483648,2147483648,2147483648]
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	52(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -88(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	48(%rax), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -80(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	60(%rax), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -72(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	56(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -64(%rbp)
	movq	-40(%rbp), %rax
	xorps	%xmm0, %xmm0
	cvtsi2ssl	60(%rax), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movabsq	$-4512606827698978816, %rax # imm = 0xC15FFFFFC0000000
	movq	%rax, -160(%rbp)
	movq	%rax, -152(%rbp)
	movabsq	$4710765209155796992, %rax # imm = 0x415FFFFFC0000000
	movq	%rax, -176(%rbp)
	movq	%rax, -168(%rbp)
	movl	$0, -188(%rbp)
	xorps	%xmm1, %xmm1
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	%xmm0, -176(%rbp)
	incl	-188(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, -188(%rbp)
	jg	.LBB0_21
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movslq	-188(%rbp), %rax
	shlq	$4, %rax
	movsd	-112(%rbp,%rax), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_5
	jp	.LBB0_5
# BB#3:                                 #   in Loop: Header=BB0_1 Depth=1
	movslq	-188(%rbp), %rax
	shlq	$4, %rax
	movsd	-104(%rbp,%rax), %xmm0  # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_5
	jp	.LBB0_5
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, -144(%rbp)
	jmp	.LBB0_8
	.align	16, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movslq	-188(%rbp), %rax
	shlq	$4, %rax
	movsd	-112(%rbp,%rax), %xmm1  # xmm1 = mem[0],zero
	movsd	-104(%rbp,%rax), %xmm0  # xmm0 = mem[0],zero
	callq	atan2
	movsd	%xmm0, -144(%rbp)
	movslq	-188(%rbp), %rax
	shlq	$4, %rax
	movsd	-112(%rbp,%rax), %xmm1  # xmm1 = mem[0],zero
	movsd	-104(%rbp,%rax), %xmm0  # xmm0 = mem[0],zero
	mulsd	%xmm1, %xmm1
	mulsd	%xmm0, %xmm0
	addsd	%xmm1, %xmm0
	xorps	%xmm1, %xmm1
	sqrtsd	%xmm0, %xmm1
	ucomisd	%xmm1, %xmm1
	jnp	.LBB0_7
# BB#6:                                 # %call.sqrt
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	sqrt
	movapd	%xmm0, %xmm1
.LBB0_7:                                # %.split
                                        #   in Loop: Header=BB0_1 Depth=1
	movsd	%xmm1, -136(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-184(%rbp), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	cos
	mulsd	-200(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	%xmm0, -128(%rbp)
	movsd	-144(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-136(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	%xmm1, -200(%rbp)       # 8-byte Spill
	callq	sin
	mulsd	-200(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	%xmm0, -120(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-152(%rbp), %xmm0
	jbe	.LBB0_10
# BB#9:                                 #   in Loop: Header=BB0_1 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_11
	.align	16, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	-152(%rbp), %xmm0       # xmm0 = mem[0],zero
.LBB0_11:                               #   in Loop: Header=BB0_1 Depth=1
	xorpd	%xmm1, %xmm1
	movsd	%xmm0, -152(%rbp)
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-168(%rbp), %xmm0
	jbe	.LBB0_13
# BB#12:                                #   in Loop: Header=BB0_1 Depth=1
	movsd	-168(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	-128(%rbp), %xmm0       # xmm0 = mem[0],zero
.LBB0_14:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	%xmm0, -168(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-160(%rbp), %xmm0
	jbe	.LBB0_16
# BB#15:                                #   in Loop: Header=BB0_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_17
	.align	16, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	-160(%rbp), %xmm0       # xmm0 = mem[0],zero
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	%xmm0, -160(%rbp)
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	ucomisd	-176(%rbp), %xmm0
	jbe	.LBB0_19
# BB#18:                                #   in Loop: Header=BB0_1 Depth=1
	movsd	-176(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_20
	.align	16, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_1 Depth=1
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	jmp	.LBB0_20
.LBB0_21:
	cvttsd2si	-168(%rbp), %eax
	negl	%eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-152(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-160(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	cvttsd2si	-176(%rbp), %eax
	negl	%eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	RotateSize, .Lfunc_end0-RotateSize
	.cfi_endproc


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
