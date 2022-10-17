	.data
	.eqv p_int,1
	.eqv p_string,4
	.eqv r_int,5
	.eqv SIZE,33
str:	.space 33
	.align 2
	.text
	.globl main
main:	addiu $sp,$sp,-4
	sw $ra,0($sp)

dok:	li $v0,r_int
	syscall
	
	move $s0,$v0
	
	move $a0,$s0
	li $a1,2
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
	move $a0,$s0
	li $a1,8
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
	move $a0,$s0
	li $a1,16
	la $a2,str
	jal itoa
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
whike:	beqz $s0,endeweq
	j dok
	
endeweq:	lw $ra,0($sp)
	addiu $sp,$sp,4
	li $v0,0
	jr $ra
#####################################################
itoa:	addiu $sp,$sp,-20
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	sw $s3,16($sp)
	move $s0,$a0	#n
	move $s1,$a1	#b
	move $s2,$a2	#s
	move $s3,$a2	#p
	
do1:	remu $t0,$s0,$s1
	divu $s0,$s0,$s1
	
	move $a0,$t0
	jal toascii
	
	sb $v0,0($s3)
	addi $s3,$s3,1
	
while:	blez $s0,endwh
	j do1
	
endwh:	li $t2,'\0'
	sb $t2,0($s3)		#li $t1,'\0'	
	
	move $a0,$s2
	jal streev
	
	move $v0,$s2
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	lw $s3,16($sp)
	addiu $sp,$sp,20
	jr $ra
#####################################################
toascii:	addi $a0,$a0,'0'

if:	ble $a0,'9',endt
	addi $a0,$a0,7
	
endt:	move $v0,$a0
	jr $ra	
###############################################################

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

while2:bge $s1,$s2,endwe
	
	move $a0,$s1
	move $a1,$s2
	jal exchange
	
	addiu $s1,$s1,1
	addiu $s2,$s2,-1
	j while2
	
endwe:	move $v0,$s0
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
	
###################################################################
