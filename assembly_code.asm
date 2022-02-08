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
coin1 dw 00h, 00h, 00h, 00h, 00h, 02h, 02h, 02h, 02h, 02h, 00h, 00h, 00h, 00h, 00h
      dw 00h, 00h, 00h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h, 00h, 00h
      dw 00h, 00h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h, 00h
      dw 00h, 02h, 02h, 02h, 02h, 02h, 02h, 01h, 02h, 02h, 02h, 02h, 02h, 02h, 00h
      dw 00h, 02h, 02h, 02h, 02h, 01h, 01h, 01h, 01h, 01h, 02h, 02h, 02h, 02h, 00h
      dw 02h, 02h, 02h, 02h, 02h, 01h, 02h, 01h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
      dw 02h, 02h, 02h, 02h, 02h, 01h, 02h, 01h, 02h, 02h, 02h, 02h, 02h, 02h, 02h
      dw 02h, 02h, 02h, 02h, 02h, 01h, 01h, 01h, 01h, 01h, 02h, 02h, 02h, 02h, 02h
      dw 02h, 02h, 02h, 02h, 02h, 02h, 02h, 01h, 02h, 01h, 02h, 02h, 02h, 02h, 02h
      dw 02h, 02h, 02h, 02h, 02h, 02h, 02h, 01h, 02h, 01h, 02h, 02h, 02h, 02h, 02h
      dw 00h, 02h, 02h, 02h, 02h, 01h, 01h, 01h, 01h, 01h, 02h, 02h, 02h, 02h, 00h
      dw 00h, 02h, 02h, 02h, 02h, 02h, 02h, 01h, 02h, 02h, 02h, 02h, 02h, 02h, 00h
      dw 00h, 00h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h, 00h
      dw 00h, 00h, 00h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 02h, 00h, 00h, 00h
      dw 00h, 00h, 00h, 00h, 00h, 02h, 02h, 02h, 02h, 02h, 00h, 00h, 00h, 00h, 00h
xcoin dw 0
timer dw 0
game_started db 0
hight dw 0
coin_active db 0
color_coin db 0
touch_check dw 0

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

proc draw_coin
    push bx
    push cx
    push dx
    mov cx, [xcoin]
    mov bh, 0h
    mov dx, [hight]
    mov al, [color_coin]
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
    mov [color], 0
    call print_man
    sub [loc_x], 3
    mov [color], 15
    call print_man
    ret
endp

proc move_right
    mov [color], 0
    call print_man
    add [loc_x], 3
    mov [color], 15
    call print_man
    ret
endp

proc coins_generator
    call rand_pos
    mov [hight], 0
    mov [coin_active], 1
    mov [color_coin], 14
    call draw_coin
    ret
endp

proc touch
    mov [color_coin], 0
    call draw_coin
    mov [coin_active], 0
    ret
endp

Start:
    mov ax, @data
    mov ds, ax
    call enter_graphic_mode
    mov bl, 158
    call print_man
hey:
    mov al, 0h ;        ־\_
    mov ah, 07h;           |-  need to work on to debug
    int 21h    ;        _/־
    cmp al, " "
    je game
    cmp [game_started], 0
    je hey
    cmp al, "a"
    je left
    cmp al, "d"
    je right
one:
    cmp [coin_active], 1
    je move_coin
    jmp generate_coin
left:
    call move_left
    jmp one
right:
    call move_right
    jmp one
game:
    mov [game_started], 1
    jmp hey
move_coin:
    mov [color_coin], 0
    call draw_coin
    add [hight], 1
    mov [color_coin], 14
    call draw_coin
    cmp [hight], 195
    jge lose
    cmp [hight], 165
    jge may_touch
    jmp hey
lose:
    mov [color_coin], 0
    call draw_coin
    mov [coin_active], 0
    jmp hey
may_touch:
    mov ax, [loc_x]
    mov [touch_check], ax
    mov ax, [xcoin]
    sub [touch_check], ax
    cmp [touch_check], 15
    jg hey
    cmp [touch_check], -15
    jl hey1
    call touch
generate_coin:
    call coins_generator
    jmp hey
hey1:
    jmp hey
Exit:
    mov ax, 4C00h
    int 21h
END start