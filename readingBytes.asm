SECTION .data
    userMsg: db 'please enter a number:',0xA
    len1 equ $-userMsg
    dispMsg: db 'you have entered:',0xA
    len2 equ $-dispMsg

SECTION .bss
    num resb 5

SECTION .text

global _start

_start:
    mov eax,4
    mov ebx,1
    mov ecx,userMsg
    mov edx,len1
    int 0x80

    mov eax,3
    mov ebx,2
    mov ecx,num
    mov edx,5
    int 80h

    mov eax,4
    mov ebx,1
    mov ecx,dispMsg
    mov edx,len2
    int 0x80

    mov eax,4
    mov ebx,1
    mov ecx,num
    mov edx,5
    int 0x80

    mov eax,1
    mov ebx,0
    int 0x80