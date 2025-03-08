.text
main:
loop:
    li a7, 5
    ecall
    mv s1, a0
    
    li a7, 5
    ecall
    mv s2, a0
    
    li a7, 5
    ecall
    mv s3, a0

    mv a0, s1
    mv a1, s2
    mv a2, s3
    jal ra, check

    beqz a0, end
    li a1, 1
    beq a0, a1, Y
    
N:
    li a7, 11
    li a0, 'N'
    ecall
    li a0, '\n'
    ecall
    j loop

Y:
    li a7, 11
    li a0, 'Y'
    ecall
    li a0, '\n'
    ecall
    j loop

end:
    li a7, 10
    ecall

check:
    or t0, a0, a1
    or t0, t0, a2
    beqz t0, case0

    add t0, a1, a2
    bgt a0, t0, case1

    add t0, a0, a2
    bgt a1, t0, case1

    add t0, a0, a1
    bgt a2, t0, case1

    li a0, 1
    jr ra

case1:
    li a0, 2
    jr ra

case0:
    li a0, 0
    jr ra