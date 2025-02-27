.text
main:

    li a7, 5
    ecall
    mv t0, a0 
    
    li a7, 5
    ecall
    mv t1, a0
    
    li a7, 5
    ecall
    mv t2, a0
    
    li a7, 5
    ecall
    mv t3, a0
    
    add a0, t0, t2
    
    li a7, 1
    ecall
    
    li a7, 11
    li a0, '\n'
    ecall
    
    add a0, t1, t3
    
    li a7, 1
    ecall
    
    li a7, 11
    li a0, '\n'
    ecall