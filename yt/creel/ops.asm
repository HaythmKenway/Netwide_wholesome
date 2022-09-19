section .text
global main
main:
    mov rbp, rsp; for correct debugging
    ;exploring boolean operators
    
    ; and operaror
    ;and
    mov eax,1010101010111110b
    mov ebx,1010101010111110b
    and eax,ebx
    
    ;result 43710
    ;or
    mov eax,1010101010111110b
    mov ebx,0101010101111101b
    or eax,ebx
    
    ;result 65535
    
    ;xor
    mov eax,1010101010111110b
    mov ebx,0101010101111101b
    xor eax,ebx
    ;
    ;nand 65475
    mov eax,1010101010111110b
    mov ebx,0101010101111101b
    and eax,ebx
    not eax
    mov ebx,eax
    ;result 4294967235
    
    