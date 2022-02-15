IDEAL

MODEL small

STACK 256

DATASEG

sound_timer dw 0
note dw 1715
message db 'Press any key to exit',13,10,'$'

CODESEG

Start:
    mov ax, @data
    mov ds, ax

    in al, 61h
    or al, 00000011b
    out 61h, al
    ; send control word to change frequency
    mov al, 0B6h
    out 43h, al
    ; play frequency 131Hz
    mov ax, [note]
    out 42h, al ; Sending lower byte
    mov al, ah
    out 42h, al ; Sending upper byte
    ; wait for any key
    mov dx, offset message
    mov ah, 9h
    int 21h
    mov ah, 1h
    int 21h
    ; close the speaker
    in al, 61h
    and al, 11111100b
    out 61h, al
    exit :
    mov ax, 4C00h
    int 21h


    ; mov cx, 500h
    ; mov bx, 9999h
    ; mov ax, 5000
; hello:
;     mov al, 182
;     out 43h, al
;     mov ax, cx

;     out 42h, al
;     mov al, ah
;     out 42h, al
;     in  al, 61h

;     or al, 00000011b
;     out 61h, al

; exit:
;     dec [sound_timer]
;     jne hello
;     in al, 61h
;     mov al, 11111100b
;     out 61h, al
END start