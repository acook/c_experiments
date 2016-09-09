	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.globl	_mul4
	.align	4, 0x90
_mul4:                                  ## @mul4
	.cfi_startproc
## BB#0:
	vpmulld	%xmm1, %xmm0, %xmm0
	retq
	.cfi_endproc

	.section	__TEXT,__literal16,16byte_literals
	.align	4
LCPI1_0:
	.long	1                       ## 0x1
	.long	2                       ## 0x2
	.long	3                       ## 0x3
	.long	4                       ## 0x4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rax
Ltmp0:
	.cfi_def_cfa_offset 16
	vmovaps	LCPI1_0(%rip), %xmm0    ## xmm0 = [1,2,3,4]
	vmovaps	%xmm0, %xmm1
	callq	_mul4
	xorl	%eax, %eax
	popq	%rcx
	retq
	.cfi_endproc


.subsections_via_symbols
