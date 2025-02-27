.text

main:
    li a7, 5
    ecall
    mv t0, a0 
    bgez t0, positive
    neg t0, t0 
    
positive:
    addi a0, zero, 0  
    li t1, 10       
    
sum_loop:
    beqz t0, result  
    rem t2, t0, t1    
    add a0, a0, t2   
    div t0, t0, t1  
    j sum_loop
    
result:
    li a7, 1
    ecall
    
    li a7, 11
    li a0, '\n'
    ecall