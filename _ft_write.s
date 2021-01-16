section	.text
	global	_ft_write
	extern	___error
_ft_write:
	mov	rax,  0x02000004	; write syscall
	syscall
	jc	my_err
	ret

my_err:
	push	rax
	call 	___error
	pop		r10
	mov		[rax], r10
	mov		rax, -1
	ret