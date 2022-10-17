# Mapa de registos
# p: $t0
# pultimo:$t1
# *p $t2
# soma: $t3 
	.data
	.eqv p_int,1
	.eqv SIZE,5
array:	.word 10, 23, 5, 2, 10
	.text
	.globl main
main:	
	la $t0,array
	li $t4,SIZE
	sub $t4,$t4,1
	sll $t4,$t4,2		#açao meio que multiplicadora
	#mul $t4,$t4,4		#acao mm multiplicadora
	addu $t1,$t4,$t0
	
while:	bgtu $t0,$t1,endw
	lw $t2,0($t0)		#carregar diferente posicao do array
	addu $t3,$t3,$t2 
	addi $t0,$t0,4		#4 em 4 pq esta merda nos bits tem sempre 4
	
	j while
	
endw:	move $a0,$t3
	li $v0,p_int
	syscall
	
	jr $ra
