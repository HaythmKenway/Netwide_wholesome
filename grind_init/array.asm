
SECTION .data
	global x
	x:   db 2
	     db 3
	     db 4
	sum: db 0
	
SECTION .text
	global _start
_start:
	mov eax,3
	mov ebx,0
	mov ecx,x

top: 	add ebx,[ecx]
	add ecx,1
	dec eax
	jnz top
done:
	add ebx,'0'
	mov [sum],ebx

display:
	mov edx,1
	mov ecx,sum
	mov ebx,1
	mov eax,4
	int 80H

	mov eax,1
	int 80H


