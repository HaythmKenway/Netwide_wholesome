
section .text
global main
main:
    mov rbp, rsp; for correct debugging

;;if condition
push rbx

;; if(a<b)
;;    c=1
;; else c=2

mov eax,51
mov ebx,7
mov ecx,0
cmp eax,ebx
jl eaxless
mov ecx,2
jmp finished

eaxless:
    mov ecx,1
finished:
    hlt
pop rbx
;