section     .text
            global _ft_strcmp

_ft_strcmp:
            xor		r10, r10				; clear register === mov reg, 0
			xor		rcx, rcx
			xor		rbx, rbx

loop:
			mov cl , [rdi + r10]
			mov bl , [rsi + r10]
			cmp	rcx, 0
			je	done
			cmp rbx, 0
			je	done
			cmp	rcx, rbx
			je	increment
			jmp done

increment:
			inc r10
			mov rax, 0
			jmp	loop

done:
			sub	rcx, rbx
			mov rax, rcx
			ret