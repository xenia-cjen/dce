	.text
	.file	"z26.opt"
	.globl	SetLengthDim
	.align	16, 0x90
	.type	SetLengthDim,@function
SetLengthDim:                           # @SetLengthDim
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
	movl	%edi, -4(%rbp)
	movl	%edi, length_dim(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	SetLengthDim, .Lfunc_end0-SetLengthDim
	.cfi_endproc

	.globl	EchoLength
	.align	16, 0x90
	.type	EchoLength,@function
EchoLength:                             # @EchoLength
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
	movl	%edi, -4(%rbp)
	movl	EchoLength.i(%rip), %eax
	leal	1(%rax), %ecx
	sarl	$31, %ecx
	shrl	$29, %ecx
	leal	1(%rax,%rcx), %ecx
	andl	$-8, %ecx
	negl	%ecx
	leal	1(%rax,%rcx), %eax
	movl	%eax, EchoLength.i(%rip)
	cmpl	$8388607, -4(%rbp)      # imm = 0x7FFFFF
	jne	.LBB1_2
# BB#1:
	movslq	EchoLength.i(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	EchoLength.buff(,%rax,4), %rdi
	movl	$.L.str, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	callq	sprintf
	jmp	.LBB1_3
.LBB1_2:
	movq	BackEnd(%rip), %rax
	movslq	EchoLength.i(%rip), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	EchoLength.buff(,%rcx,4), %rdi
	movl	-4(%rbp), %esi
	movl	$1, %edx
	callq	*56(%rax)
.LBB1_3:
	movslq	EchoLength.i(%rip), %rax
	leaq	(%rax,%rax,4), %rax
	leaq	EchoLength.buff(,%rax,4), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	EchoLength, .Lfunc_end1-EchoLength
	.cfi_endproc

	.globl	Image
	.align	16, 0x90
	.type	Image,@function
Image:                                  # @Image
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
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpq	$160, %rax
	ja	.LBB2_160
# BB#1:
	jmpq	*.LJTI2_0(,%rax,8)
.LBB2_2:
	movq	$.L.str.2, -8(%rbp)
	jmp	.LBB2_161
.LBB2_160:
	movl	-12(%rbp), %edx
	movl	$Image.b, %edi
	movl	$.L.str.160, %esi
	xorl	%eax, %eax
	callq	sprintf
	movq	$Image.b, -8(%rbp)
.LBB2_161:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.LBB2_16:
	movq	$.L.str.16, -8(%rbp)
	jmp	.LBB2_161
.LBB2_17:
	movq	$.L.str.17, -8(%rbp)
	jmp	.LBB2_161
.LBB2_18:
	movq	$.L.str.18, -8(%rbp)
	jmp	.LBB2_161
.LBB2_19:
	movq	$.L.str.19, -8(%rbp)
	jmp	.LBB2_161
.LBB2_20:
	movq	$.L.str.20, -8(%rbp)
	jmp	.LBB2_161
.LBB2_21:
	movq	$.L.str.21, -8(%rbp)
	jmp	.LBB2_161
.LBB2_22:
	movq	$.L.str.22, -8(%rbp)
	jmp	.LBB2_161
.LBB2_23:
	movq	$.L.str.23, -8(%rbp)
	jmp	.LBB2_161
.LBB2_24:
	movq	$.L.str.24, -8(%rbp)
	jmp	.LBB2_161
.LBB2_25:
	movq	$.L.str.25, -8(%rbp)
	jmp	.LBB2_161
.LBB2_26:
	movq	$.L.str.26, -8(%rbp)
	jmp	.LBB2_161
.LBB2_27:
	movq	$.L.str.27, -8(%rbp)
	jmp	.LBB2_161
.LBB2_28:
	movq	$.L.str.28, -8(%rbp)
	jmp	.LBB2_161
.LBB2_29:
	movq	$.L.str.29, -8(%rbp)
	jmp	.LBB2_161
.LBB2_48:
	movq	$.L.str.48, -8(%rbp)
	jmp	.LBB2_161
.LBB2_49:
	movq	$.L.str.49, -8(%rbp)
	jmp	.LBB2_161
.LBB2_30:
	movq	$.L.str.30, -8(%rbp)
	jmp	.LBB2_161
.LBB2_31:
	movq	$.L.str.31, -8(%rbp)
	jmp	.LBB2_161
.LBB2_32:
	movq	$.L.str.32, -8(%rbp)
	jmp	.LBB2_161
.LBB2_33:
	movq	$.L.str.33, -8(%rbp)
	jmp	.LBB2_161
.LBB2_34:
	movq	$.L.str.34, -8(%rbp)
	jmp	.LBB2_161
.LBB2_35:
	movq	$.L.str.35, -8(%rbp)
	jmp	.LBB2_161
.LBB2_37:
	movq	$.L.str.37, -8(%rbp)
	jmp	.LBB2_161
.LBB2_38:
	movq	$.L.str.38, -8(%rbp)
	jmp	.LBB2_161
.LBB2_36:
	movq	$.L.str.36, -8(%rbp)
	jmp	.LBB2_161
.LBB2_39:
	movq	$.L.str.39, -8(%rbp)
	jmp	.LBB2_161
.LBB2_40:
	movq	$.L.str.40, -8(%rbp)
	jmp	.LBB2_161
.LBB2_43:
	movq	$.L.str.43, -8(%rbp)
	jmp	.LBB2_161
.LBB2_44:
	movq	$.L.str.44, -8(%rbp)
	jmp	.LBB2_161
.LBB2_45:
	movq	$.L.str.45, -8(%rbp)
	jmp	.LBB2_161
.LBB2_46:
	movq	$.L.str.46, -8(%rbp)
	jmp	.LBB2_161
.LBB2_47:
	movq	$.L.str.47, -8(%rbp)
	jmp	.LBB2_161
.LBB2_52:
	movq	$.L.str.52, -8(%rbp)
	jmp	.LBB2_161
.LBB2_51:
	movq	$.L.str.51, -8(%rbp)
	jmp	.LBB2_161
.LBB2_50:
	movq	$.L.str.50, -8(%rbp)
	jmp	.LBB2_161
.LBB2_53:
	movq	$.L.str.53, -8(%rbp)
	jmp	.LBB2_161
.LBB2_54:
	movq	$.L.str.54, -8(%rbp)
	jmp	.LBB2_161
.LBB2_55:
	movq	$.L.str.55, -8(%rbp)
	jmp	.LBB2_161
.LBB2_56:
	movq	$.L.str.56, -8(%rbp)
	jmp	.LBB2_161
.LBB2_57:
	movq	$.L.str.57, -8(%rbp)
	jmp	.LBB2_161
.LBB2_58:
	movq	$.L.str.58, -8(%rbp)
	jmp	.LBB2_161
.LBB2_59:
	movq	$.L.str.59, -8(%rbp)
	jmp	.LBB2_161
.LBB2_60:
	movq	$.L.str.60, -8(%rbp)
	jmp	.LBB2_161
.LBB2_61:
	movq	$.L.str.61, -8(%rbp)
	jmp	.LBB2_161
.LBB2_62:
	movq	$.L.str.62, -8(%rbp)
	jmp	.LBB2_161
.LBB2_63:
	movq	$.L.str.63, -8(%rbp)
	jmp	.LBB2_161
.LBB2_64:
	movq	$.L.str.64, -8(%rbp)
	jmp	.LBB2_161
.LBB2_65:
	movq	$.L.str.65, -8(%rbp)
	jmp	.LBB2_161
.LBB2_66:
	movq	$.L.str.66, -8(%rbp)
	jmp	.LBB2_161
.LBB2_67:
	movq	$.L.str.67, -8(%rbp)
	jmp	.LBB2_161
.LBB2_68:
	movq	$.L.str.68, -8(%rbp)
	jmp	.LBB2_161
.LBB2_69:
	movq	$.L.str.69, -8(%rbp)
	jmp	.LBB2_161
.LBB2_70:
	movq	$.L.str.70, -8(%rbp)
	jmp	.LBB2_161
.LBB2_71:
	movq	$.L.str.71, -8(%rbp)
	jmp	.LBB2_161
.LBB2_72:
	movq	$.L.str.72, -8(%rbp)
	jmp	.LBB2_161
.LBB2_73:
	movq	$.L.str.73, -8(%rbp)
	jmp	.LBB2_161
.LBB2_74:
	movq	$.L.str.74, -8(%rbp)
	jmp	.LBB2_161
.LBB2_75:
	movq	$.L.str.75, -8(%rbp)
	jmp	.LBB2_161
.LBB2_76:
	movq	$.L.str.76, -8(%rbp)
	jmp	.LBB2_161
.LBB2_77:
	movq	$.L.str.77, -8(%rbp)
	jmp	.LBB2_161
.LBB2_78:
	movq	$.L.str.78, -8(%rbp)
	jmp	.LBB2_161
.LBB2_79:
	movq	$.L.str.79, -8(%rbp)
	jmp	.LBB2_161
.LBB2_80:
	movq	$.L.str.80, -8(%rbp)
	jmp	.LBB2_161
.LBB2_81:
	movq	$.L.str.81, -8(%rbp)
	jmp	.LBB2_161
.LBB2_82:
	movq	$.L.str.82, -8(%rbp)
	jmp	.LBB2_161
.LBB2_83:
	movq	$.L.str.83, -8(%rbp)
	jmp	.LBB2_161
.LBB2_84:
	movq	$.L.str.84, -8(%rbp)
	jmp	.LBB2_161
.LBB2_85:
	movq	$.L.str.85, -8(%rbp)
	jmp	.LBB2_161
.LBB2_86:
	movq	$.L.str.86, -8(%rbp)
	jmp	.LBB2_161
.LBB2_87:
	movq	$.L.str.87, -8(%rbp)
	jmp	.LBB2_161
.LBB2_88:
	movq	$.L.str.88, -8(%rbp)
	jmp	.LBB2_161
.LBB2_89:
	movq	$.L.str.89, -8(%rbp)
	jmp	.LBB2_161
.LBB2_90:
	movq	$.L.str.90, -8(%rbp)
	jmp	.LBB2_161
.LBB2_91:
	movq	$.L.str.91, -8(%rbp)
	jmp	.LBB2_161
.LBB2_92:
	movq	$.L.str.92, -8(%rbp)
	jmp	.LBB2_161
.LBB2_93:
	movq	$.L.str.93, -8(%rbp)
	jmp	.LBB2_161
.LBB2_94:
	movq	$.L.str.94, -8(%rbp)
	jmp	.LBB2_161
.LBB2_95:
	movq	$.L.str.95, -8(%rbp)
	jmp	.LBB2_161
.LBB2_96:
	movq	$.L.str.96, -8(%rbp)
	jmp	.LBB2_161
.LBB2_97:
	movq	$.L.str.97, -8(%rbp)
	jmp	.LBB2_161
.LBB2_101:
	movq	$.L.str.101, -8(%rbp)
	jmp	.LBB2_161
.LBB2_102:
	movq	$.L.str.102, -8(%rbp)
	jmp	.LBB2_161
.LBB2_103:
	movq	$.L.str.103, -8(%rbp)
	jmp	.LBB2_161
.LBB2_104:
	movq	$.L.str.104, -8(%rbp)
	jmp	.LBB2_161
.LBB2_106:
	movq	$.L.str.106, -8(%rbp)
	jmp	.LBB2_161
.LBB2_107:
	movq	$.L.str.107, -8(%rbp)
	jmp	.LBB2_161
.LBB2_108:
	movq	$.L.str.108, -8(%rbp)
	jmp	.LBB2_161
.LBB2_109:
	movq	$.L.str.109, -8(%rbp)
	jmp	.LBB2_161
.LBB2_110:
	movq	$.L.str.110, -8(%rbp)
	jmp	.LBB2_161
.LBB2_111:
	movq	$.L.str.111, -8(%rbp)
	jmp	.LBB2_161
.LBB2_112:
	movq	$.L.str.112, -8(%rbp)
	jmp	.LBB2_161
.LBB2_105:
	movq	$.L.str.105, -8(%rbp)
	jmp	.LBB2_161
.LBB2_113:
	movq	$.L.str.113, -8(%rbp)
	jmp	.LBB2_161
.LBB2_114:
	movq	$.L.str.114, -8(%rbp)
	jmp	.LBB2_161
.LBB2_115:
	movq	$.L.str.115, -8(%rbp)
	jmp	.LBB2_161
.LBB2_116:
	movq	$.L.str.116, -8(%rbp)
	jmp	.LBB2_161
.LBB2_117:
	movq	$.L.str.117, -8(%rbp)
	jmp	.LBB2_161
.LBB2_118:
	movq	$.L.str.118, -8(%rbp)
	jmp	.LBB2_161
.LBB2_119:
	movq	$.L.str.119, -8(%rbp)
	jmp	.LBB2_161
.LBB2_120:
	movq	$.L.str.120, -8(%rbp)
	jmp	.LBB2_161
.LBB2_121:
	movq	$.L.str.121, -8(%rbp)
	jmp	.LBB2_161
.LBB2_122:
	movq	$.L.str.122, -8(%rbp)
	jmp	.LBB2_161
.LBB2_123:
	movq	$.L.str.123, -8(%rbp)
	jmp	.LBB2_161
.LBB2_124:
	movq	$.L.str.124, -8(%rbp)
	jmp	.LBB2_161
.LBB2_125:
	movq	$.L.str.125, -8(%rbp)
	jmp	.LBB2_161
.LBB2_126:
	movq	$.L.str.126, -8(%rbp)
	jmp	.LBB2_161
.LBB2_127:
	movq	$.L.str.127, -8(%rbp)
	jmp	.LBB2_161
.LBB2_128:
	movq	$.L.str.128, -8(%rbp)
	jmp	.LBB2_161
.LBB2_129:
	movq	$.L.str.129, -8(%rbp)
	jmp	.LBB2_161
.LBB2_130:
	movq	$.L.str.130, -8(%rbp)
	jmp	.LBB2_161
.LBB2_131:
	movq	$.L.str.131, -8(%rbp)
	jmp	.LBB2_161
.LBB2_132:
	movq	$.L.str.132, -8(%rbp)
	jmp	.LBB2_161
.LBB2_133:
	movq	$.L.str.133, -8(%rbp)
	jmp	.LBB2_161
.LBB2_134:
	movq	$.L.str.134, -8(%rbp)
	jmp	.LBB2_161
.LBB2_135:
	movq	$.L.str.135, -8(%rbp)
	jmp	.LBB2_161
.LBB2_136:
	movq	$.L.str.136, -8(%rbp)
	jmp	.LBB2_161
.LBB2_137:
	movq	$.L.str.137, -8(%rbp)
	jmp	.LBB2_161
.LBB2_138:
	movq	$.L.str.138, -8(%rbp)
	jmp	.LBB2_161
.LBB2_139:
	movq	$.L.str.139, -8(%rbp)
	jmp	.LBB2_161
.LBB2_140:
	movq	$.L.str.140, -8(%rbp)
	jmp	.LBB2_161
.LBB2_141:
	movq	$.L.str.141, -8(%rbp)
	jmp	.LBB2_161
.LBB2_142:
	movq	$.L.str.142, -8(%rbp)
	jmp	.LBB2_161
.LBB2_143:
	movq	$.L.str.143, -8(%rbp)
	jmp	.LBB2_161
.LBB2_144:
	movq	$.L.str.144, -8(%rbp)
	jmp	.LBB2_161
.LBB2_145:
	movq	$.L.str.145, -8(%rbp)
	jmp	.LBB2_161
.LBB2_146:
	movq	$.L.str.146, -8(%rbp)
	jmp	.LBB2_161
.LBB2_148:
	movq	$.L.str.148, -8(%rbp)
	jmp	.LBB2_161
.LBB2_147:
	movq	$.L.str.147, -8(%rbp)
	jmp	.LBB2_161
.LBB2_149:
	movq	$.L.str.149, -8(%rbp)
	jmp	.LBB2_161
.LBB2_150:
	movq	$.L.str.150, -8(%rbp)
	jmp	.LBB2_161
.LBB2_151:
	movq	$.L.str.151, -8(%rbp)
	jmp	.LBB2_161
.LBB2_152:
	movq	$.L.str.152, -8(%rbp)
	jmp	.LBB2_161
.LBB2_153:
	movq	$.L.str.153, -8(%rbp)
	jmp	.LBB2_161
.LBB2_154:
	movq	$.L.str.154, -8(%rbp)
	jmp	.LBB2_161
.LBB2_155:
	movq	$.L.str.155, -8(%rbp)
	jmp	.LBB2_161
.LBB2_156:
	movq	$.L.str.156, -8(%rbp)
	jmp	.LBB2_161
.LBB2_157:
	movq	$.L.str.157, -8(%rbp)
	jmp	.LBB2_161
.LBB2_158:
	movq	$.L.str.158, -8(%rbp)
	jmp	.LBB2_161
.LBB2_159:
	movq	$.L.str.159, -8(%rbp)
	jmp	.LBB2_161
.LBB2_8:
	movq	$.L.str.8, -8(%rbp)
	jmp	.LBB2_161
.LBB2_11:
	movq	$.L.str.11, -8(%rbp)
	jmp	.LBB2_161
.LBB2_13:
	movq	$.L.str.13, -8(%rbp)
	jmp	.LBB2_161
.LBB2_12:
	movq	$.L.str.12, -8(%rbp)
	jmp	.LBB2_161
.LBB2_14:
	movq	$.L.str.14, -8(%rbp)
	jmp	.LBB2_161
.LBB2_15:
	movq	$.L.str.15, -8(%rbp)
	jmp	.LBB2_161
.LBB2_4:
	movq	$.L.str.4, -8(%rbp)
	jmp	.LBB2_161
.LBB2_3:
	movq	$.L.str.3, -8(%rbp)
	jmp	.LBB2_161
.LBB2_5:
	movq	$.L.str.5, -8(%rbp)
	jmp	.LBB2_161
.LBB2_6:
	movq	$.L.str.6, -8(%rbp)
	jmp	.LBB2_161
.LBB2_7:
	movq	$.L.str.7, -8(%rbp)
	jmp	.LBB2_161
.LBB2_41:
	movq	$.L.str.41, -8(%rbp)
	jmp	.LBB2_161
.LBB2_42:
	movq	$.L.str.42, -8(%rbp)
	jmp	.LBB2_161
.LBB2_9:
	movq	$.L.str.9, -8(%rbp)
	jmp	.LBB2_161
.LBB2_10:
	movq	$.L.str.10, -8(%rbp)
	jmp	.LBB2_161
.LBB2_98:
	movq	$.L.str.98, -8(%rbp)
	jmp	.LBB2_161
.LBB2_99:
	movq	$.L.str.99, -8(%rbp)
	jmp	.LBB2_161
.LBB2_100:
	movq	$.L.str.100, -8(%rbp)
	jmp	.LBB2_161
.Lfunc_end2:
	.size	Image, .Lfunc_end2-Image
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI2_0:
	.quad	.LBB2_2
	.quad	.LBB2_8
	.quad	.LBB2_11
	.quad	.LBB2_160
	.quad	.LBB2_13
	.quad	.LBB2_12
	.quad	.LBB2_14
	.quad	.LBB2_15
	.quad	.LBB2_4
	.quad	.LBB2_3
	.quad	.LBB2_5
	.quad	.LBB2_6
	.quad	.LBB2_7
	.quad	.LBB2_41
	.quad	.LBB2_42
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_98
	.quad	.LBB2_99
	.quad	.LBB2_100
	.quad	.LBB2_16
	.quad	.LBB2_17
	.quad	.LBB2_18
	.quad	.LBB2_19
	.quad	.LBB2_20
	.quad	.LBB2_21
	.quad	.LBB2_22
	.quad	.LBB2_23
	.quad	.LBB2_24
	.quad	.LBB2_25
	.quad	.LBB2_26
	.quad	.LBB2_27
	.quad	.LBB2_28
	.quad	.LBB2_29
	.quad	.LBB2_48
	.quad	.LBB2_49
	.quad	.LBB2_30
	.quad	.LBB2_31
	.quad	.LBB2_32
	.quad	.LBB2_33
	.quad	.LBB2_34
	.quad	.LBB2_35
	.quad	.LBB2_37
	.quad	.LBB2_38
	.quad	.LBB2_36
	.quad	.LBB2_39
	.quad	.LBB2_40
	.quad	.LBB2_43
	.quad	.LBB2_44
	.quad	.LBB2_45
	.quad	.LBB2_46
	.quad	.LBB2_47
	.quad	.LBB2_52
	.quad	.LBB2_51
	.quad	.LBB2_50
	.quad	.LBB2_53
	.quad	.LBB2_54
	.quad	.LBB2_55
	.quad	.LBB2_56
	.quad	.LBB2_57
	.quad	.LBB2_58
	.quad	.LBB2_59
	.quad	.LBB2_60
	.quad	.LBB2_61
	.quad	.LBB2_62
	.quad	.LBB2_63
	.quad	.LBB2_64
	.quad	.LBB2_65
	.quad	.LBB2_66
	.quad	.LBB2_67
	.quad	.LBB2_68
	.quad	.LBB2_69
	.quad	.LBB2_70
	.quad	.LBB2_71
	.quad	.LBB2_72
	.quad	.LBB2_73
	.quad	.LBB2_74
	.quad	.LBB2_75
	.quad	.LBB2_76
	.quad	.LBB2_77
	.quad	.LBB2_78
	.quad	.LBB2_79
	.quad	.LBB2_80
	.quad	.LBB2_81
	.quad	.LBB2_82
	.quad	.LBB2_83
	.quad	.LBB2_84
	.quad	.LBB2_85
	.quad	.LBB2_86
	.quad	.LBB2_87
	.quad	.LBB2_88
	.quad	.LBB2_89
	.quad	.LBB2_90
	.quad	.LBB2_91
	.quad	.LBB2_92
	.quad	.LBB2_93
	.quad	.LBB2_94
	.quad	.LBB2_95
	.quad	.LBB2_96
	.quad	.LBB2_97
	.quad	.LBB2_101
	.quad	.LBB2_102
	.quad	.LBB2_103
	.quad	.LBB2_104
	.quad	.LBB2_106
	.quad	.LBB2_107
	.quad	.LBB2_108
	.quad	.LBB2_109
	.quad	.LBB2_110
	.quad	.LBB2_111
	.quad	.LBB2_112
	.quad	.LBB2_105
	.quad	.LBB2_113
	.quad	.LBB2_114
	.quad	.LBB2_115
	.quad	.LBB2_116
	.quad	.LBB2_117
	.quad	.LBB2_118
	.quad	.LBB2_160
	.quad	.LBB2_119
	.quad	.LBB2_120
	.quad	.LBB2_121
	.quad	.LBB2_122
	.quad	.LBB2_123
	.quad	.LBB2_124
	.quad	.LBB2_125
	.quad	.LBB2_126
	.quad	.LBB2_127
	.quad	.LBB2_128
	.quad	.LBB2_129
	.quad	.LBB2_130
	.quad	.LBB2_131
	.quad	.LBB2_132
	.quad	.LBB2_133
	.quad	.LBB2_134
	.quad	.LBB2_135
	.quad	.LBB2_136
	.quad	.LBB2_137
	.quad	.LBB2_138
	.quad	.LBB2_139
	.quad	.LBB2_140
	.quad	.LBB2_141
	.quad	.LBB2_142
	.quad	.LBB2_143
	.quad	.LBB2_144
	.quad	.LBB2_145
	.quad	.LBB2_146
	.quad	.LBB2_148
	.quad	.LBB2_147
	.quad	.LBB2_160
	.quad	.LBB2_149
	.quad	.LBB2_150
	.quad	.LBB2_151
	.quad	.LBB2_152
	.quad	.LBB2_153
	.quad	.LBB2_154
	.quad	.LBB2_155
	.quad	.LBB2_156
	.quad	.LBB2_157
	.quad	.LBB2_158
	.quad	.LBB2_159

	.type	length_dim,@object      # @length_dim
	.local	length_dim
	.comm	length_dim,4,4
	.type	EchoLength.buff,@object # @EchoLength.buff
	.local	EchoLength.buff
	.comm	EchoLength.buff,160,16
	.type	EchoLength.i,@object    # @EchoLength.i
	.local	EchoLength.i
	.comm	EchoLength.i,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"INF"
	.size	.L.str.1, 4

	.type	Image.b,@object         # @Image.b
	.local	Image.b
	.comm	Image.b,20,16
	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"link"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"split"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"head"
	.size	.L.str.4, 5

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"par"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"word"
	.size	.L.str.6, 5

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"qword"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gap_obj"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"row_thr"
	.size	.L.str.9, 8

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"col_thr"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"closure"
	.size	.L.str.11, 8

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"@Null"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"@PageLabel"
	.size	.L.str.13, 11

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"&&"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"&&&"
	.size	.L.str.15, 4

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"@BeginHeaderComponent"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"@EndHeaderComponent"
	.size	.L.str.17, 20

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"@SetHeaderComponent"
	.size	.L.str.18, 20

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"@ClearHeaderComponent"
	.size	.L.str.19, 22

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"@OneCol"
	.size	.L.str.20, 8

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"@OneRow"
	.size	.L.str.21, 8

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"@Wide"
	.size	.L.str.22, 6

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"@High"
	.size	.L.str.23, 6

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"@HShift"
	.size	.L.str.24, 8

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"@VShift"
	.size	.L.str.25, 8

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"@HScale"
	.size	.L.str.26, 8

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"@VScale"
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"@HCover"
	.size	.L.str.28, 8

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"@VCover"
	.size	.L.str.29, 8

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"@HContract"
	.size	.L.str.30, 11

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"@VContract"
	.size	.L.str.31, 11

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"@HLimited"
	.size	.L.str.32, 10

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"@VLimited"
	.size	.L.str.33, 10

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"@HExpand"
	.size	.L.str.34, 9

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"@VExpand"
	.size	.L.str.35, 9

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"@StartHVSpan"
	.size	.L.str.36, 13

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"@StartHSpan"
	.size	.L.str.37, 12

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"@StartVSpan"
	.size	.L.str.38, 12

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"@HSpan"
	.size	.L.str.39, 7

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"@VSpan"
	.size	.L.str.40, 7

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"hspannner"
	.size	.L.str.41, 10

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"vspannner"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"@PAdjust"
	.size	.L.str.43, 9

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"@HAdjust"
	.size	.L.str.44, 9

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"@VAdjust"
	.size	.L.str.45, 9

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"@Rotate"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"@Background"
	.size	.L.str.47, 12

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"@Scale"
	.size	.L.str.48, 7

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"@KernShrink"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"@RawVerbatim"
	.size	.L.str.50, 13

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"@Verbatim"
	.size	.L.str.51, 10

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"@Case"
	.size	.L.str.52, 6

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"@Yield"
	.size	.L.str.53, 7

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"@BackEnd"
	.size	.L.str.54, 9

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"filtered"
	.size	.L.str.55, 9

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"@Char"
	.size	.L.str.56, 6

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"@Font"
	.size	.L.str.57, 6

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"@Space"
	.size	.L.str.58, 7

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"@YUnit"
	.size	.L.str.59, 7

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"@ZUnit"
	.size	.L.str.60, 7

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"@Break"
	.size	.L.str.61, 7

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"@Underline"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"@SetColour"
	.size	.L.str.63, 11

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"@Outline"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"@Language"
	.size	.L.str.65, 10

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"@CurrLang"
	.size	.L.str.66, 10

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"@CurrFamily"
	.size	.L.str.67, 12

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"@CurrFace"
	.size	.L.str.68, 10

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"@CurrYUnit"
	.size	.L.str.69, 11

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"@CurrZUnit"
	.size	.L.str.70, 11

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"@Common"
	.size	.L.str.71, 8

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"@Rump"
	.size	.L.str.72, 6

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"@Meld"
	.size	.L.str.73, 6

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"@Insert"
	.size	.L.str.74, 8

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"@OneOf"
	.size	.L.str.75, 7

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"@Next"
	.size	.L.str.76, 6

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"@Plus"
	.size	.L.str.77, 6

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"@Minus"
	.size	.L.str.78, 7

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"env_obj"
	.size	.L.str.79, 8

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"@LEnv"
	.size	.L.str.80, 6

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"@@A"
	.size	.L.str.81, 4

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"@@B"
	.size	.L.str.82, 4

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"@@C"
	.size	.L.str.83, 4

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"@@D"
	.size	.L.str.84, 4

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"@@E"
	.size	.L.str.85, 4

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"@LClos"
	.size	.L.str.86, 7

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"@@V"
	.size	.L.str.87, 4

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"@LUse"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"@LEO"
	.size	.L.str.89, 5

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
	.asciz	"acat"
	.size	.L.str.98, 5

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"hcat"
	.size	.L.str.99, 5

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"vcat"
	.size	.L.str.100, 5

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"tspace"
	.size	.L.str.101, 7

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"tjuxta"
	.size	.L.str.102, 7

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"lbr"
	.size	.L.str.103, 4

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"rbr"
	.size	.L.str.104, 4

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"unexpected_eof"
	.size	.L.str.105, 15

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"@Begin"
	.size	.L.str.106, 7

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"@End"
	.size	.L.str.107, 5

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"@Use"
	.size	.L.str.108, 5

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"@NotRevealed"
	.size	.L.str.109, 13

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"gstub_none"
	.size	.L.str.110, 11

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"gstub_int"
	.size	.L.str.111, 10

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"gstub_ext"
	.size	.L.str.112, 10

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"@Include"
	.size	.L.str.113, 9

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"@SysInclude"
	.size	.L.str.114, 12

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"@PrependGraphic"
	.size	.L.str.115, 16

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"@SysPrependGraphic"
	.size	.L.str.116, 19

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"@Database"
	.size	.L.str.117, 10

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"@SysDatabase"
	.size	.L.str.118, 13

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"dead"
	.size	.L.str.119, 5

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"unattached"
	.size	.L.str.120, 11

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"receptive"
	.size	.L.str.121, 10

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"receiving"
	.size	.L.str.122, 10

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"recursive"
	.size	.L.str.123, 10

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"precedes"
	.size	.L.str.124, 9

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"follows"
	.size	.L.str.125, 8

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"cross_lit"
	.size	.L.str.126, 10

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"cross_foll"
	.size	.L.str.127, 11

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"cross_foll_or_prec"
	.size	.L.str.128, 19

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"gall_foll"
	.size	.L.str.129, 10

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"gall_foll_or_prec"
	.size	.L.str.130, 18

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"cross_targ"
	.size	.L.str.131, 11

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"gall_targ"
	.size	.L.str.132, 10

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"gall_prec"
	.size	.L.str.133, 10

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"cross_prec"
	.size	.L.str.134, 11

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"page_label_ind"
	.size	.L.str.135, 15

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"scale_ind"
	.size	.L.str.136, 10

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"cover_ind"
	.size	.L.str.137, 10

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"expand_ind"
	.size	.L.str.138, 11

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"thread"
	.size	.L.str.139, 7

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"cross_sym"
	.size	.L.str.140, 10

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"cr_root"
	.size	.L.str.141, 8

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"macro"
	.size	.L.str.142, 6

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"local"
	.size	.L.str.143, 6

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"lpar"
	.size	.L.str.144, 5

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"npar"
	.size	.L.str.145, 5

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"rpar"
	.size	.L.str.146, 5

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"cr_list"
	.size	.L.str.147, 8

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"ext_gall"
	.size	.L.str.148, 9

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"disposed"
	.size	.L.str.149, 9

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"back"
	.size	.L.str.150, 5

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"on"
	.size	.L.str.151, 3

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"fwd"
	.size	.L.str.152, 4

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"promote"
	.size	.L.str.153, 8

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"close"
	.size	.L.str.154, 6

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"block"
	.size	.L.str.155, 6

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"clear"
	.size	.L.str.156, 6

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"abs"
	.size	.L.str.157, 4

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"inc"
	.size	.L.str.158, 4

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"dec"
	.size	.L.str.159, 4

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"?? (%d)"
	.size	.L.str.160, 8


	.ident	"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"
	.section	".note.GNU-stack","",@progbits
