section .text
global main
main:
    mov rbp, rsp; for correct debugging

;setting carry flag
mov rax,-1
add rax,1
mov rbx,rax
;[ CF PF AF ZF IF ]


;setting parity flag
mov eax,3
and eax,eax
 ;[ PF IF ] 3 is 11 so it has even no of 1 so parity flag is set
mov eax,7
and eax,eax
and eax,eax
;[ IF ] 7 is 111 so it has odd no of 1 so parity flag is reset


;setting auxilarry carry flag

mov ax,15
add ax,1
and ax,ax
;[ AF IF ] auxillary carry flag is set