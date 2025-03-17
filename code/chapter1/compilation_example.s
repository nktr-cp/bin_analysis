	.file	"compilation_example.c"
	.section	.rodata
	.align 32
.LC0:
	.string	"Hello, World!"
	.zero	50
	.text
	.globl	main
	.type	main, @function
main:
.LASANPC0:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$.LC0, %edi
	call	puts
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC1:
	.string	"*.LC0"
.LC2:
	.string	"compilation_example.c"
	.data
	.align 32
	.type	.LASAN0, @object
	.size	.LASAN0, 56
.LASAN0:
	.quad	.LC0
	.quad	14
	.quad	64
	.quad	.LC1
	.quad	.LC2
	.quad	0
	.quad	0
	.text
	.type	_GLOBAL__sub_D_00099_0_main, @function
_GLOBAL__sub_D_00099_0_main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %esi
	movl	$.LASAN0, %edi
	call	__asan_unregister_globals
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_GLOBAL__sub_D_00099_0_main, .-_GLOBAL__sub_D_00099_0_main
	.section	.fini_array.00099,"aw"
	.align 8
	.quad	_GLOBAL__sub_D_00099_0_main
	.text
	.type	_GLOBAL__sub_I_00099_1_main, @function
_GLOBAL__sub_I_00099_1_main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	__asan_init_v4
	movl	$1, %esi
	movl	$.LASAN0, %edi
	call	__asan_register_globals
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	_GLOBAL__sub_I_00099_1_main, .-_GLOBAL__sub_I_00099_1_main
	.section	.init_array.00099,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_00099_1_main
	.ident	"GCC: (Ubuntu 5.5.0-12ubuntu1~16.04) 5.5.0 20171010"
	.section	.note.GNU-stack,"",@progbits
