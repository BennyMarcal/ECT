	.data
	.eqv print_float,2
	.eqv SIZE,10
fArr:	.space 40
	.text
	.globl main
main:	addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)		#i
	sw $s1,8($sp)		#p
	sw $s2,12($sp)		#argc
	
	move $s2,$a0		#argc em $s2
	li $0,0			#i = 0
	la $t0,fArr		#colocar o array em $t0
	move $s1,$t0		#p = fArr
	
if:	bge $s2,1,else		#if(argc < 1)
	li $v0,-1		
	j end			#return -1
	
else:	bge $s0,$s2,ende		#i < argc
	bge $s0,SIZE,ende	#i < SIZE
				#mover o argv[] para t2
	
	addu $t2,$t2,$t1		#criaçao do array
	lb $a0,0($t2)		#conteudo do ponteiro de char *
	li $a1,10		#int do atoi = 10
	jal atoi
	
	mtc1 $v0,$f2
	cvt.s.w $f2,$f2		#conversao do return do atoi para float
	s.s $f2,0($s1)
	
	addi $s1,$s1,4		#p++
	addi $s0,$s0,1		#i++
	
	j else

ende:	la $a0,fArr		#$a0 = fArr
	move $a1,$s2		#$a1 = argc
	jal mean
	
	mov.s $f12,$f0
	li $v0,print_float	#print_float(fArr, argc)
	syscall

	li $v0,0			#return 0

end:	lw $ra,0($sp)
	lw $s0,4($sp)		#i
	lw $s1,8($sp)		#p
	lw $s2,12($sp)		#argc
	addiu $sp,$sp,16
	jr $ra
	
	
