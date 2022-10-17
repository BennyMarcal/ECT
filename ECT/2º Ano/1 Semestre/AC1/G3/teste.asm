.data
str1:	.asciiz	"Introduza um numero: "
str2:	.asciiz	"\nO valor em binario: "
	
	.text
	
	.eqv	read_int, 5
	.eqv	print_char, 11
	.eqv	print_str, 4
	
	.globl main
main:	
	li	$t0, 0		# $t0=i
		
	
	li	$v0, print_str
	la	$a0, str1
	syscall
	
	li	$v0, read_int
	syscall
	move	$t1, $v0		# $t1=value 
	
	li	$v0, print_str
	la	$a0, str2
	syscall
	
for:
	rem	$t3, $t0, 4
	bge	$t0, 32, end_for
	andi	$t2, $t1, 0x80000000		# bit = $t2

meio:
	bnez	$t3, end_meio
	li	$a0, ' '
	li	$v0, print_char
	syscall
	
end_meio:
	
	beqz	$t2, else
	li	$a0, '1'
	li	$v0, print_char	
	syscall
	j	end
	
else:	
	li	$a0, '0'
	li	$v0, print_char
	syscall	
						
end:	sll 	$t1,$t1,1	
	addi	$t0, $t0, 1
	j	for
end_for:	
	
	jr	$ra