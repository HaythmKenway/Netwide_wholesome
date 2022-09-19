section .data
hello: db 11

section .text
global main
main:
mov rbp, rsp; for correct debugging
;exploring general purpose registers
xor r8,r8
lea rax, hello
mov r8,-1
mov r8d,0
mov r8w,-1
mov r8b,0
xor eax,eax

mov rax,-1
mov eax,0
mov ah,-1
mov al,0
mov ebx,0
