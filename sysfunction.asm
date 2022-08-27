SECTION .data

fmt:db "msg length=%d:",10,0
i : dd 120

SECTION .text

extern printf
global _start

_start:
	push ebp
	mov ebp,esp
	
	;printf(format,value)
	push DWORD [i]
	push fmt
	call printf
	
	mov esp,ebp
	pop ebp

	mov eax,0x1
	mov ebx,0
	int 0x80	
