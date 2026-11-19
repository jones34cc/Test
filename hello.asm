section .data
    hello db 'Hello i am running asm 32 arch',0

section .text
    global _start

_start:
    mov eax,4
    mov ebx,1
    mov ecx,hello
    mov edx,30
    int 0x80

    ;Exit the program

    mov eax,1
    xor ebx,ebx
    int 0x80