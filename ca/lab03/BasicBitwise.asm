.text 
main:
	#читаем значения
	li a7, 5
	ecall
	add t0, a0, zero
	
	li a7, 5
	ecall
	add t1, a0, zero
	
	#(x >> 2) + ((y - 1) << 3) where >> is logical shift
	srli t2, t0, 2
	addi t3, t1, -1
	slli t3, t3, 3
	add a0, t2, t3
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
	
	#(x << y) - 10
	sll t3, t0, t1
	addi a0, t3, -10
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
	
	#(x >> y) + 10 where >> is arithmetical shift
	sra t3, t0, t1
	addi a0, t3, 10
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#((x << 2) - y + 5) >> 1 where >> is arithmetical shift
    	slli t2, t0, 2
    	sub t2, t2, t1
    	addi t2, t2, 5
    	srai a0, t2, 1
    	
    	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#x * 6 - y * 3
    	slli t2, t0, 2
    	slli t3, t0, 1
    	add t3, t3, t2
    	slli t4, t1, 1
    	add t4, t4, t1
    	sub a0, t3, t4
    	
    	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'