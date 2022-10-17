	.data
	.eqv p_float, 2
	.eqv p_double, 3
	.eqv p_string, 4
	.eqv p_int10, 1
	.eqv r_int, 5
	.eqv r_float, 6
	.eqv r_double, 7
	.eqv p_char, 11
num:	.float 2.59375
zero:	.float 0.0
	.text
	.globl main
main:	li $v0,r_int
	syscall
	
	move $t0,$v0
	
	mtc1 $t0,$f2		#converter de "inteiro" para float
	cvt.s.w $f2,$f2
	
	l.s $f4,num		#fazer li/la em float
	mul.s $f2,$f2,$f4
	
	mov.s $f12,$f2
	li $v0,p_float
	syscall
	
while:	l.s $f4,zero
	c.eq.s $f2,$f4
	bc1f main
	
end:	li $v0,0
	jr $ra
	
	