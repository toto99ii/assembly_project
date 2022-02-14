IDEAL

MODEL small

STACK 256

DATASEG

sound_timer dw 0
CODESEG

Start:
    mov ax, @data
    mov ds, ax

    mov [sound_timer], 100
    mov cx, 500h
    mov bx, 9999h
    mov ax, 1521

    mov al, 182
    out 43h, al
    mov ax, cx

    out 42h, al
    mov al, ah
    out 42h, al
    in  al, 61h

    or al, 00000011b
    out 61h, al

exit:
    dec [sound_timer]
    jne exit
END start