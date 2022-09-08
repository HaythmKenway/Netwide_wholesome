%macro write 2
mov eax,4
mov ebx,1
mov ecx,%1
mov edx,%2
int 80H
%endmacro

section .data
msg1 db "👋 hey!",13,10
len1 equ $-msg1
msg2 db "👦 This is bill!",13,10
len2 equ $-msg2
msg3 db "Be Like Bill",13,10
len3 equ $- msg3

section .text
global _start
_start:
	write msg1,len1
	write msg2,len2
	write msg3,len3

	mov eax,1
	int 80H

