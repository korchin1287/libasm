global	_ft_strcmp

section	.text
_ft_strcmp:
		xor		rax, rax
		xor		rcx, rcx
		xor     rdx, rdx

again: cmp byte[rdi + rcx], 0
		je return
		cmp byte[rsi + rcx], 0
		je return
		mov dl, byte[rdi + rcx]
		cmp dl, byte[rsi + rcx]
		jne	return
		inc	rcx
		jmp	again

return:	xor	rdx, rdx
		mov	al, byte[rdi + rcx]
		mov	dl, byte[rsi + rcx]
		sub	rax, rdx
		ret