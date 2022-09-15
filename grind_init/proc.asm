section .data
msg db "The sum is :",0xa,0xd
len equ $-msg

section .bss
res resb 1

section .text
	global _start

_start:
	mov ecx,4
	mov edx,5

	call sum
	mov [res],eax
	mov ecx,msg
	mov edx,len
	mov eax,4
	mov ebx,1
	int 80H

	mov ecx,res
	mov edx,1
	mov ebx,1
	mov eax,4
	int 80H

	mov eax,1
	int 80H

sum:
	mov eax,ecx
	add eax,edx
	add eax,'0'
	ret

