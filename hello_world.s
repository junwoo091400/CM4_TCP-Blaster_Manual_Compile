	.arch armv8-a
	.file	"hello_world.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Hello world!"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	mov	w0, 69
	str	w0, [sp, 20]
	mov	w0, 99
	str	w0, [sp, 24]
	ldr	w1, [sp, 20]
	ldr	w0, [sp, 24]
	add	w0, w1, w0
	str	w0, [sp, 28]
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x1, x0
	ldr	w0, [sp, 28]
	bl	putc
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	puts
	adrp	x0, :got:stdout
	ldr	x0, [x0, #:got_lo12:stdout]
	ldr	x0, [x0]
	mov	x1, x0
	mov	w0, 123
	bl	putc
	mov	w0, 0
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
