# Mapa de registos:
# $t0 – value
# $t1 – bit
# $t2 - i 
# $t3 - flag	
	.data
str1:	.asciiz "Introduz um valor que pretende converter para binario: "
str2:	.asciiz "\n O seu valor em binario é: "
	.eqv print_string,4
 	.eqv read_int,5
 	.eqv print_char,11 
 	.text
 	.globl main
 main:	la $a0,str1
 	li $v0,print_string	# (instrução virtual)
 	syscall			# print_string(str1); 
 	
 	li $v0,read_int		# value=read_int(); 
 	syscall
 	or $t0,$0,$v0
 	
 	la $a0,str2
 	li $v0,print_string
 	syscall			# print_string("..."); 
 				
 	li $t2,0		# i = 0 
 	li $t3,0		# flag = 0
					
for:
	bgeu	$t2,32,endfor	 	# if ( i >= 32) break;
	
	srl	$t1,$t0,31		# bit = value >> 31;
	
	beq	$t4,1,separacao		# if (flag == 1)
	bnez	$t1,separacao		# if (bit != 0)
	j endif
	
separacao:	li $t4,1

		rem		$t3,$t2,4			# get i/4
		bnez		$t3,bit				# if ( temp == 0 ) jump to bit
		li		$a0,' '				# set print_char value to ' ' (empty) 
		li		$v0,print_char			# set $v0 to print_char
		syscall		

		
bit:		addi	$t1,$t1,0x30 				# bit + 0x30
		or	$a0,$t1,$0				
		li	$v0,print_char				# print_char(0x30 + bit); 
		syscall	
		
endif:	sll $t0,$t0,1
 	addi $t2,$t2,1
 	
 	j for

endfor:	
 	jr $ra 			# fim do programa
 	
 	
