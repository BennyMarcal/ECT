	.data
	.eqv p_float, 2
	.eqv p_double, 3
	.eqv p_string, 4
	.eqv p_int10, 1
	.eqv r_int, 5
	.eqv r_float, 6
	.eqv r_double, 7
	.eqv p_char, 11
nov:	.double 9.0
cin:	.double 5.0
ttd:	.double 32.0
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)

	li $v0,r_double
	syscall
	
	mov.d $f12,$f0
	jal f2c
	
	mov.d $f12,$f0
	li $v0,p_double
	syscall
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
	jr $ra
	
f2c:	l.d $f2,nov
	l.d $f4,cin
	l.d $f6,ttd
	div.d $f2,$f4,$f2
	sub.d $f12,$f12,$f6
	mul.d $f12,$f12,$f2
	
	mov.d $f0,$f12
		
	jr $ra