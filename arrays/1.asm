section .data
arrayb db 10h,20h,30h,40h

section .text
global _start
_start:
 mov esi, arrayb
 mov cl,[esi]
 
 inc byte [esi]
	 mov cl,[esi]
 call print
 inc byte [esi]
 mov cl,[esi]
 call print
 inc byte [esi]
 mov cl,[esi]
 call print



print:
 mov ebx,1
 mov eax,0x4
 mov edx,1
 int 80h


 terminate:
 	mov eax,1
	xor ebx,ebx
	int 80H

 
