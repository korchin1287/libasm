global _ft_strlen

section .text
_ft_strlen:	
		xor		rax, rax
		cmp		byte[rdi + rax], 0
		je		finish
again:	inc		rax
		cmp		byte[rdi + rax], 0
		jne		again
finish:	ret