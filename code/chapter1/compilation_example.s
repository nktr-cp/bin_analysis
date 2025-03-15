	.file	"compilation_example.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"Hello, World!"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR [rbp-4], edi
	mov	QWORD PTR [rbp-16], rsi
	mov	edi, OFFSET FLAT:.LC0
	call	puts
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
