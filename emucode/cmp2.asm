.model small
.stack 100h
.data

.code
    main proc
        
      
       mov ah,2
       mov dl,48
       
intiep:                       
        
       int 21h 
       mov bl,dl
       mov dl, 32
       int 21h
       mov dl,bl    
            
              
                          
       inc dl
       cmp dl,57 
       jg kt  
       
       jmp intiep
kt:
        mov ah, 4ch
        int 21h       
         
    main endp
end main    