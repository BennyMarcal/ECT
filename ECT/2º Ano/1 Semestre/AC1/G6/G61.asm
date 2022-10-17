#Mapa de registos
#i: $t0
	.data
	.eqv p_string,4
	.eqv p_char,11
	.eqv SIZE,3
arr:	.word arr1,arr2,arr3
arr1:	.asciiz "Array"
arr2:	.asciiz "de"
arr3:	.asciiz "Ponteiros"
	.text
	.globl main
main:	li $t0,0

for: bge $t0,SIZE,end
	
	la $t1,arr
	sll $t2,$t0,2
	addu $t2,$t2,$t1
	
	lw $a0,0($t2)
	li $v0,p_string
	syscall
	
	li $a0,'\n'
	li $v0,p_char
	syscall
	
	addi $t0,$t0,1
	
	j for
end:	jr $ra