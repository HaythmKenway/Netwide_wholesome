global _start

section .bss
maxlines  equ       8
dataSize  equ       44
output:   resb      dataSize

section .text

_start:
	mov rdx,output
	mov r8,1
	mov r9,0
	mov r7,0
	mov r6,0
line1:
	mov byte[rdx],' '
	inc rdx
	inc r7
	mov r9,maxlines
	sub r6,r8
	cmp r7,r6
	jne line1
line2:
	mov byte[rdx],'* '
	inc rdx
	inc r9
	cmp r9,r8
	jne line2
lined:
	mov byte[rdx],10
	inc rdx
	inc r8
	mov r9,0
	cmp r8,maxlines
	jng line1

done:
	mov rax,1
	mov rdi,1
	mov rsi,output
	mov rdx,dataSize
	syscall
	mov rax,60
	xor rdi,rdi
	syscall



