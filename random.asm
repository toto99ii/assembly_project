IDEAL

MODEL small

STACK 256

DATASEG

NextRandom dw 0
j dw 0
xcoin dw 0
timer dw 0
game_started db 0
x dw 158
y dw 199
color db 15
loc_x dw 158
loc_y dw 199

CODESEG

proc enter_graphic_mode
    mov ax, 13h
    int 10h
    ret
endp

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


proc draw_coin
    call rand_pos
    push bx
    push cx
    push dx
    mov cx, [xcoin]
    mov bh, 0h
    mov dx, 0
    mov al, 14
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 6
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 9
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 11
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 12
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 6
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 13
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 14
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 14
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 6
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 14
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 14
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 13
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 6
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 12
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 2
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 11
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 9
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    sub cx, 6
    add dx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    add cx, 1
    mov ah, 0ch
    int 10h
    pop bx
    pop cx
    pop dx
    ret
endp 

proc randax
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
endp 

proc rand_pos
    mov ah, 2Ch 
    int 21h
    mov [NextRandom], dx
    call randax
    mov bx, 280
    mov dx, 0
    div bx
    add dx, 10
    mov [xcoin], dx
    ret
endp 

proc move_left
    ret
endp

proc move_right
    ret
endp

proc coins_generator
    add [timer], 1
    cmp [timer], 10
    je coin
    ret
coin:
    call draw_coin
    mov [timer], 0
    ret
endp

Start:
    mov ax, @data
    mov ds, ax
    call enter_graphic_mode
    mov bl, 158
hey:
    mov al, 0h
    mov ah, 07h
    int 21h
    cmp al, "a"
    je left
    cmp al, "d"
    je right
    cmp al, " "
    je game
    cmp [game_started], 1
    je generate_coin
    jmp hey
left:
    call move_left
    jmp hey
right:
    call move_right
    jmp hey
game:
    mov [game_started], 1
    jmp hey
generate_coin:
    add [timer], 1
    cmp [timer], 10
    je coin1
    jmp hey
coin1:
    call draw_coin
    mov [timer], 0
    jmp hey
Exit:
    mov ax, 4C00h
    int 21h
END start
