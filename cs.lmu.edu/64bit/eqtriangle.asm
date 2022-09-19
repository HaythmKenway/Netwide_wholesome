global _start

section .bss

maxlines equ 4
datasize equ 1024
output: resb datasize

section .txt

_start:
	mov rdx,output ;address of output to rdx
	mov r8,1       ; for iteratior 
	mov r9,0       ; for 2nd iterator

rint:	mov r10,maxlines ; maximum lines
	mov r11,0        ;
revt: ;to print the first half of inverted triangle
	mov byte[rdx],' ' 
	inc rdx
	inc r10
	cmp r9,r8
	jne revt
tri:
	mov byte[rdx],'* '
	inc rdx
	inc r9
	cmp r9,r8
	jne tri

lined: 
	mov byte[rdx],10
	inc rdx
	inc r8
	mov r9,0
	cmp r8,maxlines
	jng rint:
done:
	mov rax,1
	mov rdi,1
	mov rsi,output
	mov rdx,dataSize
	syscall
	mov rax,60
	xor rdi,rdi
	syscall

