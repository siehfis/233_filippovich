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

    li t3, 1
    mv t4, a0

pow:
    beqz t4, end
    li t5, 10
    mul t3, t3, t5
    addi t4, t4, -1
    j pow

end:
    mul t0, t0, t3
    div t0, t0, t1
    fcvt.d.w fa0, t0
    fcvt.d.w fa1, t3
    fdiv.d fa0, fa0, fa1
    
    
    li a7, 3
    ecall
    
    li a7, 11
    li a0, '\n'
    ecall
    
    li a7, 10
    ecall