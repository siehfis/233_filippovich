.text 
main:
	#читаем значения
	li a7, 5
	ecall
	add t0, a0, zero
	
	li a7, 5
	ecall
	add t1, a0, zero
	
	#x & (-1 << 2)
	li t2, -1
    	slli t2, t2, 2
	and a0, t0, t2
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#x | (-1 >> 30) where >> is logical shift
    	li t2, -1
    	srli t2, t2, 30
	or a0, t0, t2
	
	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#set the y-th bit of x to 1 (bit numbers start from 0)
    	li t2, 1
    	sll t2, t2, t1
    	or a0, t0, t2
    	
    	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#reset the y-th bit of x to 0 (bit numbers start from 0)
  	li t2, 1
  	sll t2, t2, t1
  	not t2, t2
  	and a0, t0, t2
    	
    	li a7, 1
	ecall
	
	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#(x == (y + 3)) ? 0 : 1
    	addi t2, t1, 3
    	slt t3, t0, t2    
    	slt t4, t2, t0    
    	or t5, t3, t4    
    	add a0, zero, t5
    	
    	li a7, 1
	ecall

	li a7, 11
    	li a0, '\n'
    	ecall
    	
    	#x > -5 & y < 5
    	li t2, -5
    	li t3, 5
    	slt t4, t2, t0
    	slt t5, t1, t3
    	and a0, t4, t5
	
    	li a7, 1
	ecall

	li a7, 11
    	li a0, '\n'
    	ecall