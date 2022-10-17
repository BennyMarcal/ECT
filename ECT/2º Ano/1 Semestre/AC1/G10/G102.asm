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
cin:	.double 0.5
um:	.double 1.0
zer:	.double 0.0
str:	.space 24 	#array de double, vezes 8
arr:	.asciiz "O seu máximo é: "
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	li $v0,r_double
	syscall
	
	mov.d $f12,$f0
	jal sqrt
	
	mov.d $f12,$f0
	li $v0,p_double
	syscall
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	
	jr $ra

#############################################################
#$f12 - val;$f2 - aux; $f4 - xn; $t0 - i 
sqrt:	l.d $f2,um		#aux = 1.0; 
	l.d $f4,um		#xn = 1.0;
	li $t0,0			#int i = 0; 
	l.d $f6,zer		#0.0
	l.d $f8,cin		#0.5
	
ifs:	c.le.d $f12,$f6
	bc1t elses		#if(val > 0.0) 
	
dos:	mov.d $f2,$f4		#aux = xn

	div.d $f10,$f12,$f4	#x = val/xn
	add.d $f10,$f10,$f4	#x = x + xn
	mul.d $f4,$f10,$f8	# 
	
while:	c.eq.d $f2,$f4		# aux = xn
	bc1t ends		#vai pro end
	addiu $t0,$t0,1		#++i
	bge $t0,25,ends		#++i < 25;
	j dos		

elses:	l.d $f4,zer		#else
				#xn = 0.0; 
ends:	mov.d $f0,$f4
	jr $ra			#return xn;
