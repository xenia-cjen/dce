	.text
	.file	"z20.opt"
	.globl	FlushGalley
	.align	16, 0x90
	.type	FlushGalley,@function
FlushGalley:                            # @FlushGalley
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
	subq	$2072, %rsp             # imm = 0x818
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
	movq	%rdi, -48(%rbp)
	movl	$0, -236(%rbp)
	movq	-48(%rbp), %rax
	movzbl	43(%rax), %eax
	andl	$1, %eax
	movl	%eax, -92(%rbp)
	leaq	-72(%rbp), %r14
	movl	$-1610612737, %r15d     # imm = 0xFFFFFFFF9FFFFFFF
	movl	$1610612736, %r12d      # imm = 0x60000000
	movb	$1, %r13b
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_386:                              #   in Loop: Header=BB0_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_63 Depth 2
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_156 Depth 4
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_264 Depth 3
                                        #     Child Loop BB0_228 Depth 2
                                        #     Child Loop BB0_313 Depth 2
                                        #       Child Loop BB0_314 Depth 3
                                        #         Child Loop BB0_316 Depth 4
                                        #         Child Loop BB0_322 Depth 4
                                        #     Child Loop BB0_336 Depth 2
                                        #       Child Loop BB0_338 Depth 3
                                        #     Child Loop BB0_362 Depth 2
                                        #     Child Loop BB0_372 Depth 2
                                        #     Child Loop BB0_572 Depth 2
                                        #       Child Loop BB0_590 Depth 3
                                        #     Child Loop BB0_691 Depth 2
                                        #     Child Loop BB0_670 Depth 2
                                        #     Child Loop BB0_680 Depth 2
                                        #     Child Loop BB0_646 Depth 2
                                        #     Child Loop BB0_656 Depth 2
                                        #     Child Loop BB0_397 Depth 2
                                        #     Child Loop BB0_449 Depth 2
                                        #     Child Loop BB0_452 Depth 2
                                        #     Child Loop BB0_454 Depth 2
	movq	-48(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$8, %eax
	je	.LBB0_3
# BB#2:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.1, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	%rax, 24(%rax)
	jne	.LBB0_5
# BB#4:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.2, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_6
	.align	16, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_6 Depth=2
	movq	-64(%rbp), %rax
.LBB0_6:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_7
# BB#8:                                 #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$120, %eax
	je	.LBB0_13
# BB#9:                                 #   in Loop: Header=BB0_1 Depth=1
	cmpl	$122, %eax
	jne	.LBB0_10
# BB#54:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	InputSym(%rip), %rax
	jne	.LBB0_55
	jmp	.LBB0_697
	.align	16, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	%r14, %rsi
	leaq	-88(%rbp), %rdx
	callq	AttachGalley
	movl	%eax, -284(%rbp)
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_14
	.align	16, 0x90
.LBB0_15:                               #   in Loop: Header=BB0_14 Depth=2
	movq	-64(%rbp), %rax
.LBB0_14:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_15
# BB#16:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-284(%rbp), %eax
	cmpq	$5, %rax
	jbe	.LBB0_17
# BB#53:                                #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.6, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_55:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -56(%rbp)
	movl	40(%rax), %eax
	shrl	$29, %eax
	testb	$3, %al
	jne	.LBB0_57
# BB#56:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movl	40(%rax), %ecx
	andl	%r15d, %ecx
	orl	$536870912, %ecx        # imm = 0x20000000
	movl	%ecx, 40(%rax)
.LBB0_57:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -92(%rbp)
	jne	.LBB0_59
# BB#58:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rcx
	movb	$1, %al
	movzwl	42(%rcx), %ecx
	btl	$4, %ecx
	jae	.LBB0_62
.LBB0_59:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -92(%rbp)
	je	.LBB0_61
# BB#60:                                #   in Loop: Header=BB0_1 Depth=1
	xorl	%eax, %eax
	jmp	.LBB0_62
	.align	16, 0x90
.LBB0_61:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$3, %eax
	setae	%al
.LBB0_62:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	%al, %eax
	movl	%eax, -240(%rbp)
	movl	$0, -244(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -152(%rbp)
	movq	$0, -216(%rbp)
	movl	$0, -160(%rbp)
	movq	-48(%rbp), %rax
	jmp	.LBB0_63
	.align	16, 0x90
.LBB0_275:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
.LBB0_63:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_65 Depth 3
                                        #       Child Loop BB0_71 Depth 3
                                        #       Child Loop BB0_102 Depth 3
                                        #       Child Loop BB0_116 Depth 3
                                        #       Child Loop BB0_124 Depth 3
                                        #       Child Loop BB0_134 Depth 3
                                        #       Child Loop BB0_154 Depth 3
                                        #         Child Loop BB0_156 Depth 4
                                        #       Child Loop BB0_177 Depth 3
                                        #       Child Loop BB0_264 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_276
# BB#64:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB0_65
	.align	16, 0x90
.LBB0_66:                               #   in Loop: Header=BB0_65 Depth=3
	movq	-88(%rbp), %rax
.LBB0_65:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_66
# BB#67:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_73
# BB#68:                                #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, -92(%rbp)
	je	.LBB0_69
# BB#70:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_71
.LBB0_69:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_71
	.align	16, 0x90
.LBB0_72:                               #   in Loop: Header=BB0_71 Depth=3
	movq	-88(%rbp), %rax
.LBB0_71:                               #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_72
.LBB0_73:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	decl	%eax
	cmpl	$137, %eax
	ja	.LBB0_274
# BB#74:                                #   in Loop: Header=BB0_63 Depth=2
	jmpq	*.LJTI0_1(,%rax,8)
.LBB0_152:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%r12d, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	cmpl	$1, -92(%rbp)
	jne	.LBB0_166
# BB#153:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB0_154
	.align	16, 0x90
.LBB0_163:                              #   in Loop: Header=BB0_154 Depth=3
	movq	-256(%rbp), %rax
.LBB0_154:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_156 Depth 4
	movq	8(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	cmpq	-48(%rbp), %rax
	je	.LBB0_164
# BB#155:                               #   in Loop: Header=BB0_154 Depth=3
	movq	-256(%rbp), %rax
	jmp	.LBB0_156
	.align	16, 0x90
.LBB0_157:                              #   in Loop: Header=BB0_156 Depth=4
	movq	-264(%rbp), %rax
.LBB0_156:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        #       Parent Loop BB0_154 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_157
# BB#158:                               #   in Loop: Header=BB0_154 Depth=3
	movq	-264(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	jne	.LBB0_159
# BB#161:                               #   in Loop: Header=BB0_154 Depth=3
	movq	-264(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB0_163
# BB#162:                               #   in Loop: Header=BB0_154 Depth=3
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)
	jmp	.LBB0_163
.LBB0_159:                              #   in Loop: Header=BB0_154 Depth=3
	addl	$-121, %eax
	cmpl	$1, %eax
	ja	.LBB0_163
	jmp	.LBB0_160
	.align	16, 0x90
.LBB0_274:                              #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %rbx
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.18, %r9d
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
	jmp	.LBB0_275
.LBB0_164:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$18, %eax
	jne	.LBB0_166
# BB#165:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rdi
	callq	VerticalHyphenate
.LBB0_166:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, -240(%rbp)
	je	.LBB0_259
# BB#167:                               #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, -152(%rbp)
	jne	.LBB0_199
# BB#168:                               #   in Loop: Header=BB0_63 Depth=2
	cmpl	$1, -92(%rbp)
	je	.LBB0_169
# BB#170:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	jmp	.LBB0_171
.LBB0_82:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%r12d, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-80(%rbp), %rax
	jmp	.LBB0_63
.LBB0_151:                              #   in Loop: Header=BB0_63 Depth=2
	movl	$1, -244(%rbp)
	movq	-80(%rbp), %rax
	jmp	.LBB0_63
.LBB0_169:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
.LBB0_171:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, -92(%rbp)
	je	.LBB0_172
# BB#173:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rcx
	movq	16(%rcx), %rcx
	jmp	.LBB0_174
.LBB0_172:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rcx
	movq	24(%rcx), %rcx
.LBB0_174:                              #   in Loop: Header=BB0_63 Depth=2
	cmpq	%rcx, %rax
	je	.LBB0_176
# BB#175:                               #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.11, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_176:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_177
	.align	16, 0x90
.LBB0_178:                              #   in Loop: Header=BB0_177 Depth=3
	movq	-152(%rbp), %rax
.LBB0_177:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_178
# BB#179:                               #   in Loop: Header=BB0_63 Depth=2
	cmpl	$1, -92(%rbp)
	jne	.LBB0_181
# BB#180:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$19, %eax
	je	.LBB0_184
.LBB0_181:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, -92(%rbp)
	jne	.LBB0_183
# BB#182:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-152(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB0_184
.LBB0_183:                              #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.12, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_184:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	-156(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%esi, %esi
	leaq	-184(%rbp), %rdx
	leaq	-192(%rbp), %rcx
	leaq	-200(%rbp), %r8
	leaq	-208(%rbp), %r9
	callq	SetNeighbours
	cmpq	$0, -184(%rbp)
	jne	.LBB0_188
# BB#185:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_187
# BB#186:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_188
.LBB0_187:                              #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.13, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_188:                              #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, -200(%rbp)
	je	.LBB0_190
# BB#189:                               #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.14, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_190:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$153, -156(%rbp)
	je	.LBB0_194
# BB#191:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_193
# BB#192:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_194
.LBB0_193:                              #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.15, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_194:                              #   in Loop: Header=BB0_63 Depth=2
	movslq	-92(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	48(%rcx,%rax,4), %eax
	movl	%eax, -164(%rbp)
	movslq	-92(%rbp), %rax
	movq	-152(%rbp), %rcx
	movl	56(%rcx,%rax,4), %eax
	movl	%eax, -168(%rbp)
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-152(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	movl	%eax, -300(%rbp)
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-152(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	movl	%eax, -304(%rbp)
	movq	-152(%rbp), %rdi
	movl	-92(%rbp), %edx
	leaq	-112(%rbp), %rsi
	leaq	-296(%rbp), %rbx
	movq	%rbx, %rcx
	callq	Constrained
	movq	-152(%rbp), %rdi
	movl	$1, %edx
	subl	-92(%rbp), %edx
	leaq	-128(%rbp), %rsi
	movq	%rbx, %rcx
	callq	Constrained
	cmpl	$8388607, -112(%rbp)    # imm = 0x7FFFFF
	jne	.LBB0_197
# BB#195:                               #   in Loop: Header=BB0_63 Depth=2
	cmpl	$8388607, -108(%rbp)    # imm = 0x7FFFFF
	jne	.LBB0_197
# BB#196:                               #   in Loop: Header=BB0_63 Depth=2
	xorl	%eax, %eax
	cmpl	$8388607, -104(%rbp)    # imm = 0x7FFFFF
	je	.LBB0_198
.LBB0_197:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-108(%rbp), %eax
.LBB0_198:                              #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, -172(%rbp)
.LBB0_199:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	jl	.LBB0_201
# BB#200:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jl	.LBB0_259
.LBB0_201:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-168(%rbp), %r9d
	movslq	-92(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	56(%rcx,%rax,4), %edx
	leal	(%r9,%rdx), %ebx
	movq	-192(%rbp), %rsi
	movl	56(%rsi,%rax,4), %edi
	subl	%edi, %ebx
	movl	48(%rcx,%rax,4), %esi
	movq	-184(%rbp), %rcx
	addq	$44, %rcx
	movl	-172(%rbp), %r8d
	addl	-164(%rbp), %r9d
	subl	%edi, %r9d
	callq	ActualGap
	addl	%ebx, %eax
	movl	%eax, -140(%rbp)
	movq	-184(%rbp), %rax
	movzwl	44(%rax), %eax
	shrl	$10, %eax
	andl	$7, %eax
	cmpl	$2, %eax
	jne	.LBB0_203
# BB#202:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-184(%rbp), %rax
	movswl	46(%rax), %eax
	cmpl	$4096, %eax             # imm = 0x1000
	jg	.LBB0_208
.LBB0_203:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-164(%rbp), %eax
	cmpl	-112(%rbp), %eax
	jg	.LBB0_208
# BB#204:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-164(%rbp), %eax
	addl	-140(%rbp), %eax
	cmpl	-108(%rbp), %eax
	jg	.LBB0_208
# BB#205:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-140(%rbp), %eax
	cmpl	-104(%rbp), %eax
	jg	.LBB0_208
# BB#206:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_240
# BB#207:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-48(%rbp), %rax
	cmpl	$0, 160(%rax)
	jle	.LBB0_208
.LBB0_240:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB0_243
# BB#241:                               #   in Loop: Header=BB0_63 Depth=2
	movl	$0, -132(%rbp)
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	cmpl	%edx, -304(%rbp)
	jge	.LBB0_248
# BB#242:                               #   in Loop: Header=BB0_63 Depth=2
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	48(%rax,%rcx,4), %edx
	addl	56(%rax,%rcx,4), %edx
	movl	%edx, -136(%rbp)
	jmp	.LBB0_250
.LBB0_243:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-300(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movl	$1, %edx
	subq	%rcx, %rdx
	movq	-88(%rbp), %rcx
	cmpl	48(%rcx,%rdx,4), %eax
	jge	.LBB0_245
# BB#244:                               #   in Loop: Header=BB0_63 Depth=2
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	48(%rax,%rcx,4), %eax
	jmp	.LBB0_246
.LBB0_245:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-300(%rbp), %eax
.LBB0_246:                              #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, -132(%rbp)
	movl	-304(%rbp), %eax
	movslq	-92(%rbp), %rcx
	movl	$1, %edx
	subq	%rcx, %rdx
	movq	-88(%rbp), %rcx
	cmpl	56(%rcx,%rdx,4), %eax
	jge	.LBB0_248
# BB#247:                               #   in Loop: Header=BB0_63 Depth=2
	movslq	-92(%rbp), %rax
	movl	$1, %ecx
	subq	%rax, %rcx
	movq	-88(%rbp), %rax
	movl	56(%rax,%rcx,4), %eax
	jmp	.LBB0_249
.LBB0_248:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-304(%rbp), %eax
.LBB0_249:                              #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, -136(%rbp)
.LBB0_250:                              #   in Loop: Header=BB0_63 Depth=2
	movl	-132(%rbp), %eax
	cmpl	-128(%rbp), %eax
	jg	.LBB0_253
# BB#251:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-132(%rbp), %eax
	addl	-136(%rbp), %eax
	cmpl	-124(%rbp), %eax
	jg	.LBB0_253
# BB#252:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-136(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jg	.LBB0_253
# BB#257:                               #   in Loop: Header=BB0_63 Depth=2
	movl	-140(%rbp), %eax
	movl	%eax, -168(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -192(%rbp)
	movl	-132(%rbp), %eax
	movl	%eax, -300(%rbp)
	movl	-136(%rbp), %eax
	movl	%eax, -304(%rbp)
	movl	$1, -160(%rbp)
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_259
# BB#258:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-48(%rbp), %rax
	decl	160(%rax)
.LBB0_259:                              #   in Loop: Header=BB0_63 Depth=2
	movb	$1, %al
	cmpl	$0, -236(%rbp)
	jne	.LBB0_261
# BB#260:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$5, %eax
	andl	$1, %eax
.LBB0_261:                              #   in Loop: Header=BB0_63 Depth=2
	movzbl	%al, %eax
	movl	%eax, -236(%rbp)
	cmpq	$0, -72(%rbp)
	je	.LBB0_275
# BB#262:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_263
# BB#269:                               #   in Loop: Header=BB0_63 Depth=2
	movl	$1, -316(%rbp)
	jmp	.LBB0_270
.LBB0_263:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_264
	.align	16, 0x90
.LBB0_265:                              #   in Loop: Header=BB0_264 Depth=3
	movq	-328(%rbp), %rax
.LBB0_264:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -328(%rbp)
	movq	-328(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_265
# BB#266:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-328(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$1, %eax
	je	.LBB0_268
# BB#267:                               #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.17, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_268:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-328(%rbp), %rax
	btl	$7, 44(%rax)
	setae	%al
	movzbl	%al, %eax
	movl	%eax, -316(%rbp)
.LBB0_270:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$0, -316(%rbp)
	je	.LBB0_275
	jmp	.LBB0_271
.LBB0_83:                               #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, -72(%rbp)
	jne	.LBB0_90
# BB#84:                                #   in Loop: Header=BB0_63 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_86
# BB#85:                                #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_89
.LBB0_75:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-56(%rbp), %rax
	movq	-88(%rbp), %rcx
	movl	40(%rax), %eax
	andl	%r12d, %eax
	movl	40(%rcx), %edx
	andl	%r15d, %edx
	orl	%eax, %edx
	movl	%edx, 40(%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, -184(%rbp)
	cmpl	$0, -240(%rbp)
	je	.LBB0_79
# BB#76:                                #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, -152(%rbp)
	je	.LBB0_80
# BB#77:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-184(%rbp), %rax
	btl	$7, 44(%rax)
	jb	.LBB0_80
# BB#78:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)
	movl	-164(%rbp), %eax
	movl	%eax, -220(%rbp)
	movl	-168(%rbp), %eax
	movl	%eax, -224(%rbp)
	movl	-300(%rbp), %eax
	movl	%eax, -228(%rbp)
	movl	-304(%rbp), %eax
	movl	%eax, -232(%rbp)
	jmp	.LBB0_80
.LBB0_101:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_102
	.align	16, 0x90
.LBB0_103:                              #   in Loop: Header=BB0_102 Depth=3
	movq	-272(%rbp), %rax
.LBB0_102:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_103
# BB#104:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-272(%rbp), %rax
	movq	24(%rax), %rcx
	cmpq	16(%rax), %rcx
	je	.LBB0_105
# BB#115:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-272(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_116
	.align	16, 0x90
.LBB0_117:                              #   in Loop: Header=BB0_116 Depth=3
	movq	-272(%rbp), %rax
.LBB0_116:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_117
# BB#118:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-272(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$124, %eax
	je	.LBB0_120
# BB#119:                               #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.10, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_120:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-272(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	CheckComponentOrder
	cmpl	$157, %eax
	jne	.LBB0_121
# BB#123:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-272(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB0_124
	.align	16, 0x90
.LBB0_133:                              #   in Loop: Header=BB0_124 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_124:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB0_134
# BB#125:                               #   in Loop: Header=BB0_124 Depth=3
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_127
# BB#126:                               #   in Loop: Header=BB0_124 Depth=3
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
.LBB0_127:                              #   in Loop: Header=BB0_124 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_129
# BB#128:                               #   in Loop: Header=BB0_124 Depth=3
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
.LBB0_129:                              #   in Loop: Header=BB0_124 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_131
# BB#130:                               #   in Loop: Header=BB0_124 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_124 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_132:                              #   in Loop: Header=BB0_124 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_143:                              #   in Loop: Header=BB0_134 Depth=3
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_134:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_144
# BB#135:                               #   in Loop: Header=BB0_134 Depth=3
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_137
# BB#136:                               #   in Loop: Header=BB0_134 Depth=3
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
.LBB0_137:                              #   in Loop: Header=BB0_134 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_139
# BB#138:                               #   in Loop: Header=BB0_134 Depth=3
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
.LBB0_139:                              #   in Loop: Header=BB0_134 Depth=3
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_141
# BB#140:                               #   in Loop: Header=BB0_134 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_142
.LBB0_141:                              #   in Loop: Header=BB0_134 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_143
	.align	16, 0x90
.LBB0_142:                              #   in Loop: Header=BB0_134 Depth=3
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_143
.LBB0_144:                              #   in Loop: Header=BB0_63 Depth=2
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_146
# BB#145:                               #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_147
.LBB0_146:                              #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_148
.LBB0_86:                               #   in Loop: Header=BB0_63 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_87
# BB#88:                                #   in Loop: Header=BB0_63 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_89
.LBB0_79:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)
.LBB0_80:                               #   in Loop: Header=BB0_63 Depth=2
	movq	-88(%rbp), %rax
	btl	$9, 44(%rax)
	jb	.LBB0_275
# BB#81:                                #   in Loop: Header=BB0_63 Depth=2
	movq	-48(%rbp), %rax
	orw	$32, 42(%rax)
	movq	-80(%rbp), %rax
	jmp	.LBB0_63
.LBB0_147:                              #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_148:                              #   in Loop: Header=BB0_63 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_105:                              #   in Loop: Header=BB0_63 Depth=2
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_107
# BB#106:                               #   in Loop: Header=BB0_63 Depth=2
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
.LBB0_107:                              #   in Loop: Header=BB0_63 Depth=2
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_109
# BB#108:                               #   in Loop: Header=BB0_63 Depth=2
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
.LBB0_109:                              #   in Loop: Header=BB0_63 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_111
# BB#110:                               #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_112
.LBB0_111:                              #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_113
.LBB0_112:                              #   in Loop: Header=BB0_63 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_113:                              #   in Loop: Header=BB0_63 Depth=2
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
	jne	.LBB0_275
# BB#114:                               #   in Loop: Header=BB0_63 Depth=2
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	movq	-80(%rbp), %rax
	jmp	.LBB0_63
.LBB0_87:                               #   in Loop: Header=BB0_63 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_89:                               #   in Loop: Header=BB0_63 Depth=2
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
	movq	%rax, -72(%rbp)
.LBB0_90:                               #   in Loop: Header=BB0_63 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_92
# BB#91:                                #   in Loop: Header=BB0_63 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_95
.LBB0_92:                               #   in Loop: Header=BB0_63 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_93
# BB#94:                                #   in Loop: Header=BB0_63 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_95
.LBB0_93:                               #   in Loop: Header=BB0_63 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_95:                               #   in Loop: Header=BB0_63 Depth=2
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
	je	.LBB0_98
# BB#96:                                #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_98
# BB#97:                                #   in Loop: Header=BB0_63 Depth=2
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
.LBB0_98:                               #   in Loop: Header=BB0_63 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_275
# BB#99:                                #   in Loop: Header=BB0_63 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_275
# BB#100:                               #   in Loop: Header=BB0_63 Depth=2
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
	movq	-80(%rbp), %rax
	jmp	.LBB0_63
.LBB0_121:                              #   in Loop: Header=BB0_63 Depth=2
	cmpl	$155, %eax
	je	.LBB0_149
# BB#122:                               #   in Loop: Header=BB0_63 Depth=2
	cmpl	$156, %eax
	jne	.LBB0_275
	jmp	.LBB0_388
.LBB0_208:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_303
# BB#209:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	zz_lengths+26(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_211
# BB#210:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_214
.LBB0_160:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-264(%rbp), %rax
	movq	%rax, -88(%rbp)
.LBB0_388:                              #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_390
# BB#389:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	DisposeObject
.LBB0_390:                              #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB0_393
# BB#391:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	$1, %ecx
	callq	Promote
	cmpl	$0, -160(%rbp)
	je	.LBB0_393
# BB#392:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rdi
	movl	-220(%rbp), %esi
	movl	-224(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	AdjustSize
	movq	-152(%rbp), %rdi
	movl	-228(%rbp), %esi
	movl	-232(%rbp), %edx
	movl	$1, %ecx
	subl	-92(%rbp), %ecx
	callq	AdjustSize
.LBB0_393:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB0_568
# BB#394:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB0_568
# BB#395:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB0_568
# BB#396:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_397
	.align	16, 0x90
.LBB0_398:                              #   in Loop: Header=BB0_397 Depth=2
	movq	-376(%rbp), %rax
.LBB0_397:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -376(%rbp)
	movq	-376(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_398
# BB#399:                               #   in Loop: Header=BB0_1 Depth=1
	xorl	%edi, %edi
	callq	SwitchScope
	movq	-376(%rbp), %rax
	movq	40(%rax), %rsi
	movl	36(%rax), %edx
	movzwl	34(%rax), %edi
	callq	ReadFromFile
	movq	%rax, -384(%rbp)
	xorl	%edi, %edi
	callq	UnSwitchScope
	cmpq	$0, -384(%rbp)
	jne	.LBB0_401
# BB#400:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movq	-376(%rbp), %rax
	movzwl	34(%rax), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$20, %edi
	movl	$1, %esi
	movl	$.L.str.26, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB0_401:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-384(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_403
# BB#402:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_403:                              #   in Loop: Header=BB0_1 Depth=1
	movzbl	zz_lengths+120(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_405
# BB#404:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_408
.LBB0_568:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB0_643
# BB#569:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$6, %eax
	jae	.LBB0_643
# BB#570:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, AllowCrossDb(%rip)
	je	.LBB0_643
# BB#571:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rdi
	leaq	-1520(%rbp), %rsi
	callq	FirstExternTarget
	jmp	.LBB0_572
	.align	16, 0x90
.LBB0_641:                              #   in Loop: Header=BB0_572 Depth=2
	movq	-88(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rdi
	leaq	-1520(%rbp), %rsi
	callq	NextExternTarget
.LBB0_572:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_590 Depth 3
	movq	%rax, -1472(%rbp)
	cmpq	$0, -1472(%rbp)
	je	.LBB0_642
# BB#573:                               #   in Loop: Header=BB0_572 Depth=2
	movq	-1472(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	80(%rax), %rsi
	addq	$32, %rsi
	callq	GallTargEval
	movq	%rax, -1480(%rbp)
	movzbl	zz_lengths+132(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_575
# BB#574:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_578
	.align	16, 0x90
.LBB0_575:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_576
# BB#577:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_578
.LBB0_576:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_578:                              #   in Loop: Header=BB0_572 Depth=2
	movq	zz_hold(%rip), %rax
	movb	$-124, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -1488(%rbp)
	movq	-1480(%rbp), %rcx
	movq	%rcx, 80(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_580
# BB#579:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_583
	.align	16, 0x90
.LBB0_580:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_581
# BB#582:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_583
.LBB0_581:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_583:                              #   in Loop: Header=BB0_572 Depth=2
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_586
# BB#584:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_586
# BB#585:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_586:                              #   in Loop: Header=BB0_572 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1488(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_589
# BB#587:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_589
# BB#588:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_589:                              #   in Loop: Header=BB0_572 Depth=2
	movq	-1480(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_590
	.align	16, 0x90
.LBB0_591:                              #   in Loop: Header=BB0_590 Depth=3
	movq	-1496(%rbp), %rax
.LBB0_590:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_572 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -1496(%rbp)
	movq	-1496(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_591
# BB#592:                               #   in Loop: Header=BB0_572 Depth=2
	movq	-1496(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_595
# BB#593:                               #   in Loop: Header=BB0_572 Depth=2
	movq	-1496(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	je	.LBB0_595
# BB#594:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.28, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_595:                              #   in Loop: Header=BB0_572 Depth=2
	movq	OldCrossDb(%rip), %rdi
	movq	-1472(%rbp), %rdx
	movq	-1496(%rbp), %rcx
	addq	$64, %rcx
	leaq	-2072(%rbp), %rax
	movq	%rax, 16(%rsp)
	leaq	-2076(%rbp), %rax
	movq	%rax, 8(%rsp)
	leaq	-2064(%rbp), %rax
	movq	%rax, (%rsp)
	movl	$1, %esi
	leaq	-2048(%rbp), %r8
	leaq	-2050(%rbp), %r9
	callq	DbRetrieve
	movl	%eax, -1524(%rbp)
	testl	%eax, %eax
	je	.LBB0_641
# BB#596:                               #   in Loop: Header=BB0_572 Depth=2
	movq	-48(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB0_603
# BB#597:                               #   in Loop: Header=BB0_572 Depth=2
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_599
# BB#598:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_602
.LBB0_599:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_600
# BB#601:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_602
.LBB0_600:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_602:                              #   in Loop: Header=BB0_572 Depth=2
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
	movq	-48(%rbp), %rcx
	movq	%rax, 96(%rcx)
.LBB0_603:                              #   in Loop: Header=BB0_572 Depth=2
	movzbl	zz_lengths+147(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_605
# BB#604:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_608
	.align	16, 0x90
.LBB0_605:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_606
# BB#607:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_608
.LBB0_606:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_608:                              #   in Loop: Header=BB0_572 Depth=2
	movq	zz_hold(%rip), %rax
	movb	$-109, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -1512(%rbp)
	movw	-2050(%rbp), %cx
	movw	%cx, 34(%rax)
	movq	-2064(%rbp), %rax
	movq	-1512(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	-2076(%rbp), %eax
	movq	-1512(%rbp), %rcx
	movl	%eax, 36(%rcx)
	movq	-1472(%rbp), %rax
	movq	-1512(%rbp), %rcx
	movq	%rax, 56(%rcx)
	movq	-2072(%rbp), %rax
	movq	-1512(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-1496(%rbp), %rsi
	addq	$64, %rsi
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	callq	MakeWord
	movq	%rax, -1496(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_610
# BB#609:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_613
	.align	16, 0x90
.LBB0_610:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_611
# BB#612:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_613
.LBB0_611:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_613:                              #   in Loop: Header=BB0_572 Depth=2
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
	movq	-1512(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_616
# BB#614:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_616
# BB#615:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_616:                              #   in Loop: Header=BB0_572 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1496(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_619
# BB#617:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_619
# BB#618:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_619:                              #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	leaq	-2048(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -1504(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_621
# BB#620:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_624
	.align	16, 0x90
.LBB0_621:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_622
# BB#623:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_624
.LBB0_622:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_624:                              #   in Loop: Header=BB0_572 Depth=2
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
	movq	-1512(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_627
# BB#625:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_627
# BB#626:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_627:                              #   in Loop: Header=BB0_572 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1504(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_630
# BB#628:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_630
# BB#629:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_630:                              #   in Loop: Header=BB0_572 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_632
# BB#631:                               #   in Loop: Header=BB0_572 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_635
	.align	16, 0x90
.LBB0_632:                              #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_633
# BB#634:                               #   in Loop: Header=BB0_572 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_635
.LBB0_633:                              #   in Loop: Header=BB0_572 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_635:                              #   in Loop: Header=BB0_572 Depth=2
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
	movq	96(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_638
# BB#636:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_638
# BB#637:                               #   in Loop: Header=BB0_572 Depth=2
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
.LBB0_638:                              #   in Loop: Header=BB0_572 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1512(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_641
# BB#639:                               #   in Loop: Header=BB0_572 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_641
# BB#640:                               #   in Loop: Header=BB0_572 Depth=2
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
	jmp	.LBB0_641
.LBB0_17:                               #   in Loop: Header=BB0_1 Depth=1
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_25:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -72(%rbp)
	jne	.LBB0_26
# BB#387:                               #   in Loop: Header=BB0_1 Depth=1
	movq	$0, -216(%rbp)
	jmp	.LBB0_388
.LBB0_253:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_255
# BB#254:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-48(%rbp), %rax
	movq	$0, 104(%rax)
.LBB0_255:                              #   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -92(%rbp)
	jne	.LBB0_303
# BB#256:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %r8
	addq	$32, %r8
	movl	$20, %edi
	movl	$3, %esi
	movl	$.L.str.16, %edx
	movl	$2, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_303
.LBB0_41:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jb	.LBB0_43
# BB#42:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	cmpq	ForceGalleySym(%rip), %rax
	je	.LBB0_43
# BB#49:                                #   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	cmpl	$0, -236(%rbp)
	jne	.LBB0_51
# BB#50:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$5, %eax
	andl	$1, %eax
.LBB0_51:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	%al, %eax
	movl	%eax, -236(%rbp)
	jmp	.LBB0_52
.LBB0_211:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_212
# BB#213:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_214
.LBB0_271:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-80(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-64(%rbp), %rdx
	movl	$1, %ecx
	callq	Promote
	cmpl	$0, -160(%rbp)
	je	.LBB0_273
# BB#272:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	AdjustSize
	movq	-152(%rbp), %rdi
	movl	-300(%rbp), %esi
	movl	-304(%rbp), %edx
	movl	$1, %ecx
	subl	-92(%rbp), %ecx
	callq	AdjustSize
.LBB0_273:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	FlushInners
	jmp	.LBB0_1
.LBB0_43:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_44
	.align	16, 0x90
.LBB0_45:                               #   in Loop: Header=BB0_44 Depth=2
	movq	-280(%rbp), %rax
.LBB0_44:                               #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_45
# BB#46:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	testb	$1, 42(%rax)
	jne	.LBB0_48
# BB#47:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, -236(%rbp)
.LBB0_48:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-280(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	88(%rax), %r8
	movq	%r14, %rdx
	movq	%rsi, %rcx
	callq	FreeGalley
.LBB0_52:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_1
.LBB0_26:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
	jmp	.LBB0_1
.LBB0_10:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$119, %eax
	je	.LBB0_699
# BB#11:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%r14, %rbx
	movq	no_fpos(%rip), %r14
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %edi
	callq	Image
	movq	%rax, (%rsp)
	movl	$1, %edi
	movl	$3, %esi
	movl	$.L.str.7, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.8, %r9d
	xorl	%eax, %eax
	movq	%r14, %r8
	movq	%rbx, %r14
	callq	Error
	jmp	.LBB0_55
.LBB0_642:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	andw	$-65, 42(%rax)
	movq	-48(%rbp), %rax
	cmpq	$0, 96(%rax)
	jne	.LBB0_1
.LBB0_643:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$121, %eax
	jne	.LBB0_666
# BB#644:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 42(%rax)
	je	.LBB0_666
# BB#645:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB0_646
	.align	16, 0x90
.LBB0_655:                              #   in Loop: Header=BB0_646 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_646:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB0_656
# BB#647:                               #   in Loop: Header=BB0_646 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_649
# BB#648:                               #   in Loop: Header=BB0_646 Depth=2
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
.LBB0_649:                              #   in Loop: Header=BB0_646 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_651
# BB#650:                               #   in Loop: Header=BB0_646 Depth=2
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
.LBB0_651:                              #   in Loop: Header=BB0_646 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_653
# BB#652:                               #   in Loop: Header=BB0_646 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_654
.LBB0_653:                              #   in Loop: Header=BB0_646 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_655
	.align	16, 0x90
.LBB0_654:                              #   in Loop: Header=BB0_646 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_655
	.align	16, 0x90
.LBB0_665:                              #   in Loop: Header=BB0_656 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_656:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_382
# BB#657:                               #   in Loop: Header=BB0_656 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_659
# BB#658:                               #   in Loop: Header=BB0_656 Depth=2
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
.LBB0_659:                              #   in Loop: Header=BB0_656 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_661
# BB#660:                               #   in Loop: Header=BB0_656 Depth=2
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
.LBB0_661:                              #   in Loop: Header=BB0_656 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_663
# BB#662:                               #   in Loop: Header=BB0_656 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_664
.LBB0_663:                              #   in Loop: Header=BB0_656 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_665
	.align	16, 0x90
.LBB0_664:                              #   in Loop: Header=BB0_656 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_665
.LBB0_666:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	jne	.LBB0_696
# BB#667:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	testb	$1, 42(%rax)
	je	.LBB0_696
# BB#668:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_669
# BB#690:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_691
	.align	16, 0x90
.LBB0_692:                              #   in Loop: Header=BB0_691 Depth=2
	movq	-264(%rbp), %rax
.LBB0_691:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_692
# BB#693:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-264(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_695
# BB#694:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-264(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	80(%rax), %rsi
	callq	GazumpOptimize
.LBB0_695:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-264(%rbp), %rdi
	callq	DetachGalley
	jmp	.LBB0_1
.LBB0_669:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB0_670
	.align	16, 0x90
.LBB0_679:                              #   in Loop: Header=BB0_670 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_670:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB0_680
# BB#671:                               #   in Loop: Header=BB0_670 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_673
# BB#672:                               #   in Loop: Header=BB0_670 Depth=2
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
.LBB0_673:                              #   in Loop: Header=BB0_670 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_675
# BB#674:                               #   in Loop: Header=BB0_670 Depth=2
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
.LBB0_675:                              #   in Loop: Header=BB0_670 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_677
# BB#676:                               #   in Loop: Header=BB0_670 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_678
.LBB0_677:                              #   in Loop: Header=BB0_670 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_679
	.align	16, 0x90
.LBB0_678:                              #   in Loop: Header=BB0_670 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_679
	.align	16, 0x90
.LBB0_689:                              #   in Loop: Header=BB0_680 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_680:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_382
# BB#681:                               #   in Loop: Header=BB0_680 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_683
# BB#682:                               #   in Loop: Header=BB0_680 Depth=2
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
.LBB0_683:                              #   in Loop: Header=BB0_680 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_685
# BB#684:                               #   in Loop: Header=BB0_680 Depth=2
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
.LBB0_685:                              #   in Loop: Header=BB0_680 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_687
# BB#686:                               #   in Loop: Header=BB0_680 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_688
.LBB0_687:                              #   in Loop: Header=BB0_680 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_689
	.align	16, 0x90
.LBB0_688:                              #   in Loop: Header=BB0_680 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_689
.LBB0_212:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_214:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movb	$26, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -312(%rbp)
	movl	-112(%rbp), %ecx
	movl	%ecx, 64(%rax)
	movl	-108(%rbp), %eax
	movq	-312(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	-104(%rbp), %eax
	movq	-312(%rbp), %rcx
	movl	%eax, 72(%rcx)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_216
# BB#215:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_219
.LBB0_216:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_217
# BB#218:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_219
.LBB0_217:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_219:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	112(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_222
# BB#220:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_222
# BB#221:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_222:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-312(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_225
# BB#223:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_225
# BB#224:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_225:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 120(%rax)
	je	.LBB0_302
# BB#226:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_302
# BB#227:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_228
	.align	16, 0x90
.LBB0_229:                              #   in Loop: Header=BB0_228 Depth=2
	movq	-312(%rbp), %rax
.LBB0_228:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -312(%rbp)
	movq	-312(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_229
# BB#230:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-312(%rbp), %rax
	movl	48(%rax), %eax
	movq	-48(%rbp), %rcx
	movl	160(%rcx), %edx
	leal	-1(%rax,%rdx), %eax
	movl	%eax, 160(%rcx)
	movq	-312(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_232
# BB#231:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_232:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_234
# BB#233:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_234:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_236
# BB#235:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_238
.LBB0_302:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movl	$65535, 160(%rax)       # imm = 0xFFFF
	jmp	.LBB0_303
.LBB0_405:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_406
# BB#407:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_408
.LBB0_237:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_238:                              #   in Loop: Header=BB0_1 Depth=1
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
	jne	.LBB0_303
# BB#239:                               #   in Loop: Header=BB0_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
	.align	16, 0x90
.LBB0_303:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-56(%rbp), %rax
	movq	80(%rax), %rax
	cmpq	PrintSym(%rip), %rax
	jne	.LBB0_305
# BB#304:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.19, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_305:                              #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -72(%rbp)
	je	.LBB0_307
# BB#306:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	DisposeObject
.LBB0_307:                              #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, -216(%rbp)
	je	.LBB0_310
# BB#308:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	movq	-216(%rbp), %rsi
	movq	-64(%rbp), %rdx
	movl	$1, %ecx
	callq	Promote
	cmpl	$0, -160(%rbp)
	je	.LBB0_310
# BB#309:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-152(%rbp), %rdi
	movl	-220(%rbp), %esi
	movl	-224(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	AdjustSize
	movq	-152(%rbp), %rdi
	movl	-228(%rbp), %esi
	movl	-232(%rbp), %edx
	movl	$1, %ecx
	subl	-92(%rbp), %ecx
	callq	AdjustSize
.LBB0_310:                              #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -240(%rbp)
	je	.LBB0_330
# BB#311:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -244(%rbp)
	je	.LBB0_330
# BB#312:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	jmp	.LBB0_313
	.align	16, 0x90
.LBB0_329:                              #   in Loop: Header=BB0_313 Depth=2
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
.LBB0_313:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_314 Depth 3
                                        #         Child Loop BB0_316 Depth 4
                                        #         Child Loop BB0_322 Depth 4
	movq	%rax, -352(%rbp)
	jmp	.LBB0_314
	.align	16, 0x90
.LBB0_328:                              #   in Loop: Header=BB0_314 Depth=3
	movq	-48(%rbp), %rdi
	movq	-344(%rbp), %rsi
	callq	HandleHeader
.LBB0_314:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_316 Depth 4
                                        #         Child Loop BB0_322 Depth 4
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	-80(%rbp), %rax
	je	.LBB0_330
# BB#315:                               #   in Loop: Header=BB0_314 Depth=3
	movq	-352(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_316
	.align	16, 0x90
.LBB0_317:                              #   in Loop: Header=BB0_316 Depth=4
	movq	-344(%rbp), %rax
.LBB0_316:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        #       Parent Loop BB0_314 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_317
# BB#318:                               #   in Loop: Header=BB0_314 Depth=3
	movq	-344(%rbp), %rax
	movq	%rax, -360(%rbp)
	movq	-344(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$9, %eax
	jne	.LBB0_324
# BB#319:                               #   in Loop: Header=BB0_314 Depth=3
	cmpl	$0, -92(%rbp)
	je	.LBB0_320
# BB#321:                               #   in Loop: Header=BB0_314 Depth=3
	movq	-344(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_322
.LBB0_320:                              #   in Loop: Header=BB0_314 Depth=3
	movq	-344(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_322
	.align	16, 0x90
.LBB0_323:                              #   in Loop: Header=BB0_322 Depth=4
	movq	-344(%rbp), %rax
.LBB0_322:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_313 Depth=2
                                        #       Parent Loop BB0_314 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	16(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_323
.LBB0_324:                              #   in Loop: Header=BB0_314 Depth=3
	movq	-344(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$20, %eax
	jl	.LBB0_329
# BB#325:                               #   in Loop: Header=BB0_314 Depth=3
	movq	-344(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$23, %eax
	jg	.LBB0_329
# BB#326:                               #   in Loop: Header=BB0_314 Depth=3
	movq	-360(%rbp), %rax
	cmpq	-344(%rbp), %rax
	je	.LBB0_328
# BB#327:                               #   in Loop: Header=BB0_314 Depth=3
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.20, %r9d
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_328
	.align	16, 0x90
.LBB0_330:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB0_357
# BB#331:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_333
# BB#332:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.21, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_333:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -272(%rbp)
	cmpq	-48(%rbp), %rax
	jne	.LBB0_335
# BB#334:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.22, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_335:                              #   in Loop: Header=BB0_1 Depth=1
	movl	$0, -364(%rbp)
	movq	-48(%rbp), %rax
	movq	144(%rax), %rax
	jmp	.LBB0_336
	.align	16, 0x90
.LBB0_354:                              #   in Loop: Header=BB0_336 Depth=2
	incl	-364(%rbp)
	movq	-80(%rbp), %rax
.LBB0_336:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_338 Depth 3
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	144(%rcx), %rax
	je	.LBB0_355
# BB#337:                               #   in Loop: Header=BB0_336 Depth=2
	movq	-80(%rbp), %rax
	jmp	.LBB0_338
	.align	16, 0x90
.LBB0_339:                              #   in Loop: Header=BB0_338 Depth=3
	movq	-88(%rbp), %rax
.LBB0_338:                              #   Parent Loop BB0_1 Depth=1
                                        #     Parent Loop BB0_336 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rax
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_339
# BB#340:                               #   in Loop: Header=BB0_336 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$16, %eax
	je	.LBB0_342
# BB#341:                               #   in Loop: Header=BB0_336 Depth=2
	movq	-88(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$15, %eax
	jne	.LBB0_343
.LBB0_342:                              #   in Loop: Header=BB0_336 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.23, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_343:                              #   in Loop: Header=BB0_336 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_345
# BB#344:                               #   in Loop: Header=BB0_336 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_348
	.align	16, 0x90
.LBB0_345:                              #   in Loop: Header=BB0_336 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_346
# BB#347:                               #   in Loop: Header=BB0_336 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_348
.LBB0_346:                              #   in Loop: Header=BB0_336 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
	.align	16, 0x90
.LBB0_348:                              #   in Loop: Header=BB0_336 Depth=2
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
	movq	-272(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_351
# BB#349:                               #   in Loop: Header=BB0_336 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_351
# BB#350:                               #   in Loop: Header=BB0_336 Depth=2
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
.LBB0_351:                              #   in Loop: Header=BB0_336 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-88(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_354
# BB#352:                               #   in Loop: Header=BB0_336 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_354
# BB#353:                               #   in Loop: Header=BB0_336 Depth=2
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
	jmp	.LBB0_354
.LBB0_355:                              #   in Loop: Header=BB0_1 Depth=1
	movl	-364(%rbp), %eax
	movl	%eax, %ecx
	shrl	$31, %ecx
	leal	(%rcx,%rax), %ecx
	andl	$-2, %ecx
	cmpl	%ecx, %eax
	je	.LBB0_357
# BB#356:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.24, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_357:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rdi
	callq	DetachGalley
	movq	-64(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$122, %eax
	je	.LBB0_359
# BB#358:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.25, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_359:                              #   in Loop: Header=BB0_1 Depth=1
	movb	$1, %al
	cmpl	$0, -236(%rbp)
	jne	.LBB0_361
# BB#360:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	shrl	$5, %eax
	andl	$1, %eax
.LBB0_361:                              #   in Loop: Header=BB0_1 Depth=1
	movzbl	%al, %eax
	movl	%eax, -236(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB0_362
	.align	16, 0x90
.LBB0_371:                              #   in Loop: Header=BB0_362 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_362:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB0_372
# BB#363:                               #   in Loop: Header=BB0_362 Depth=2
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_365
# BB#364:                               #   in Loop: Header=BB0_362 Depth=2
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
.LBB0_365:                              #   in Loop: Header=BB0_362 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_367
# BB#366:                               #   in Loop: Header=BB0_362 Depth=2
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
.LBB0_367:                              #   in Loop: Header=BB0_362 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_369
# BB#368:                               #   in Loop: Header=BB0_362 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_370
.LBB0_369:                              #   in Loop: Header=BB0_362 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_371
	.align	16, 0x90
.LBB0_370:                              #   in Loop: Header=BB0_362 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_371
	.align	16, 0x90
.LBB0_381:                              #   in Loop: Header=BB0_372 Depth=2
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB0_372:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_382
# BB#373:                               #   in Loop: Header=BB0_372 Depth=2
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_375
# BB#374:                               #   in Loop: Header=BB0_372 Depth=2
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
.LBB0_375:                              #   in Loop: Header=BB0_372 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_377
# BB#376:                               #   in Loop: Header=BB0_372 Depth=2
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
.LBB0_377:                              #   in Loop: Header=BB0_372 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_379
# BB#378:                               #   in Loop: Header=BB0_372 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_380
.LBB0_379:                              #   in Loop: Header=BB0_372 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_381
	.align	16, 0x90
.LBB0_380:                              #   in Loop: Header=BB0_372 Depth=2
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_381
	.align	16, 0x90
.LBB0_382:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_384
# BB#383:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB0_386
.LBB0_406:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_408:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	%rax, -392(%rbp)
	movq	$0, 88(%rax)
	movzbl	zz_lengths+8(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_410
# BB#409:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_413
.LBB0_410:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_411
# BB#412:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_413
.LBB0_411:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_413:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	%rax, -400(%rbp)
	movq	-384(%rbp), %rcx
	movw	34(%rcx), %cx
	movw	%cx, 34(%rax)
	movq	-384(%rbp), %rax
	movl	36(%rax), %eax
	movl	$1048575, %esi          # imm = 0xFFFFF
	andl	%esi, %eax
	movq	-400(%rbp), %rcx
	movl	36(%rcx), %edx
	movl	$-1048576, %edi         # imm = 0xFFFFFFFFFFF00000
	andl	%edi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-384(%rbp), %rax
	movl	36(%rax), %eax
	andl	%edi, %eax
	movq	-400(%rbp), %rcx
	movl	36(%rcx), %edx
	andl	%esi, %edx
	orl	%eax, %edx
	movl	%edx, 36(%rcx)
	movq	-384(%rbp), %rax
	movq	80(%rax), %rax
	movq	-400(%rbp), %rcx
	movq	%rax, 80(%rcx)
	movq	-400(%rbp), %rax
	movq	$0, 128(%rax)
	movq	-400(%rbp), %rax
	movq	$0, 112(%rax)
	movq	-400(%rbp), %rax
	movq	$0, 104(%rax)
	movq	-384(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	43(%rax), %eax
	movq	-400(%rbp), %rcx
	movzwl	42(%rcx), %edx
	andl	$32, %eax
	shll	$3, %eax
	andl	$65279, %edx            # imm = 0xFEFF
	orl	%eax, %edx
	movw	%dx, 42(%rcx)
	movq	-400(%rbp), %rax
	andw	$-3, 42(%rax)
	movq	-400(%rbp), %rax
	movq	$0, 96(%rax)
	movq	-400(%rbp), %rax
	orw	$128, 42(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_415
# BB#414:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_418
.LBB0_415:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_416
# BB#417:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_418
.LBB0_416:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_418:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_421
# BB#419:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_421
# BB#420:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_421:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_424
# BB#422:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_424
# BB#423:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_424:                              #   in Loop: Header=BB0_1 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_426
# BB#425:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_429
.LBB0_426:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_427
# BB#428:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_429
.LBB0_427:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_429:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_432
# BB#430:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_432
# BB#431:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_432:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-384(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_435
# BB#433:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_435
# BB#434:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_435:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rdi
	callq	SetTarget
	movq	-400(%rbp), %rax
	movb	$-127, 40(%rax)
	movq	-400(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	126(%rax), %eax
	btl	$5, %eax
	movl	$0, %eax
	jae	.LBB0_437
# BB#436:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rdi
	callq	BuildEnclose
.LBB0_437:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rcx
	movq	%rax, 136(%rcx)
	movq	-400(%rbp), %rax
	movq	$0, 152(%rax)
	movq	-400(%rbp), %rax
	movq	$0, 144(%rax)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_439
# BB#438:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_442
.LBB0_439:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_440
# BB#441:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_442
.LBB0_440:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_442:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	24(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_445
# BB#443:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_445
# BB#444:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_445:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-392(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_448
# BB#446:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_448
# BB#447:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_448:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-376(%rbp), %rax
	movq	8(%rax), %rax
	jmp	.LBB0_449
	.align	16, 0x90
.LBB0_450:                              #   in Loop: Header=BB0_449 Depth=2
	movq	-408(%rbp), %rax
.LBB0_449:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -408(%rbp)
	movq	-408(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_450
# BB#451:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-376(%rbp), %rax
	movq	(%rax), %rax
	jmp	.LBB0_452
	.align	16, 0x90
.LBB0_453:                              #   in Loop: Header=BB0_452 Depth=2
	movq	-416(%rbp), %rax
.LBB0_452:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rax
	movq	%rax, -416(%rbp)
	movq	-416(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_453
	.align	16, 0x90
.LBB0_454:                              #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	OldCrossDb(%rip), %rdi
	movq	-376(%rbp), %rax
	leaq	34(%rax), %r9
	leaq	40(%rax), %rcx
	leaq	36(%rax), %rdx
	leaq	48(%rax), %rax
	movq	%rax, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	leaq	-432(%rbp), %rsi
	leaq	-424(%rbp), %rdx
	leaq	-944(%rbp), %rcx
	leaq	-1456(%rbp), %r8
	callq	DbRetrieveNext
	movl	%eax, -428(%rbp)
	testl	%eax, %eax
	je	.LBB0_461
# BB#455:                               #   in Loop: Header=BB0_454 Depth=2
	cmpl	$0, -432(%rbp)
	je	.LBB0_456
# BB#457:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-424(%rbp), %rax
	movq	-376(%rbp), %rcx
	cmpq	56(%rcx), %rax
	je	.LBB0_459
# BB#458:                               #   in Loop: Header=BB0_454 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_460
	.align	16, 0x90
.LBB0_456:                              #   in Loop: Header=BB0_454 Depth=2
	xorl	%eax, %eax
	jmp	.LBB0_460
.LBB0_459:                              #   in Loop: Header=BB0_454 Depth=2
	movq	-408(%rbp), %rsi
	addq	$64, %rsi
	leaq	-944(%rbp), %rdi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
.LBB0_460:                              #   in Loop: Header=BB0_454 Depth=2
	movzbl	%al, %eax
	movl	%eax, -428(%rbp)
.LBB0_461:                              #   in Loop: Header=BB0_454 Depth=2
	cmpl	$0, -428(%rbp)
	je	.LBB0_502
# BB#462:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-416(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1456(%rbp), %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB0_502
# BB#463:                               #   in Loop: Header=BB0_454 Depth=2
	xorl	%edi, %edi
	callq	SwitchScope
	movq	-376(%rbp), %rax
	movq	40(%rax), %rsi
	movl	36(%rax), %edx
	movzwl	34(%rax), %edi
	callq	ReadFromFile
	movq	%rax, -384(%rbp)
	xorl	%edi, %edi
	callq	UnSwitchScope
	cmpq	$0, -384(%rbp)
	jne	.LBB0_465
# BB#464:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-88(%rbp), %rbx
	addq	$32, %rbx
	movq	-376(%rbp), %rax
	movzwl	34(%rax), %edi
	callq	FileName
	movq	%rax, %r9
	movl	$20, %edi
	movl	$2, %esi
	movl	$.L.str.26, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rbx, %r8
	callq	Error
.LBB0_465:                              #   in Loop: Header=BB0_454 Depth=2
	movq	-384(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$2, %eax
	je	.LBB0_467
# BB#466:                               #   in Loop: Header=BB0_454 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.27, %r9d
	xorl	%eax, %eax
	callq	Error
.LBB0_467:                              #   in Loop: Header=BB0_454 Depth=2
	movq	-384(%rbp), %rax
	movq	80(%rax), %rax
	movzbl	126(%rax), %eax
	btl	$3, %eax
	jae	.LBB0_468
# BB#469:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	je	.LBB0_491
# BB#470:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-400(%rbp), %rax
	movq	%rax, -1464(%rbp)
	movzbl	zz_lengths+17(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_472
# BB#471:                               #   in Loop: Header=BB0_454 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_475
.LBB0_468:                              #   in Loop: Header=BB0_454 Depth=2
	movq	-384(%rbp), %rdi
	callq	DisposeObject
	jmp	.LBB0_502
.LBB0_472:                              #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_473
# BB#474:                               #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_475
.LBB0_473:                              #   in Loop: Header=BB0_454 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_475:                              #   in Loop: Header=BB0_454 Depth=2
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
	movq	%rax, -400(%rbp)
	movq	-1464(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB0_477
# BB#476:                               #   in Loop: Header=BB0_454 Depth=2
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
.LBB0_477:                              #   in Loop: Header=BB0_454 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_480
# BB#478:                               #   in Loop: Header=BB0_454 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_480
# BB#479:                               #   in Loop: Header=BB0_454 Depth=2
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
.LBB0_480:                              #   in Loop: Header=BB0_454 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_482
# BB#481:                               #   in Loop: Header=BB0_454 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_485
.LBB0_482:                              #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_483
# BB#484:                               #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_485
.LBB0_483:                              #   in Loop: Header=BB0_454 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_485:                              #   in Loop: Header=BB0_454 Depth=2
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
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_488
# BB#486:                               #   in Loop: Header=BB0_454 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_488
# BB#487:                               #   in Loop: Header=BB0_454 Depth=2
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
.LBB0_488:                              #   in Loop: Header=BB0_454 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-1464(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_491
# BB#489:                               #   in Loop: Header=BB0_454 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_491
# BB#490:                               #   in Loop: Header=BB0_454 Depth=2
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
.LBB0_491:                              #   in Loop: Header=BB0_454 Depth=2
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_493
# BB#492:                               #   in Loop: Header=BB0_454 Depth=2
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_496
.LBB0_493:                              #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_494
# BB#495:                               #   in Loop: Header=BB0_454 Depth=2
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_496
.LBB0_494:                              #   in Loop: Header=BB0_454 Depth=2
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_496:                              #   in Loop: Header=BB0_454 Depth=2
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
	movq	-400(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_499
# BB#497:                               #   in Loop: Header=BB0_454 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_499
# BB#498:                               #   in Loop: Header=BB0_454 Depth=2
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
.LBB0_499:                              #   in Loop: Header=BB0_454 Depth=2
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-384(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_502
# BB#500:                               #   in Loop: Header=BB0_454 Depth=2
	cmpq	$0, zz_res(%rip)
	je	.LBB0_502
# BB#501:                               #   in Loop: Header=BB0_454 Depth=2
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
	.align	16, 0x90
.LBB0_502:                              #   in Loop: Header=BB0_454 Depth=2
	cmpl	$0, -428(%rbp)
	je	.LBB0_503
# BB#504:                               #   in Loop: Header=BB0_454 Depth=2
	movq	-416(%rbp), %rsi
	addq	$64, %rsi
	leaq	-1456(%rbp), %rdi
	callq	strcmp
	testl	%eax, %eax
	sete	%al
	jmp	.LBB0_505
	.align	16, 0x90
.LBB0_503:                              #   in Loop: Header=BB0_454 Depth=2
	xorl	%eax, %eax
.LBB0_505:                              #   in Loop: Header=BB0_454 Depth=2
	testb	%al, %al
	jne	.LBB0_454
# BB#506:                               #   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -428(%rbp)
	je	.LBB0_549
# BB#507:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-408(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_509
# BB#508:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_509:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_511
# BB#510:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_511:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_513
# BB#512:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_514
.LBB0_513:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_515
.LBB0_549:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-376(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_551
# BB#550:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_551:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_553
# BB#552:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_553:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_555
# BB#554:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_556
.LBB0_555:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_557
.LBB0_514:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_515:                              #   in Loop: Header=BB0_1 Depth=1
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
	jne	.LBB0_517
# BB#516:                               #   in Loop: Header=BB0_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_517:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-416(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	movl	$0, %eax
	je	.LBB0_519
# BB#518:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_519:                              #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, xx_tmp(%rip)
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB0_521
# BB#520:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_521:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_523
# BB#522:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_524
.LBB0_523:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_525
.LBB0_524:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_525:                              #   in Loop: Header=BB0_1 Depth=1
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
	jne	.LBB0_527
# BB#526:                               #   in Loop: Header=BB0_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_527:                              #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	leaq	-944(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -408(%rbp)
	movq	no_fpos(%rip), %rdx
	movl	$11, %edi
	leaq	-1456(%rbp), %rsi
	callq	MakeWord
	movq	%rax, -416(%rbp)
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_529
# BB#528:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_532
.LBB0_529:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_530
# BB#531:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_532
.LBB0_530:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_532:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_535
# BB#533:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_535
# BB#534:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_535:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-408(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_538
# BB#536:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_538
# BB#537:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_538:                              #   in Loop: Header=BB0_1 Depth=1
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	testb	%r13b, %r13b
	jne	.LBB0_540
# BB#539:                               #   in Loop: Header=BB0_1 Depth=1
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_543
.LBB0_540:                              #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_541
# BB#542:                               #   in Loop: Header=BB0_1 Depth=1
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_543
.LBB0_541:                              #   in Loop: Header=BB0_1 Depth=1
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_543:                              #   in Loop: Header=BB0_1 Depth=1
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
	movq	-376(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_546
# BB#544:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_546
# BB#545:                               #   in Loop: Header=BB0_1 Depth=1
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
.LBB0_546:                              #   in Loop: Header=BB0_1 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-416(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_565
# BB#547:                               #   in Loop: Header=BB0_1 Depth=1
	cmpq	$0, zz_res(%rip)
	je	.LBB0_565
# BB#548:                               #   in Loop: Header=BB0_1 Depth=1
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
	jmp	.LBB0_565
.LBB0_556:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_557:                              #   in Loop: Header=BB0_1 Depth=1
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
	jne	.LBB0_559
# BB#558:                               #   in Loop: Header=BB0_1 Depth=1
	movq	xx_tmp(%rip), %rdi
	callq	DisposeObject
.LBB0_559:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	cmpq	%rax, 8(%rax)
	jne	.LBB0_565
# BB#560:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB0_562
# BB#561:                               #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB0_563
.LBB0_562:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB0_564
.LBB0_149:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_303
# BB#150:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movq	104(%rax), %rdi
	callq	DisposeObject
	movq	-48(%rbp), %rax
	movq	$0, 104(%rax)
	jmp	.LBB0_303
.LBB0_563:                              #   in Loop: Header=BB0_1 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB0_564:                              #   in Loop: Header=BB0_1 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	movq	-48(%rbp), %rax
	movq	$0, 96(%rax)
.LBB0_565:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rax
	movzbl	32(%rax), %eax
	cmpl	$17, %eax
	jne	.LBB0_567
# BB#566:                               #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rdi
	callq	ConvertGalleyList
	movq	%rax, -400(%rbp)
.LBB0_567:                              #   in Loop: Header=BB0_1 Depth=1
	movq	-400(%rbp), %rdi
	callq	FlushGalley
	jmp	.LBB0_1
.LBB0_276:
	cmpq	$0, -72(%rbp)
	je	.LBB0_278
# BB#277:
	movq	-72(%rbp), %rdi
	callq	DisposeObject
.LBB0_278:
	movq	-48(%rbp), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB0_281
# BB#279:
	movq	-48(%rbp), %rdi
	movq	-64(%rbp), %rdx
	movl	$1, %ebx
	movl	$1, %ecx
	movq	%rdi, %rsi
	callq	Promote
	cmpl	$0, -160(%rbp)
	je	.LBB0_281
# BB#280:
	movq	-152(%rbp), %rdi
	movl	-164(%rbp), %esi
	movl	-168(%rbp), %edx
	movl	-92(%rbp), %ecx
	callq	AdjustSize
	movq	-152(%rbp), %rdi
	movl	-300(%rbp), %esi
	movl	-304(%rbp), %edx
	subl	-92(%rbp), %ebx
	movl	%ebx, %ecx
	callq	AdjustSize
.LBB0_281:
	movq	-48(%rbp), %rax
	cmpq	$0, 104(%rax)
	je	.LBB0_301
# BB#282:
	movzbl	zz_lengths+26(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_284
# BB#283:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_287
.LBB0_284:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_285
# BB#286:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_287
.LBB0_285:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_287:
	movq	zz_hold(%rip), %rax
	movb	$26, 32(%rax)
	movq	zz_hold(%rip), %rax
	movq	%rax, 24(%rax)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 16(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, 8(%rcx)
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	%rax, -336(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB0_289
# BB#288:
	movl	-112(%rbp), %eax
	movq	-336(%rbp), %rcx
	movl	%eax, 64(%rcx)
	movl	-108(%rbp), %eax
	movq	-336(%rbp), %rcx
	movl	%eax, 68(%rcx)
	movl	-104(%rbp), %eax
	movq	-336(%rbp), %rcx
	movl	%eax, 72(%rcx)
	jmp	.LBB0_290
.LBB0_289:
	movq	-336(%rbp), %rax
	movl	$8388607, 64(%rax)      # imm = 0x7FFFFF
	movq	-336(%rbp), %rax
	movl	$8388607, 68(%rax)      # imm = 0x7FFFFF
	movq	-336(%rbp), %rax
	movl	$8388607, 72(%rax)      # imm = 0x7FFFFF
.LBB0_290:
	movzbl	zz_lengths(%rip), %eax
	movl	%eax, zz_size(%rip)
	movb	$1, %al
	testb	%al, %al
	jne	.LBB0_292
# BB#291:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	$.L.str.9, %edx
	movl	$1, %ecx
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_295
.LBB0_292:
	movslq	zz_size(%rip), %rax
	cmpq	$0, zz_free(,%rax,8)
	je	.LBB0_293
# BB#294:
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	%rax, zz_hold(%rip)
	movq	(%rax), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
	jmp	.LBB0_295
.LBB0_293:
	movl	zz_size(%rip), %edi
	movq	no_fpos(%rip), %rsi
	callq	GetMemory
	movq	%rax, zz_hold(%rip)
.LBB0_295:
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
	movq	112(%rax), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_298
# BB#296:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_298
# BB#297:
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
.LBB0_298:
	movq	xx_link(%rip), %rax
	movq	%rax, zz_res(%rip)
	movq	-336(%rbp), %rax
	movq	%rax, zz_hold(%rip)
	testq	%rax, %rax
	je	.LBB0_301
# BB#299:
	cmpq	$0, zz_res(%rip)
	je	.LBB0_301
# BB#300:
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
.LBB0_301:
	movq	-48(%rbp), %rdi
	callq	DetachGalley
	movq	-48(%rbp), %rdi
	movl	$1, %esi
	callq	KillGalley
	movl	-236(%rbp), %edi
	movq	-64(%rbp), %rsi
	movl	$1, %edx
.LBB0_698:
	callq	ParentFlush
.LBB0_699:
	addq	$2072, %rsp             # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_696:
	movq	-88(%rbp), %rax
	orw	$32, 42(%rax)
.LBB0_697:
	movl	-236(%rbp), %edi
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	jmp	.LBB0_698
.LBB0_18:
	cmpq	$0, -72(%rbp)
	je	.LBB0_699
# BB#19:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.3, %r9d
	jmp	.LBB0_20
.LBB0_21:
	movl	-236(%rbp), %edi
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	ParentFlush
	cmpq	$0, -72(%rbp)
	je	.LBB0_699
# BB#22:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.4, %r9d
	jmp	.LBB0_20
.LBB0_23:
	movl	-236(%rbp), %edi
	movq	-64(%rbp), %rsi
	xorl	%edx, %edx
	callq	ParentFlush
	cmpq	$0, -72(%rbp)
	je	.LBB0_699
# BB#24:
	movq	no_fpos(%rip), %r8
	movl	$1, %edi
	movl	$2, %esi
	movl	$.L.str, %edx
	xorl	%ecx, %ecx
	movl	$.L.str.5, %r9d
.LBB0_20:
	xorl	%eax, %eax
	callq	Error
	jmp	.LBB0_699
.LBB0_27:
	movq	-64(%rbp), %rax
	movq	80(%rax), %rax
	movq	80(%rax), %rax
	movq	-48(%rbp), %rcx
	cmpq	88(%rcx), %rax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, -288(%rbp)
	movq	-48(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$12, %eax
	jae	.LBB0_35
# BB#28:
	movq	-64(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB0_29
.LBB0_30:                               #   in Loop: Header=BB0_29 Depth=1
	movq	-280(%rbp), %rax
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB0_30
# BB#31:
	movq	-64(%rbp), %rax
	testb	$1, 42(%rax)
	jne	.LBB0_34
# BB#32:
	cmpl	$0, -288(%rbp)
	je	.LBB0_34
# BB#33:
	movq	-64(%rbp), %rax
	orw	$1, 42(%rax)
	movl	$1, -236(%rbp)
.LBB0_34:
	movq	-280(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-48(%rbp), %rax
	movq	88(%rax), %r8
	leaq	-72(%rbp), %rdx
	movq	%rsi, %rcx
	callq	FreeGalley
	jmp	.LBB0_38
.LBB0_35:
	movq	-64(%rbp), %rax
	movzwl	42(%rax), %eax
	btl	$5, %eax
	jae	.LBB0_38
# BB#36:
	cmpl	$0, -288(%rbp)
	je	.LBB0_38
# BB#37:
	movl	$1, -236(%rbp)
.LBB0_38:
	movq	-48(%rbp), %rdi
	callq	DetachGalley
	movq	-48(%rbp), %rdi
	movl	$1, %esi
	callq	KillGalley
	cmpq	$0, -72(%rbp)
	je	.LBB0_40
# BB#39:
	movq	-72(%rbp), %rdi
	xorl	%esi, %esi
	callq	FlushInners
	jmp	.LBB0_699
.LBB0_40:
	movl	-236(%rbp), %edi
	movq	-64(%rbp), %rsi
	movl	-288(%rbp), %edx
	jmp	.LBB0_698
.Lfunc_end0:
	.size	FlushGalley, .Lfunc_end0-FlushGalley
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI0_0:
	.quad	.LBB0_18
	.quad	.LBB0_21
	.quad	.LBB0_23
	.quad	.LBB0_25
	.quad	.LBB0_27
	.quad	.LBB0_41
.LJTI0_1:
	.quad	.LBB0_75
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_151
	.quad	.LBB0_151
	.quad	.LBB0_151
	.quad	.LBB0_151
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_152
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_274
	.quad	.LBB0_83
	.quad	.LBB0_388
	.quad	.LBB0_388
	.quad	.LBB0_274
	.quad	.LBB0_83
	.quad	.LBB0_101
	.quad	.LBB0_274
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82
	.quad	.LBB0_82

	.text
	.align	16, 0x90
	.type	ParentFlush,@function
ParentFlush:                            # @ParentFlush
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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB1_32
# BB#1:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_2
	.align	16, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	movq	-32(%rbp), %rax
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpb	$0, 32(%rax)
	je	.LBB1_3
# BB#4:
	cmpl	$0, -20(%rbp)
	je	.LBB1_31
# BB#5:
	movq	-16(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB1_6
	.align	16, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_6 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB1_16
# BB#7:                                 #   in Loop: Header=BB1_6 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_9
# BB#8:                                 #   in Loop: Header=BB1_6 Depth=1
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
.LBB1_9:                                #   in Loop: Header=BB1_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_11
# BB#10:                                #   in Loop: Header=BB1_6 Depth=1
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
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_13
# BB#12:                                #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_14
.LBB1_13:                               #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_6 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_15
	.align	16, 0x90
.LBB1_25:                               #   in Loop: Header=BB1_16 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_16:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_26
# BB#17:                                #   in Loop: Header=BB1_16 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_19
# BB#18:                                #   in Loop: Header=BB1_16 Depth=1
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
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_21
# BB#20:                                #   in Loop: Header=BB1_16 Depth=1
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
.LBB1_21:                               #   in Loop: Header=BB1_16 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_23
# BB#22:                                #   in Loop: Header=BB1_16 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_24
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_25
	.align	16, 0x90
.LBB1_24:                               #   in Loop: Header=BB1_16 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_25
.LBB1_26:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_28
# BB#27:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_29
.LBB1_28:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_30
.LBB1_32:
	cmpl	$0, -20(%rbp)
	je	.LBB1_59
# BB#33:
	movq	-16(%rbp), %rax
	movq	%rax, xx_hold(%rip)
	jmp	.LBB1_34
	.align	16, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_34 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 24(%rax)
	je	.LBB1_44
# BB#35:                                #   in Loop: Header=BB1_34 Depth=1
	movq	xx_hold(%rip), %rax
	movq	24(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_37
# BB#36:                                #   in Loop: Header=BB1_34 Depth=1
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
.LBB1_37:                               #   in Loop: Header=BB1_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_39
# BB#38:                                #   in Loop: Header=BB1_34 Depth=1
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
.LBB1_39:                               #   in Loop: Header=BB1_34 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_41
# BB#40:                                #   in Loop: Header=BB1_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_42
.LBB1_41:                               #   in Loop: Header=BB1_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_42:                               #   in Loop: Header=BB1_34 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_43
	.align	16, 0x90
.LBB1_53:                               #   in Loop: Header=BB1_44 Depth=1
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_44:                               # =>This Inner Loop Header: Depth=1
	movq	xx_hold(%rip), %rax
	cmpq	%rax, 8(%rax)
	je	.LBB1_54
# BB#45:                                #   in Loop: Header=BB1_44 Depth=1
	movq	xx_hold(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, xx_link(%rip)
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 24(%rax)
	je	.LBB1_47
# BB#46:                                #   in Loop: Header=BB1_44 Depth=1
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
.LBB1_47:                               #   in Loop: Header=BB1_44 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	cmpq	%rax, 8(%rax)
	je	.LBB1_49
# BB#48:                                #   in Loop: Header=BB1_44 Depth=1
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
.LBB1_49:                               #   in Loop: Header=BB1_44 Depth=1
	movq	xx_link(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_51
# BB#50:                                #   in Loop: Header=BB1_44 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_52
.LBB1_51:                               #   in Loop: Header=BB1_44 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_53
	.align	16, 0x90
.LBB1_52:                               #   in Loop: Header=BB1_44 Depth=1
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
	jmp	.LBB1_53
.LBB1_54:
	movq	xx_hold(%rip), %rax
	movq	%rax, zz_hold(%rip)
	movzbl	32(%rax), %eax
	cmpl	$11, %eax
	je	.LBB1_56
# BB#55:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	cmpl	$12, %eax
	jne	.LBB1_57
.LBB1_56:
	movq	zz_hold(%rip), %rax
	movzbl	33(%rax), %eax
	jmp	.LBB1_58
.LBB1_29:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_30:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_31:
	movq	-32(%rbp), %rdi
	callq	FlushGalley
	jmp	.LBB1_59
.LBB1_57:
	movq	zz_hold(%rip), %rax
	movzbl	32(%rax), %eax
	movzbl	zz_lengths(%rax), %eax
.LBB1_58:
	movl	%eax, zz_size(%rip)
	movslq	zz_size(%rip), %rax
	movq	zz_free(,%rax,8), %rax
	movq	zz_hold(%rip), %rcx
	movq	%rax, (%rcx)
	movq	zz_hold(%rip), %rax
	movslq	zz_size(%rip), %rcx
	movq	%rax, zz_free(,%rcx,8)
.LBB1_59:
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ParentFlush, .Lfunc_end1-ParentFlush
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assert failed in %s"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"FlushGalley: type(hd) != HEAD!"
	.size	.L.str.1, 31

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"FlushGalley: resume found no parent to hd!"
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"FlushGalley/ATTACH_KILLED: inners!=nilobj!"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"FlushGalley/ATTACH_INPUT: inners!=nilobj!"
	.size	.L.str.4, 42

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"FlushGalley/ATTACH_NOTARG: inners!=nilobj!"
	.size	.L.str.5, 43

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"FlushGalley: attach_status"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"assert failed in %s %s"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"FlushGalley: dest_index"
	.size	.L.str.8, 24

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"word is too long"
	.size	.L.str.9, 17

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Flush: PRECEDES!"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"FlushG: UpDims!"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"FlushGalley: dest != VCAT or ACAT!"
	.size	.L.str.12, 35

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"FlushGalley: prec_gap == nilobj && !is_indefinite(type(y))!"
	.size	.L.str.13, 60

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"FlushGalley: succ_gap != nilobj!"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"FlushGalley: dest_side != FWD || !is_indefinite(type(y))!"
	.size	.L.str.15, 58

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"component too wide for available space"
	.size	.L.str.16, 39

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"FlushGalley:  tgp!"
	.size	.L.str.17, 19

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"FlushGalley:"
	.size	.L.str.18, 13

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"FlushGalley: reject print!"
	.size	.L.str.19, 27

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"FlushGalley: header under SPLIT!"
	.size	.L.str.20, 33

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"FlushGalley/REJECT: headers!"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"FlushGalley/REJECT: first_link!"
	.size	.L.str.22, 32

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"FlushGalley/REJECT THR!"
	.size	.L.str.23, 24

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"FlushGalley/REJECT: headers_count!"
	.size	.L.str.24, 35

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"FlushGalley/REJECT: dest_index!"
	.size	.L.str.25, 32

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"error in database file %s"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"AttachG: db CLOSURE!"
	.size	.L.str.27, 21

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"FlushGalley: cr is_word(type(tag))!"
	.size	.L.str.28, 36


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
