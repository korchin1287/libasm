global _ft_strcpy

section .text
_ft_strcpy:
		xor		rax, rax
		xor		rcx, rcx
		xor		rdx, rdx
		cmp		byte[rsi + rcx], 0
		je		finish
again:	
		mov		dl, byte[rsi + rcx]
		mov		byte[rdi + rcx], dl
		inc		rcx
		cmp		byte[rsi + rcx], 0
		jne		again
		mov		byte[rdi + rcx], 0
finish:
		mov		rax, rdi
		ret