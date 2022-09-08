SEGMENT .data
	msg db "the largest among the given input is:"
	len equ $-msg
	msg1 db "Enter the first Number:"
        len1 equ $-msg1
	msg2 db "Enter the second Number:"
        len2 equ $-msg2
	msg3 db "Enter the Third Number:"
  	len3 equ $-msg3


SEGMENT .bss
	largest resb 2
	num1 resd 2
	num2 resd 2
	num3 resd 2

SEGMENT .text
global _start
_start:
		
	mov eax,4
	mov ebx,1
	mov ecx,msg1
	mov edx,len1
	int 0x80

	mov eax,3
	mov ebx,0
	mov ecx,num1
	mov edx,2
	int 0x80
	
        mov eax,4
        mov ebx,1
        mov ecx,msg2
        mov edx,len2
        int 0x80

	mov eax,3
        mov ebx,0
        mov ecx,num2
        mov edx,2
        int 0x80
	
        mov eax,4
        mov ebx,1
        mov ecx,msg3
        mov edx,len3
        int 0x80


	mov eax,3
        mov ebx,0
        mov ecx,num3
        mov edx,2
        int 0x80


	mov ecx,[num1]
	cmp ecx,[num2]
	jg check_third_num
	mov ecx,[num3]

check_third_num:
	cmp ecx,[num3]
	jg _exit
	mov ecx,[num3]

_exit:
	mov [largest],ecx
	mov ecx,msg
	mov edx,len
	mov ebx,1
	mov eax,0x04
	int 80H
	
	mov ecx,largest
	mov edx,2
	mov ebx,1
	mov eax,4
	int 0x80
	
	mov eax,1
	xor ebx,ebx
	int 0x80
