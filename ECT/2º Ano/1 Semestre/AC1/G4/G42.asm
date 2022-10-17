# Mapa de registos
# num: $t0
# p: $t1
# *p: $t2
	.data
	.eqv SIZE,20
	.eqv p_int,1
	.eqv r_string,8
str:	.space SIZE 
 	.text
	.globl main
main: 	la $a0,str		# ...
	
	
	li $v0,r_string
	syscall			
 	la $t1,str 		# p = str;
while:		 		# while(*p != '\0')
 	lb $t2,0($t1) 		#
	beq $t2,'\0',endw 		# {
 	blt $t2,'0',endif 	# if(str[i] >='0' &&
 	bgt $t2,'9',endif 	# str[i] <= '9')
 	addi $t0,$t0,1 		# num++;
endif:
 	addiu $t1,$t1,1	 	# p++;
 	
 	j while			# }
endw: 	move $a0,$t0
	
	li $v0,p_int
	syscall 			# print_int10(num);
 	jr $ra 