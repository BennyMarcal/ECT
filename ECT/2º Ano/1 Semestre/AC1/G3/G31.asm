# Mapa de registos:
# $t0 – soma
# $t1 – value
# $t2 - i 	
	.data
str1:	.asciiz "Introduza um numero\n "
str2: 	.asciiz "Numero invalido\n"
str3:	.asciiz "A soma dos numeros positivos é: "
	.eqv print_string, 4
	.eqv read_int, 5
	.eqv print_int10, 1
	.text
	.globl main
main:	li $t0, 0
	li $t2, 0
for: 	bge $t2,5,endfor

	la $a0,str1		#dar load do nosso a0, que vai ser lido como string
	li $v0, print_string	#print da str1
	syscall
	
	li $v0, read_int	#ler o numero
	syscall
	
	or $t1,$0,$v0		#colocar o valor lido em t1
	
	ble $t1,$0,else		#se o valor lower or equal entao passa a frente, senao adiciona o valor a t0
	add $t0,$t0,$t1		#t0 += t1
	j endif 
	
else:	la $a0,str2
	li $v0, print_string	#print da str2
	syscall
	j endif
	
endif:	addi $t2,$t2,1
	j for
	
endfor:	la $a0,str3
	li $v0, print_string	#print da str3
	syscall 
	
	or $a0,$0,$t0
	li $v0, print_int10	#print da soma
	syscall
	
	
	jr $ra
