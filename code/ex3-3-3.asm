org  100h



jmp start
    array       db 1, 99 dup(0)
    row         dw 1
    size        dw 10
    prev_cx     dw 0
     
     
start:
    ; set the loop to loop over the last 9 rows
    lea cx, [size - 1]
    
    ; gets the offset of the array
    mov si, offset array 
    
             
    ; looping over the rows 
    ROW_LOOP:
        ; sets the end of the row
        mov bx, row
        mov [si + bx], 1
        
        ; saves the current cx
        mov prev_cx, cx
        
        ; sets the cx for the column loop
        lea cx, [row - 1]
        
        ; looping over the column
        COL_LOOP:
            sub si, bx
            mov ax, [si]
            inc si
            add ax, [si]
            add si, bx 
            mov [si], ax
                                 
        loop COL_LOOP
        
        ; set cx back to its original value
        mov cx, prev_cx
        
        ; increase the row index
        inc row
        
        ; increase the index of the array to the next row
        add si, size
         
            

 
             
	
 
mov     ah, 0
int     16h
ret


;include magshimim.inc
