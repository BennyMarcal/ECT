#MAPA DE REGISTOS
#$T0 - res
#$t1 - *s
#$t2 - digit
	.data
	.eqv p_int,1
	.eqv p_string,4
str:	.asciiz "101101"
	.align 2
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,str
	jal itoa
	
	move $a0,$v0
	li $v0,p_int
	syscall
	
	li $t4,0
	
endw:	lw $ra,0($sp)
	addiu $sp,$sp,4
	move $v0,$t4
	jr $ra
	
###############################################################
itoa:	li $t0, 0		#res = 0

while:	lb $t1,0($a0)
	blt $t1,'0',end		#*s >= 0
	bgt $t1,'1',end		#*s <= 1 pra part 2, 9 pra part 1
	
	sub $t2,$t1,'0'  	#digit = *s – '0' 
	addiu $a0,$a0,1		#s++
	
	#part 1
	#mul $t0,$t0,10		#res = 10 * res; 
	#add $t0,$t0,$t2		#res = 10 * res + digit;
	
	#part 2
	sll	$t0,$t0,1	#   res << 1;
	add	$t0,$t0,$t2	#   res = res + digit;
	
	j while
	
end:	move $v0,$t0	
	jr $ra
	
