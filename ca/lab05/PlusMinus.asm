.text

main:
    li a7, 5
    ecall
    mv t0, a0
    li t1, 0
    li t4, 0
    li t2, 2

sum_loop:
    beqz t0, result
    li a7, 5
    ecall
    mv t3, a0

    rem t5, t1, t2
    beqz t5, even
    j odd

even:
    add t4, t4, t3
    j continue

odd:
    sub t4, t4, t3

continue:
    addi t0, t0, -1
    addi t1, t1, 1
    j sum_loop

result:
    li a7, 1
    mv a0, t4
    ecall

    li a7, 11
    li a0, '\n'
    ecall