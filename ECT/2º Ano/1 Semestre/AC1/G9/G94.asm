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
oit:	.double 8.0
str:	.space 24 	#array de double, vezes 8
arr:	.asciiz "O seu máximo é: "
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
	jal max
	
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
	
max:	l.d $f10,oit
	addi $a0,$a0,-1
	sll $a0,$a0,3
	
	mtc1 $a0,$f2
	cvt.d.w $f2,$f2
	
	add.d $f4,$f12,$f2
	
	cvt.w.d $f12,$f12
	mfc1 $t0,$f12
	
	l.d $f6,0($t0)
	cvt.d.w $f12,$f12
	add.d $f12,$f12,$f10
	
for:	c.le.d $f12,$f4
	bc1f endw
	
	cvt.w.d $f12,$f12
	mfc1 $t0,$f12
	
	l.d $f8,0($t0)
	
	c.le.d $f8,$f6
	bc1t endif
	mov.d $f6,$f8
	
endif:	cvt.d.w $f12,$f12
	add.d $f12,$f12,$f10
	
	j for
	
endw:	mov.d $f0,$f6
	jr $ra
	
	