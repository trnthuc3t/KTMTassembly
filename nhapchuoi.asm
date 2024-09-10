.model samll
.stack 100h
.data  
    thongbao db 10,13,'chuoi da nhap la $'
    chuoi db 100 dup('$') 
    
.code
    main proc 
        mov ax, @data
        mov ds,ax
        
        mov ah, 10
        lea dx, chuoi
        int 21h
        
        mov ah,9
        lea dx, thongbao
        int 21h
        
        lea dx, chuoi+2
        int 21h
        
        mov ah, 4ch
        int 21h    
                      
main endp
    end main