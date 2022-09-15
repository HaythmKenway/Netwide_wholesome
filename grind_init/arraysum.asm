section .data
array dw 1000h,2000h,3000h,400h,5000h
len equ $-array

section .bss
sum resw 4
section .text
global _start
_start:
	mov esi ,array
	mov ecx ,len
	call arraysum
	mov ecx,eax
	
	mov eax,4
	mov ebx,1
	int 80H

	mov eax,1
	int 80H
arraysum:
	push esi
	push ecx
	mov eax,0
L1:
	add eax,[esi]
	add esi,0x4
	loop L1
	pop ecx
	pop esi
	ret


