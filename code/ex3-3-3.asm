org  100h



jmp start
    array       db 1, 99 dup(0)
    row         dw 0
    size        dw 10
    prev_cx     dw 0
    current_cx  dw 0
     
     
start:
    ; set the loop to loop over the last 9 rows
    mov cx, size
    dec cx
    
    ; gets the offset of the second row of the array
    mov si, offset array
    add si, size
    
    ; set bx as the row counter
    mov bx, row 
    
             
    ; looping over the rows 
    ROW_LOOP:
        ; sets the start and end of the row 
        mov [si], 1
        inc bx
        mov [si + bx], 1
        
        ; checks if to loop
        cmp bx, 1
        je SKIP_LOOP
        
        ; saves the current cx
        mov prev_cx, cx
        
        ; sets the cx for the column loop
        mov cx, row
        inc cx
        mov current_cx, cx
        
        ; looping over the column
        COL_LOOP:
            sub si, size
            mov ax, [si]
            inc si
            add ax, [si]
            add si, size 
            mov [si], ax
                                 
        loop COL_LOOP
        
        ; reset si
        sub si, current_cx
        
        
        ; set cx back to its original value
        mov cx, prev_cx
        
        SKIP_LOOP:
            ; increase the row index
            inc row
            
            ; increase the index of the array to the next row
            add si, size
    
    loop ROW_LOOP
         
            

 
             
	
 
mov     ah, 0
int     16h
ret


;include magshimim.inc
