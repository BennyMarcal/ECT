#MAPA DE REGISTOS
#T0 - 
#T1 - LEN
#a0 - str[]	
	.data
	.eqv p_int,1
arr:	.asciiz "Arquitetura de Computadores 1"
	.text
	.globl main
main: 	addiu $sp,$sp,-4
	sw $ra,0($sp)

	la $a0,arr
	jal strlen
	
	move $a0,$v0
	li $v0,p_int
	syscall
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
end:	jr $ra


strlen: li $t1,0 # len = 0;

while: 	lb $t0,0($a0) # while(*s++ != '\0')
 	addiu $a0,$a0,1 #s++
 	beq $t0,'\0',endw # {
 	addi $t1,$t1,1 # len++;
 	j while # }
 	
endw: 	move $v0,$t1 # return len;
	jr $ra 