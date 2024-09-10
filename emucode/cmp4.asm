.model small
.stack 100h
.data
.code
    main proc
        mov ah,1
        int 21h
          mov bl,al
        mov ah,1
        int 21h
        mov cl,al
        mov ah,2
        mov dl,bl
    intiep:
        int 21h
        mov bl,dl
        mov dl,32
        mov ah,2
        int 21h
        mov dl,bl
        inc dl
        cmp dl,cl
        jle intiep
        mov ah,4ch
main endp
    end main
