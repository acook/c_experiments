	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 11
	.intel_syntax noprefix
	.globl	_func3
	.align	4, 0x90
_func3:                                 ## @func3
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp2:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.globl	_func2
	.align	4, 0x90
_func2:                                 ## @func2
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp5:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.1]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.globl	_func1
	.align	4, 0x90
_func1:                                 ## @func1
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp8:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.2]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.globl	_func0
	.align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp9:
	.cfi_def_cfa_offset 16
Ltmp10:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp11:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	lea	rdi, [rip + L_.str.3]
	mov	al, 0
	call	_printf
	mov	dword ptr [rbp - 4], eax ## 4-byte Spill
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	push	rbp
Ltmp12:
	.cfi_def_cfa_offset 16
Ltmp13:
	.cfi_offset rbp, -16
	mov	rbp, rsp
Ltmp14:
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	rsi, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rsi + 8]
	call	_atoi
	lea	rsi, [rip + _jump_table]
	mov	ecx, 4
	cdq
	idiv	ecx
	add	edx, 4
	mov	eax, edx
	cdq
	idiv	ecx
	mov	dword ptr [rbp - 20], edx
	movsxd	rdi, dword ptr [rbp - 20]
	call	qword ptr [rsi + 8*rdi]
	xor	ecx, ecx
	mov	eax, ecx
	add	rsp, 32
	pop	rbp
	ret
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"3\n"

L_.str.1:                               ## @.str.1
	.asciz	"2\n"

L_.str.2:                               ## @.str.2
	.asciz	"1\n"

L_.str.3:                               ## @.str.3
	.asciz	"0\n"

	.section	__DATA,__data
	.globl	_jump_table             ## @jump_table
	.align	4
_jump_table:
	.quad	_func0
	.quad	_func1
	.quad	_func2
	.quad	_func3


.subsections_via_symbols
