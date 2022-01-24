IDEAL

MODEL small

STACK 256

DATASEG
x dw 158
y dw 199
color db 15
loc_x dw 158
loc_y dw 199
NextRandom dw 0
coin dw {
    00b, 00b, 00b, 00b, 00b, 02b, 02b, 02b, 02b, 02b, 00b, 00b, 00b, 00b, 00b,
    00b, 00b, 00b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 00b, 00b, 00b,
    00b, 00b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 00b, 00b,
    00b, 02b, 02b, 02b, 02b, 02b, 02b, 01b, 02b, 02b, 02b, 02b, 02b, 02b, 00b,
    00b, 02b, 02b, 02b, 02b, 01b, 01b, 01b, 01b, 01b, 02b, 02b, 02b, 02b, 00b,
    02b, 02b, 02b, 02b, 02b, 01b, 02b, 01b, 02b, 02b, 02b, 02b, 02b, 02b, 02b,
    02b, 02b, 02b, 02b, 02b, 01b, 02b, 01b, 02b, 02b, 02b, 02b, 02b, 02b, 02b,
    02b, 02b, 02b, 02b, 02b, 01b, 01b, 01b, 01b, 01b, 02b, 02b, 02b, 02b, 02b,
    02b, 02b, 02b, 02b, 02b, 02b, 02b, 01b, 02b, 01b, 02b, 02b, 02b, 02b, 02b,
    02b, 02b, 02b, 02b, 02b, 02b, 02b, 01b, 02b, 01b, 02b, 02b, 02b, 02b, 02b,
    00b, 02b, 02b, 02b, 02b, 01b, 01b, 01b, 01b, 01b, 02b, 02b, 02b, 02b, 00b,
    00b, 02b, 02b, 02b, 02b, 02b, 02b, 01b, 02b, 02b, 02b, 02b, 02b, 02b, 00b,
    00b, 00b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 00b, 00b,
    00b, 00b, 00b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 02b, 00b, 00b, 00b,
    00b, 00b, 00b, 00b, 00b, 02b, 02b, 02b, 02b, 02b, 00b, 00b, 00b, 00b, 00b, }

CODESEG
proc enter_graphic_mode
    mov ax, 13h
    int 10h
    ret
endp

proc print_man
    push bx
    push cx
    push dx
    mov cx, [loc_x]
    mov bh, 0h
    mov al, [color]
    mov dx, [loc_y]
;starting to draw a man
;start legs
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h         
;finish legs start body
    sub dx, 5
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h                     
;finish body start right hand
    add cx, 6
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    sub dx, 1
    mov ah, 0ch 
    int 10h                     
;finish right hand start left hand
    sub cx, 5
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h                 
;finish left hand start head outline
    add cx, 3
    mov ah, 0ch 
    int 10h
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
    add cx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 1
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
    add dx, 1
    mov ah, 0ch 
    int 10h
    add cx, 1
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    sub cx, 1
    mov ah, 0ch 
    int 10h
    add dx, 1
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    sub dx, 1
    mov ah, 0ch 
    int 10h
    sub cx, 1
    sub dx, 1
    mov ah, 0ch 
    int 10h                         
;finish head outline start inner head
    add cx, 2
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h
    add cx, 1
    mov ah, 0ch 
    int 10h
    sub dx, 2
    mov ah, 0ch 
    int 10h
    sub cx, 2
    mov ah, 0ch 
    int 10h                         
;finish inner head start neck
    add cx, 1
    add dx, 5
    mov ah, 0ch 
    int 10h
;finish neck now reset
    add dx, 10
    sub cx, 2
    mov bl, cl
    pop dx
    pop cx
    pop bx
    ret
endp

proc rand
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
endp rand

proc draw_coin
    
    ret
endp draw_coin

proc move_left
    mov [color], 0
    call print_man
    dec [loc_x]
    mov [color], 15
    call print_man
    ret
endp

proc move_right
    mov [color], 0
    call print_man
    inc [loc_x]
    mov [color], 15
    call print_man
    ret
endp

Start:
    mov ax, @data
    mov ds, ax
    call enter_graphic_mode
    mov bl, 158
    call print_man
hey:
    mov al, 0h
    mov ah, 07h
    int 21h
    cmp al, "a"
    je left
    cmp al, "d"
    je right
    jmp hey
left:
    call move_left
    jmp hey
right:
    call move_right
    jmp hey
Exit:
    mov ax, 4C00h
    int 21h
END start



        ; random numbers

        ; get time
    ; mov ah, 2Ch 
    ; int 21h
        ; set seed as secs:mi secs
    ; mov [NextRandom], dx
        ; get (pseudo) random number
    ; call rand
        ; returns it in ax