global	_ft_strdub
extern	_malloc
extern	_ft_strlen
extern	_ft_strcpy

section .text
_ft_strdub:
		xor		rax, rax
		xor		rbx, rbx
		push	rdi
		cmp		rdi, 0
		je		null
		call	_ft_strlen
		inc		rax
		mov		rdi, rax
		call	_malloc
		cmp		rax, 0
		je		null
		mov		rdi, rax
		pop		rsi
		call	_ft_strcpy
		ret

null:	pop		rbx
		ret
