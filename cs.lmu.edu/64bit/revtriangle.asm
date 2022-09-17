global _start
section .bss
maxlines  equ       8
dataSize  equ       44
output:   resb      dataSize

section .text
_start:
	mov rdx,output
	mov r8, maxlines
	mov r9,0

line:
	mov byte[rdx],'*'
	inc rdx
	inc r9
	cmp r9,r8
	jne line

lined:
	mov byte[rdx],10
	inc rdx
	sub r8,1
	mov r9,0
	cmp r8,0
	jne line
done:
	mov rax,1
	mov rdi,1
	mov rsi, output
	mov rdx, dataSize
	syscall
terminate:
	mov rax,60
	xor rdi,rdi
	syscall
