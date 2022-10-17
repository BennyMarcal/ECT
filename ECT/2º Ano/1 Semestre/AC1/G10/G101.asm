	.data
	.eqv p_float, 2
	.eqv p_double, 3
	.eqv p_string, 4
	.eqv p_int10, 1
	.eqv r_int, 5
	.eqv r_float, 6
	.eqv r_double, 7
	.eqv p_char, 11
	.eqv SIZE,3
um:	.float 1.0
tre:	.float 3.0
str:	.space 24 	#array de double, vezes 8
arr:	.asciiz "O seu máximo é: "
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	l.s $f12,tre
	li $a0,2
	jal xtoy
	
	mov.s $f12,$f0
	li $v0,p_float
	syscall
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	
	jr $ra
#########################################
#x = $f12, y = $a0, i = $t0, result = $f2, abs(y) - $t2
xtoy:	addiu $sp,$sp,-12
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)

	li $t0,0			#i=0
	l.s $f2,um		#result=1.0
	
	jal abso			#abs(y)
	move $t2,$v0
	
forx:	bge $t0,$t2,endforx	#for(i=0, result=1.0; i < abs(y); i++) 
	
ifx:	blez $a0,elsex
	mul.s $f2,$f2,$f12
	j endifx
	
elsex:	div.s $f2,$f2,$f12

endifx:	addi $t0,$t0,1
	j forx
	
endforx:	mov.s $f0,$f2

	lw $s1,8($sp)
	lw $s0,4($sp)
	lw $ra,0($sp)
	addiu $sp,$sp,12
	jr $ra
#########################################
#val = $a0			#int abs(int val) 
abso:	move $v0,$a0

ifa:	bgez $v0,enda		#if(val < 0) 
	mul $v0,$v0,-1		#val = -val; 
	
enda:	jr $ra			#return val; 
