	.data
zero:	.float 0.0
um:	.float 1.0
	.text
	.globl func2
func2:	addiu $sp,$sp,-24	#salvaguardar as variaveis em pilha
	sw $ra,0($sp)
	sw $s0,4($sp)
	s.s $f20,8($sp)
	s.s $f22,16($sp)
	mov.s $f20,$f12		#x = $f20
	mov.s $f22,$f14		#tol = $f22
	
	li $s0,1			#fact = 1
	li $s1,1			#i = 1
	l.s $f2,zero		#tmp = 0.0
	l.s $f4,zero		#sum = 0.0
	
do:	mul $s0,$s0,$t1		#fact = fact * i
	
	mtc1 $s0,$f6
	cvt.s.w $f6,$f6
	
	mov.s $f12,$f20
	move $a1,$s1
	jal pow			#ir a funcao pow
	
	div.s $f2,$f0,$f6	#tmp = pow(x,i) / (float)fact
	
	add.s $f4,$f4,$f2	#sum = sum + tmp
	
	addi $s1,$s1,1		#i++
	
while:	c.lt.s $f2,$f22		#while (tmp > tol)
	bc1f do
	
end:	l.s $f8,um		#$f8 = 1.0
	add.s $f0,$f4,$f8
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	l.s $f20,8($sp)
	l.s $f22,16($sp)
	addiu $sp,$sp,24
	
	jr $ra