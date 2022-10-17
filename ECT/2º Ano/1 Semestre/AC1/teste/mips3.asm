#Mapa de registos
#n_even: $t0
#n_odd: $t1
#p1: $t2
#p2: $t3
	.data
	.eqv p_char,11
	.eqv p_int,1
	.eqv p_string,4
	.eqv r_int,5
	.eqv N,28
a:	.space 28
b1:	.space 28
	.text
	.globl main
main:	li $t0,0		#n_even = 0;
	li $t1,0		#n_odd = 0;
	la $t2,a		#p1 = a;
	addiu $t4,$t2,N		#$t4 = a + N
	
for:	bge $t2,$t4,wfor	#while(p < (a + N)){

	li $v0,r_int
	syscall			#read_int();
	
	sw $v0,0($t2)		#*p1 = read_int();
	addi $t2,$t2,4		#*p1++
	
	j for			#}

wfor:	la $t2,a		#p1 = a
	la $t3,b1		#p2 = b
	
	
for2:	bge $t2,$t4,wfor2	##while(p1 < (a + N))

	lw $t5,0($t2)
	rem $t6,$t5,2		#$t6 = *p1 % 2
		
if:	beqz $t6,else		#while(*p1 % 2 != 0){
		
	sw $t5,0($t3)		#*p2 = *p1
	addi $t3,$t3,4		#*p2++, percorrer a posicao

	addi $t1,$t1,1		#n_odd++
	
	j adder

else:	addi $t0,$t0,1		#n_even++

adder:	addi $t2,$t2,4		#p1++

	j for2			#}

wfor2:	la $t3,b1		#p2 = b
	sll $t1,$t1,2		#n_odd * 4
	addu $t4,$t3,$t1	#$t4 = b + n_odd
	
for3:	bge $t3,$t4,end		#while(p2 < (b + n_odd)){

	lw $a0,0($t3)		#$a0 = *p2
	li $v0,p_int
	syscall			#print_int(*p2)
	
	li $a0,','
	li $v0,p_char		#print_char(',')
	syscall
	
	addi $t3,$t3,4		#*p2++
	
	j for3			#}

end: 	jr $ra