.model small
.stack 100h
.data
    s1 db 'nhap so a: $'
    s2 db 10,13, 'nhap so b: $'
    s3 db 10,13, 'a lon hon b$'
    s4 db 10,13, 'b lon hon a$'
.code
    main proc
        mov ax, @data  
        mov ds, ax
        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah, 1
        int 21h
        mov bh, al ;bh chua b
                   
        mov ah,9
        lea dx,s2
        int 21h
        
        mov ah,1
        int 21h
        mov bh, al
                   
        cmp bl, bh
        jg agreater 
        
        mov ah,9
        lea dx,s4
        int 21h
        jmp kt
        
agreater:
    mov ah,9
    lea dx, s3
    int 21h 
    jmp kt
kt:
    mov ah,4ch
    int 21h
   
    
    main endp
    end main                
        
       
                    
    