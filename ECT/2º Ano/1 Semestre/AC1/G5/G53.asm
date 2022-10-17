#MAPA DE REGISTOS
#i: $t0
#lista[0]: $t1
#Lista[i]: $t4

	.data
	.eqv SIZE, 4
	.eqv TRUE, 1
	.eqv FALSE, 0
	.eqv r_int,5
	.eqv p_int,1
	.eqv p_str,4
	.eqv p_char,11
str:	.asciiz "\nIntroduza um número: "
str1:	.asciiz "\nA sua string é: "
	.align 2
lista:	.space 16
	.text
	.globl main
main:	la $t1,lista
	li $t0,0
for:	bge $t0,SIZE,do
	la $a0,str
	li $v0,p_str
	syscall
	
	sll $t2,$t0,2			#addi $t1,$t1,4 - ponteiro
	addu $t4,$t1,$t2
	
	li $v0,r_int
	syscall
	sw $v0,0($t4)
	
	addi $t0,$t0,1

	
	j for
#MAPA DE REGISTOS
#i: $t0
#lista: $t1
#size-1: $t2
#lista[i]: $t3
#HouveTroca: $t5
#Lista[i+1]: $t4
#aux: $t6

do:	
	li $t5, FALSE
	li $t0,0
	li $t8,SIZE
	sub $t8,$t8,1
for2:	
	bge $t0,$t8,while
if:	
	sll $t2,$t0,2			#addi $t1,$t1,4 - ponteiro
	addu $t7,$t1,$t2
	
	lw $t3,0($t7)			#0,
	lw $t4,4($t7)			#
	
	ble $t3,$t4,ifend
	sw $t3,4($t7)
	sw $t4,0($t7)
	li $t5, TRUE
	
ifend:	
	addi $t0,$t0,1
	j for2
	
while:	beq $t5,TRUE,do
	li $t0,0
	
for3:
	bge $t0,SIZE,fim
	
	sll $t2,$t0,2			#addi $t1,$t1,4 - ponteiro
	addu $t4,$t1,$t2
	
	lw $a0,0($t4)
	li $v0,p_int
	syscall
	
	li $a0,';'
	li $v0,p_char
	syscall
	
	addi $t0,$t0,1

	j for3
fim:
	jr $ra
