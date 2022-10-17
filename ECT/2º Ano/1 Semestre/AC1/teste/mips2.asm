#Mapa de registos
#i: $t0
#v: $t1
#val[i]: $t2
#val[i], percorrer array: $t3
#SIZE/2: $t4
	.data
	.eqv p_char,11
	.eqv p_int,1
	.eqv p_string,4
	.eqv r_int,5
	.eqv SIZE, 8
arr:	.asciiz "Result is:: "
val:	.word 8,4,15,-1987,327,-9,27,16
	.text
	.globl main
main:	
	li $t0,0		#i = 0;
	la $t2,val		#$t2 = val[i];
	li $t4,SIZE		
	div $t4,$t4,2		#$t4 = SIZE/2
	
do:	sll $t3,$t0,2		#ciclos de $t0, aumenta 0,4,8,12 posicoes
	addu $t6,$t3,$t2	#percorrer o val[i]($t2), somando o valor de ciclos de $t0
	
	lw $t1,0($t6)		#v = val[i];
	lw $t5,16($t6)		#v[SIZE/2] = val[i + SIZE/2];
	
	sw $t1,16($t6)		#val[i] = val[i + SIZE/2];
	sw $t5,0($t6)		#val[i + SIZE/2] = val[i];
	
	addi $t0,$t0,1		#i++;
	
while:	bge $t0,$t4,print 	#while (++i < (SIZE/2));
	j do

print:	la $a0,arr
	li $v0,p_string		#print_string("Result is: ");
	syscall
	
	li $t0,0		#i = 0;
	
do2:	sll $t3,$t0,2		#ciclos de $t0, aumenta 0,4,8,12 posicoes
	addu $t6,$t3,$t2	#percorrer o val[i]($t2), somando o valor de ciclos de $t0
	
	lw $a0,0($t6)
	li $v0,p_int		#print_int10(val[i++])
	syscall

	li $a0,','
	li $v0,p_char		#print_char(',');
	syscall
	
	addi $t0,$t0,1		#i++;

while2:	bge $t0,SIZE,end	#while (i < SIZE)
	j do2

end:	jr $ra			#}


	
