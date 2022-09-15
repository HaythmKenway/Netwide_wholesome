section .data

section .text
global _start
_start:
	xor eax,eax
	mov ebx,0x5
	push 0x1111
	push 0x2222
	push 0x2232
	push 0x2242
	
	pop edx
	mov ah,2
	mov ebx,1
	int 21H

	mov eax,1
	mov ebx,0
	int 80H


