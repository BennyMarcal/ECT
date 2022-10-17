#MAPA DE REGISTOS
#$t0 - i
#$t1 - c dst
#$t2 - c arr
#$a0 - dst
#$a1 - src

	.data
	.eqv p_int,1
	.eqv p_string,4
	.eqv SIZE,5
str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
	.align 2
str2:	.space 6
	.align 2
str3:	.asciiz "\n"
	.align 2
str4:	.asciiz "String too long: "
	.text
	.globl main
main: 	sw $ra,0($sp)

	la $a0,str1
	jal strlen
	
if:	bgt $v0,SIZE,else
	
	la $a0,str2
	la $a1,str1
	jal strcpy
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
	la $a0,str3
	li $v0,p_string
	syscall
	
	la $a0,str2
	jal streev
	
	move $a0,$v0
	li $v0,p_string
	syscall
	
	li $t4,0
	
	j end
	
else:	la $a0,str4
	li $v0,p_string
	syscall
	
	la $a0,str1
	jal strlen
	
	move $a0,$v0
	li $v0,p_int
	syscall
	
	li $t4,-1
	
end:	move $v0,$t4
	lw $ra,0($sp)
	jr $ra
	
##################################################33
strcpy:	li $t0,1				#li $t0,0
	move $t2,$a0			#
do:					#addu $t3,$t0,$a1
	lb $t1,0($a1)			#addu $t4,$t0,$a0
	sb $t1,0($a0)			#
					#lb $t1,0($t3)
	addu $a1,$t0,$a1			#sb $t1,0($t4)
	addu $a0,$t0,$a0			#
					#beq $t1,'\0',end4
	beq $t1,'\0',end4		#addi $t0,$t0,1
	j do				#j do
	
end4:	move $v0,$t2			#move $v0,$a0
	jr $ra				#jr $ra
	
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

strlen: li $t1,0 # len = 0;

whilek: 	lb $t0,0($a0) # while(*s++ != '\0')
 	addiu $a0,$a0,1 #s++
 	beq $t0,'\0',endw # {
 	addi $t1,$t1,1 # len++;
 	j whilek # }
 	
endw: 	move $v0,$t1 # return len;
	jr $ra 
