.model small
.stack 100h
.data
    s1 db 'nhap ki tu cuoi: $'
    s2 db 10,13,'nhap ki tu cuoi: $'
.code
    main proc 
        mov ax, @data
        mov ds, ax        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,1
        int 21h
        
        mov bl,al
        
        mov ah,9
        lea dx,s2
        int 21h
        mov ah, 1
        int 21h
        mov bh,al
        mov ah,2
        mov dl, bl
intiep:
        int 21h
        inc dl ;
        cmp dl,bl
        jle intiep
kt:
        mov ah,4ch
        int 21h 
        
        main endp
    end main
            