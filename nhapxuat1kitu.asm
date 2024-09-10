.model small
.stack 100h
.data
    nhapvao db "nhap vao 1 ki tu $"
    inra db 13,10,"ki tu da nhap vao la $"
    kytu db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, nhapvao
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    mov kytu, al
    
    lea dx, inra
    mov ah,9   
    int 21h
    
    mov ah,2  
    mov dl,kytu
    int 21h
      
    
    mov ah,4ch
    int 21h
    
main endp
end main