section .text
	global	_ft_strcpy

_ft_strcpy:
	mov rax, -1					; i = -1

loop:
	inc	rax						; i++
	mov	dl, byte [rsi + rax]	; [rsi + rax] = src[i]
	mov	byte [rdi + rax], dl	; dst[i] = src[i]
	cmp	dl, 0					; check if the terminating character is reached
	je	exit					; if it's equal to 0 exit
	jmp	loop
exit:
	mov rax, rdi				; return dst
	ret