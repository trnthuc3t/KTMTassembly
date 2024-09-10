.model small
.stack 100h
.data
     tb1 db 'nhap vao 1 chuoi $'
     tb2 db 10,13,'tong chieu dai cua chuoi la $'
     s db 100 dup('$')
.code
main:
    mov ax, @data
    mov ds,ax
    
    lea dx, tb1
    mov ah,9
    int 21h
    
    lea dx, s
    mov ah,10 ;nhap chuoi s
    int 21h               
    
    ;xuat chuoin tb2
    mov ah,9
    lea dx, tb2
    int 21h
    
    ;tinh chieu dai chuoi
    mov ax,0
    mov al,s+1 ;chuyen chieu dai vao ax
    mov cx,0  ;khoi tao bien dem
    mov bx, 10 ;khoi tao so chia
lapdem1:   ; day cac so vao ngan xep
    mov dx,0  ; khoi tao phan du bang 0
    div bx  ; chia cho 10
    push dx   ; ;ay phan tu day vao ngan xep
    inc cx
    cmp ax, 0   ; so sanh phan thuong
    jnz lapdem1
    ; xuat chieu dai chuoi
    mov ah,2
lapdem2:
    pop dx  ; chua so du trong phep chia
    add dx,'0' ; chuyen chu so -> so
    mov ah,2
    int 21h
    loop lapdem2
    
    mov ah,4ch
    int 21h
    

end main         