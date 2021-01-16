
section	.text
	global	_ft_read
	extern	___error
_ft_read:
	mov	rax, 0x02000003	; read call number syscall
	syscall
	jc	my_err
	ret

my_err:
	push rax
	call ___error
	pop r10
	mov  [rax], r10
	mov rax, -1
	ret