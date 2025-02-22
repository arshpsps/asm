bits 64

section .text
    global _start

_start:
    mov     rax, 0
    mov     rdi, 0
    mov     rsi, in
    mov     rdx, 64
    syscall

    mov     rdx, rax
    mov     rax, 1
    mov     rdi, 1
    mov     rdx, 64
    syscall

    mov     rax, 60 ; 60 = exit
    mov     rdi, 0
    syscall

section .bss
in: resb 64
