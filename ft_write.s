global	_ft_write
extern ___error

section .text
_ft_write:
		xor	rax, rax
		xor	rbx, rbx
		mov	rax, 0x02000004
		syscall
		jc	erorr
		ret

erorr:	push rax
		call ___error
		pop	rbx
		mov	[rax], rbx
		mov	rax, -1
		ret