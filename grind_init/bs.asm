SECTION .data
swap: db 0
x: 	dw 7
	dw 6
	dw 4
	dw 3
	dw 2
	dw 1
len equ $-x
SECTION .text
global _start
_start:

comparison:
mov bx,0
mov ax,[x+bx]
cmp ax,[x+bx+2]
jb noswap

mov dx,[x+bx]
mov [x+bx+2],ax
mov [x+bx],dx
mov byte[swap],1
noswap:
add bx,2
cmp bx,10
jnz comparison

cmp byte[swap],0
jnz _start

mov eax,04
mov ebx,1
mov ecx,x
mov edx,len
int 0x80

mov eax,0x1
mov ebx,0
int 0x80


