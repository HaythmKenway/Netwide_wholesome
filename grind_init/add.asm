SEGMENT .data
msg1 db "enter a digit:",10,13
len1 equ $-msg1
msg2 db "enter another digit:",10,13
len2 equ $-msg2
msg3 db "The sum is:",10,13
len3 equ $-msg3


SEGMENT .bss

num1 resb 2
num2 resb 2
res resb 1

SEGMENT .text

global main

main:
	mov eax,4
	mov ebx,1
	mov ecx,msg1
	mov edx,len1
	int 80H

	mov eax,3
	mov ebx,0
	mov ecx,num1
	mov edx,2
	int 80H

	mov eax,4
	mov ebx,1
	mov ecx,msg2
	mov edx,len2
	int 80H

	mov eax,3
	mov ebx,0
	mov ecx,num2
	mov edx,2
	int 80H

	mov eax,[num1]
	sub eax,'0'
	mov ebx,[num2]

	add eax,ebx
	mov [res], eax
	
	mov eax,0x04
	mov ebx,1
	mov ecx,res 
	mov edx,1
	int 80H

	mov eax,1
	xor ebx,ebx
	int 80H
