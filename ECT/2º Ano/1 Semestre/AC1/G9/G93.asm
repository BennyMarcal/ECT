	.data
	.eqv p_float, 2
	.eqv p_double, 3
	.eqv p_string, 4
	.eqv p_int10, 1
	.eqv r_int, 5
	.eqv r_float, 6
	.eqv r_double, 7
	.eqv p_char, 11
	.eqv SIZE,2
zero:	.double 0.0
str:	.space 16 	#array de double, vezes 8
arr:	.asciiz "A sua média é: "
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $t0,str
	
	li $t2,0
	
forw:	bge $t2,SIZE,endfor

	sll $t3,$t2,3		#como é double, é 8 de cada vez, 2^3
	add $t4,$t0,$t3

	li $v0,r_int
	syscall
	
	mtc1 $v0,$f2
	cvt.d.w $f2,$f2
	
	s.d $f2,0($t4)
	
	addi $t2,$t2,1
	
	j forw
	
endfor:	mtc1 $t0,$f12
	cvt.d.w $f12,$f12
	li $a0,SIZE
	jal average
	
	la $a0,arr
	li $v0,p_string
	syscall
		
	mov.d $f12,$f0
	li $v0,p_double
	syscall
	
	lw $ra,0($sp)
	addi $sp,$sp,4
	li $v0,0
	
	jr $ra
	
average:	move $t0,$a0
	l.d $f2,zero
	
for:	blez $t0,endw

	sll $t1,$t0,3

	mtc1 $t1,$f6
	cvt.d.w $f6,$f6
	
	add.d $f6,$f6,$f12
	
	cvt.w.d $f6,$f6
	mfc1 $t1,$f6
	
	l.d $f4,-8($t1)
	
	add.d $f2,$f2,$f4
	
	addi $t0,$t0,-1
	
	j for

endw:	mtc1 $a0,$f4
	cvt.d.w $f4,$f4
	
	div.d $f0,$f2,$f4
	
	jr $ra
	

	
		