.text
.macro printline()
    mv t0, a0
    li t1, '+'
    li t2, '-'    
line_loop:
    li a7, 11
    mv a0, t1
    ecall
    beqz t0, line_end
    mv a0, t2
    li a7, 11
    ecall
    addi t0, t0, -1
    j line_loop
line_end:
.end_macro

.macro printcell()
    mv t0, a0
    li t1, '|'
    li t2, ' '
cell_loop:
    li a7, 11
    mv a0, t1
    ecall
    beqz t0, cell_end
    mv a0, t2
    li a7, 11
    ecall
    addi t0, t0, -1
    j cell_loop
cell_end:
.end_macro

main:
    jal read_input
    jal print_top
    jal print_grid
    j exit

read_input:
    li a7, 5
    ecall
    mv s0, a0
    li a7, 5
    ecall
    mv s1, a0
    ret

print_top:
    mv a0, s0
    printline
    li a7, 11
    li a0, '\n'
    ecall
    ret

print_grid:
    mv s2, s1
grid_loop:
    beqz s2, exit
    mv a0, s0
    printcell
    li a7, 11
    li a0, '\n'
    ecall
    li t0, 1
    beq s2, t0, print_last
    mv a0, s0
    printline
    li a7, 11
    li a0, '\n'
    ecall
    addi s2, s2, -1
    j grid_loop

print_last:
    mv a0, s0
    printline
    j exit

exit:
    li a7, 10
    ecall