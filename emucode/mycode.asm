.model small
.stack 100h
.data
    s   db  'helo first assembly program$'
.code
        main proc
        mov ax, @data
        mov ds,ax
        ; hien xau ki tu
           ; label ma lenh cua hang
        mov ah,9
        mov dx,offset s
        int 21h
        ; kethucchuonwg trinh
        mov ah,  4ch ;mov ax, 4c00
        int 21h
        main endp
        end main  