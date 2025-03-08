.text

main:
    li a7, 5
    ecall
    mv s0, a0

    slli t1, s0, 2
    addi t1, t1, 16
    sub sp, sp, t1
    mv s1, sp
    mv t2, s0

read_loop:
    beqz t2, start_sort
    li a7, 5
    ecall
    sw a0, 0(s1)
    addi s1, s1, 4
    addi t2, t2, -1
    j read_loop

start_sort:
    mv s1, sp
    mv s2, s0
outer_loop:
    li t2, 0
    addi t3, s2, -1
inner_loop:
    beqz t3, next_pass
    mv t4, s1
    slli t5, t2, 2
    add t6, t4, t5
    lw a1, 0(t6)
    lw a2, 4(t6)
    ble a1, a2, no_swap
    sw a2, 0(t6)
    sw a1, 4(t6)
no_swap:
    addi t2, t2, 1
    addi t3, t3, -1
    j inner_loop
next_pass:
    addi s2, s2, -1
    bgtz s2, outer_loop

    mv s1, sp
    mv t1, s0
print_loop:
    beqz t1, finish_print
    lw a0, 0(s1)
    li a7, 1
    ecall
    li a7, 11
    li a0, ' '
    ecall
    addi s1, s1, 4
    addi t1, t1, -1
    j print_loop

finish_print:
    li a7, 11
    li a0, '\n'
    ecall
    add sp, sp, t1
    li a7, 10
    ecall