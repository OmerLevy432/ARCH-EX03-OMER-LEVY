org  100h


jmp start
    REGISTER_SIZE equ 16
    num_of_positives dw 0

start:          
    mov ax, 10000011b
    mov cx, REGISTER_SIZE
    
    COUNT_POSITIVE_BITS:
        shl ax, 1
        jb INCREASE_POSITIVE_BITS
        jmp END_OF_LOOP
        
        INCREASE_POSITIVE_BITS:
            inc num_of_positives
            
        
        END_OF_LOOP:
        
    loop COUNT_POSITIVE_BITS 
                            
    mov ax, num_of_positives 
    
    call print_num
    PRINTN

 
             
	
 
mov     ah, 0
int     16h
ret


include magshimim.inc
