.text
main:
    li a7, 5
    ecall
    mv t0, a0
    beqz t0, end

    lui sp, 0x10010
    mv s0, sp
    li s1, 0

read_loop:
    beqz t0, print_all
    li a7, 5
    ecall
    mv t1, a0

    mv t2, s0
    mv t3, s1

check_loop:
    beqz t3, stack_loop
    lw t4, 0(t2)
    beq t4, t1, skip_loop
    addi t2, t2, 4
    addi t3, t3, -1
    j check_loop

stack_loop:
    sw t1, 0(sp)
    addi sp, sp, 4
    addi s1, s1, 1

skip_loop:
    addi t0, t0, -1
    j read_loop

print_all:
    mv t0, s0
    mv t1, s1

result:
    beqz t1, end
    lw a0, 0(t0)
    li a7, 1
    ecall

    li a7, 11
    li a0, '\n'
    ecall

    addi t0, t0, 4
    addi t1, t1, -1
    j result

end:
    li a7, 11
    li a0, '\n'
    ecall