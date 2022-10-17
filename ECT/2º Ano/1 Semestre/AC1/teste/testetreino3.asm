#Mapa de Registos
#n_even: $t0
#n_odd: $t1
#p1/*p1: $t2 
#p2/*p2: $t3
	.data
	.eqv p_string,4
	.eqv r_int,5	
	.eqv p_int,1
	.eqv p_char,11
	.eqv N,12
a:	.space 12
b1:	.space 12
	.text 
	.globl main
main:	li $t0,0		#n_even = 0
	li $t1,0		#n_odd = 0
	la $t2,a		#p1 = a
	addi $t4,$t2,N		#$t4= a + N
for:		
	bge $t2,$t4,wfor	#while(p1 < (a + N))
	
	li $v0,r_int		#*p1 = read_int()
	syscall
	
	sw $v0,0($t2)		#p1
	
	addiu $t2,$t2,4		#p1++ , adicionar de 4 em 4 nos ponteiros
	
	j for
	
wfor:	la $t2,a		#p1 = a
	la $t3,b1		#p2 = b
	
for2:	bge $t2,$t4,w1for	#while(p1 < (a + N))
	
	lw $t5,0($t2)		#$t5 = *p1	
	addiu $t2,$t2,4		#p1++
	
	rem $t6,$t5,2		#*p1 % 2
if:	beqz $t6,else		#if (*p1 % 2 != 0)
	
	sw $t5,0($t3)		#*p2 = *p1	
				#
	addiu $t3,$t3,4		#*p2++	
	addi $t1,$t1,1		#n_odd++
	
	j for2
	
else:	addi $t0,$t0,1		#n_even ++

	j for2
	
w1for:	la $t3,b1		#p2 = b
	sll $t1,$t1,2		#n_odd * 4, 4 bits
	addu $t4,$t3,$t1	#b + n_odd
	
for3:	bge $t3,$t4,end		#while (p2 < (b + n_odd))
	
	lw $a0,0($t3)
	li $v0,p_int
	syscall			#print_int10(*p2)
	
	addiu $t3,$t3,4		#p2++	
	
	li $a0,','
	li $v0,p_char
	syscall
	
	j for3
	
end: 	jr $ra
	
