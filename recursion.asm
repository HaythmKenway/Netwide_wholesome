section .data
msg db "Factorial of 3 is :",10
len equ $-msg

section .bss
fact resb 1

section .text
global _start
_start:

	mov bx,3
	call proc_fact
	add ax,30h
	mov [fact],ax

	mov edx,len
	mov ecx,msg
	mov ebx,1
	mov eax,4
	int 80H

	mov edx,1
	mov ecx,fact
	mov ebx,1
	mov eax,4
	int 80H

proc_fact:
	cmp bl,1
	jg docalc
	mov ax,1
	ret
docalc:
	dec bl
	call proc_fact
	inc bl
	mul bl
	ret 

