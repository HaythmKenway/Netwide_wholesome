SYS_EXIT equ 1
SYS_WRITE equ 4
STDIN equ 0
STDOUT equ 1

SECTION .data
msg1 db '👦This is Bill!',10,13
len1 equ $-msg1
msg2 db 'Bill is a good boy!',10,13
len2 equ $-msg2

msg3 db 'Be like Bill!',10,13
len3 equ $-msg3

SECTION .text
global  _start
    _start:
        mov eax,SYS_WRITE
        mov ebx,STDOUT
        mov ecx,msg1
        mov edx,len1
        int 0x80

        mov eax,SYS_WRITE
        mov ebx,STDOUT
        mov ecx,msg2
        mov edx,len2
        int 0x80
        mov eax,SYS_WRITE
        mov ebx,STDOUT
        mov ecx,msg3
        mov edx,len3
        int 0x80
        mov eax,SYS_EXIT
        int 80H
