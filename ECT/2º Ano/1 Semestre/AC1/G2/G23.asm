	.data
str1: .asciiz "Introduza 2 numeros que deseja somar:\n"
str2: .asciiz "A soma entre os 2 numeros é de: " 
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
	
	.text
	.globl main
main:	la $a0, str1
	
	ori $v0,$0, print_string      #ori usado sempre para usar syscalls, com $v0, e print_string = 4
	syscall
	
	ori $v0,$0, read_int
	syscall
	or $t0,$0,$v0 
	
	ori $v0,$0, read_int
	syscall
	or $t1,$0 ,$v0
	
	add $t2,$t0,$t1
	or $a0,$0,$t2
	
	ori $v0,$0, print_int10
	syscall
	jr $ra
