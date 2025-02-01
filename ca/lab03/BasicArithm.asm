.text 
main:
	#читаем значения
	li a7, 5
	ecall
	add t0, a0, zero
	
	li a7, 5
	ecall
	add t1, a0, zero
	
	#(x + 5) - (y - 7)
	addi a0, t0, 5
	addi t2, t1, -7
	sub a0, a0, t2
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#2 * x * x - 3 * y + 4
    	slli t2, t0, 1
    	mul t3, t2, t0
    	slli t4, t1, 1
    	add t4, t4, t1
    	sub t5, t3, t4
    	addi a0, t5, 4
    	
    	li a7,1
    	ecall
    	
    	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#(x + 5) / y + 10 / (y - 1)
    	addi t2, t0, 5
    	addi t3, t1, -1
    	div t4, t2, t1
    	li t6, 10
    	div t5, t6, t3
    	add a0, t4, t5
    	
    	li a7, 1
    	ecall
    	
    	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#(x / y) * y + x % y
    	div t2, t0, t1
    	mul t2, t2, t1
    	rem t3, t0, t1
    	add a0, t2, t3
    	
    	li a7, 1
    	ecall
    	
    	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#x > y ? 1 : 0
    	slt t2, t1, t0   
    	add a0, zero, t2
    	
    	li a7, 1
    	ecall
    	
    	li a7, 11
    	li a0, '\n'
    	ecall