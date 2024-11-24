org  100h   

      
mov ax, 5
mov cx, ax     
dec cx


FACTORIAL:
    mul cx
    dec cx
    cmp cx, 0
    jne FACTORIAL
    
    
    
call print_num
PRINTN
 
             
	
 
mov     ah, 0
int     16h
ret 

include magshimim.inc



