IDEAL

MODEL small

STACK 256

DATASEG
x dw 158
y dw 199
color db 15

CODESEG
proc enter_graphic_mode
    mov ax, 13h
    int 10h
    ret
endp

proc print_dot_from_memory
    push bx
    push cx
    push dx

    mov bh, 0h 
    mov cx, [x] 
    mov dx, [y] 
    mov al, [color] 
    mov ah, 0ch 
    int 10h

    pop dx
    pop cx
    pop bx
    ret
endp
proc color_pixel
    call enter_graphic_mode

next:
    call print_dot_from_memory

    ret
endp

proc print_man
    call enter_graphic_mode
    push bx
    push cx
    push dx
    mov bh, 0h 
    mov al, [color] 
    mov cx, [x]
    mov dx, [y]
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

    pop dx
    pop cx
    pop bx
    ret
endp


Start:
    mov ax, @data
    mov ds, ax

    call print_man
next:
    mov ah, 07h
    int 21h
    cmp al, "a"
    je left
    cmp al, "d"
    je right
    jmp next
left:

right:


Exit:
    mov ax, 4C00h
    int 21h
END start