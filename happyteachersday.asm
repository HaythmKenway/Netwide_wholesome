SECTION .data
	str: dd "Happy Teachers Day!!",0xA
	len equ $-str


SECTION .text

extern printf
global _start
_start:

mov eax,0x4
mov ebx,1
mov ecx,str
mov edx,len
int 0x80

mov eax,0x1
mov ebx,0
int 0x80
