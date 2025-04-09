format ELF64 executable
entry main

segment readable executable
main:
    mov     rax, 0
    mov     rdi, 0
    mov     rsi, buffer
    mov     rdx, 64
    syscall

    mov     rdx, rax
    mov     rax, 1
    mov     rdi, 1
    syscall

    mov     rax, 60
    xor     rdi, rdi
    syscall

segment writable
buffer rb 64
