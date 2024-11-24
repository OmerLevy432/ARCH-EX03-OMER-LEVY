org  100h   

      
mov al, 0x80
mov ah, 0x7f

cmp ah, al
je EQUAL_CMP
jmp POST_EQUAL
 
 
EQUAL_CMP:  
    PRINTN 'AH and AL are equal'
    jmp END_OF_PROGRAM
    

POST_EQUAL:      
    cmp ah, al
    ja UNSIGNED_AH_BIGGER
    PRINTN 'Unsigned comparison: AH is smaller'
    jmp POST_UNSIGNED_CMP


UNSIGNED_AH_BIGGER:
    PRINTN 'Unsigned comparison: AH is bigger'

POST_UNSIGNED_CMP:
    cmp ah, al
    jg SIGNED_AH_BIGGERR
    PRINTN 'Signed comparison: AH is smaller'
    jmp END_OF_PROGRAM

SIGNED_AH_BIGGERR:
    PRINTN 'Signed comparison: AH is bigger'
    
END_OF_PROGRAM:
             
	
 
mov     ah, 0
int     16h
ret


include magshimim.inc



