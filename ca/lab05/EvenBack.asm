.text

main:
    li a7, 5
    ecall
    mv t0, a0
    beqz t0, end

    li t1, 0
    li t3, 0
    li t5, 2
    li s1, 0

read_loop:
    li a7, 5
    ecall
    rem t6, a0, t5
    bnez t6, next

    addi sp, sp, -4
    sw a0, 0(sp)
    addi t3, t3, 1
    addi s1, s1, 1

next:
    addi t1, t1, 1
    bne t1, t0, read_loop

    li t1, 0

result:
    beqz s1, end
    lw a0, 0(sp)
    li a7, 1
    ecall

    li a7, 11
    li a0, '\n'
    ecall

    addi sp, sp, 4
    addi t1, t1, 1
    bne t1, t3, result

end:
    li a7, 11
    li a0, '\n'
    ecall