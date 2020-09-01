%include "stud_io.inc"
global _start

;section .data
;array	db '123', 0

section .text
_start:	xor		ecx, ecx
		;mov		ebx, edi
		cmp		byte[edi], 0
		je		finish
again:	inc		ecx
		PRINT	"1"
		cmp		byte[edi + ecx], 0
		jne		again
		FINISH
finish:	PRINT	"0"
		FINISH

