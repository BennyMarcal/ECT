#mapa de registos:
#$t0 - aux
#$t1 - aux do aux
#$s0 - p0
#$s1 - *p1
#$s2 - *p2
#$a0 - *c1
#$a1 - *c2
	.data
	.eqv p_string,4
arr:	.asciiz "ITED - orievA ed edadisrevinU"
	.text
	.globl main
main: 	addiu $sp,$sp,-4
	sw $ra,0($sp)

	la $a0,arr
	jal streev
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	
end1:	jr $ra

streev:	
	addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	move $s0,$a0 #p0 = str
	move $s1,$a0 #p1 = str
	move $s2,$a0 #p2 = str
	
while1:	lb $t2,0($s2)
	beq $t2,'\0',beh
	addiu $s2,$s2,1
	j while1
	
beh:	addiu $s2,$s2,-1

while2:bge $s1,$s2,end
	
	move $a0,$s1
	move $a1,$s2
	jal exchange
	
	addiu $s1,$s1,1
	addiu $s2,$s2,-1
	j while2
	
end:	move $v0,$s0
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addiu $sp,$sp,16
	jr $ra

exchange:	
	
	lb $t0,0($a0)
	lb $t1,0($a1)
	
	sb $t0,0($a1)
	sb $t1,0($a0)
	
	jr $ra