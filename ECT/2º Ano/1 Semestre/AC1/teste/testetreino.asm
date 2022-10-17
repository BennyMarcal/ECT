	.data
str1:	.asciiz "Digite até 5 inteiros: "
str2:	.asciiz "Maximo/Minimo são: "
str3:	.asciiz ":"
	.eqv p_string,4
	.eqv p_int10,1
	.eqv r_int,5
	.eqv p_char,11
	.text
	.globl main
main:	la $a0,str1
	li $v0,p_string
	syscall
	
	li $t2,0x0FFFFFFF
	li,$t3,0xF0000000
	
do:	li $v0,r_int
	syscall
	
	move $t0,$v0
	
if: 	beqz $t0,endif

if2:	ble $t0,$t3,if3
	move $t3,$t0

if3:	bge $t0,$t2,endif
	move $t2,$t0
	
endif:	addi $t1,$t1,1

while:	bge $t1,5,end
	beqz $t0,end

	j do

end:	la $a0,str2
	li $v0,p_string
	syscall
	
	move $a0,$t3
	li $v0,p_int10
	syscall
	
	li $a0,':'	 
	li $v0,p_char			
	syscall	
	
	move $a0,$t2
	li $v0,p_int10
	syscall
	
	jr $ra
