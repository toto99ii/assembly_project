IDEAL

MODEL small

STACK 256

DATASEG

NextRandom dw 0
j dw 0

CODESEG

proc prg
    push dx
    xor dx, dx
    mov ax, [NextRandom]
    mov dx, 25173
    imul dx
    add  ax, 13849
    xor  ax, 62832
    mov  [NextRandom], ax
    pop dx
    ret
endp prg


Start:
    mov ax, @data
    mov ds, ax
    jmp hey

hey:
    add [j], 1
    cmp [j], 50
    je coin
    jmp hey
coin:
    mov [ax], 0
    jmp hey

Exit:
    mov ax, 4C00h
    int 21h
END start


