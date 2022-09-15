
SECTION .data
msg db 'Displaying stars',10
len equ $-msg
s2 times 9 db '*'
SECTION .text

global _start
_start:
    mov edx,len
    mov ecx,msg
    mov ebx,1
    mov eax,4
    int 80H

    mov edx,9
    mov ecx,s2
    mov eax,4
    mov ebx,1
    int 80H

    mov eax,1
    int 80H
