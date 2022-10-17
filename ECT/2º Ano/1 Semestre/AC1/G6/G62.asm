#Mapa de registos
#arr: $t0
#**p: $t1
#**pultimo: $t2
#p: $t4
#pultimo $t5	
	.data
	.eqv p_string,4
	.eqv p_char,11
	.eqv SIZE,12
arr:	.word arr1,arr2,arr3
arr1:	.asciiz "Array"
arr2:	.asciiz "de"
arr3:	.asciiz "Ponteiros"
	.text
	.globl main
main:	la $t0,arr

	addiu $t5, $t0,SIZE

for:	bge $t0,$t5,end
	lw $t3,0($t0)
	
	move $a0,$t3
	li $v0,p_string
	syscall
	
	li $a0,'\n'
	li $v0,p_char
	syscall
	
	addi $t0,$t0,4
	
	j for
end:	jr $ra
	
	