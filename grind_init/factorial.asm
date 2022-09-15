SECTION .data
global x
x: db 5
sum: db 0

SECTION .text
global _start
_start:
mov ebx,[x]
mov eax,1
mov ecx,x

top: mul ecx
	add ecx,1
	dec ebx
	jnz top

done:
	add eax,'0'
	mov [sum],eax

display:
	mov edx,1
	mov ecx,sum
	mov ebx,1
	mov eax,4
	int 80H

	mov eax,1
	int 80H

