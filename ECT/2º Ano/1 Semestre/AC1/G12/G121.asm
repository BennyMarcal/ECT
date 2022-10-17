	.data
	.eqv id_number,0
	.eqv first_name,4
	.eqv last_name,22
	.eqv grade,40
	.eqv MAX_STUDENTS,4
	.eqv print_string,4
	.eqv print_intu10,36
	.eqv print_char,11
	.eqv print_float,2
	.eqv read_int,5
	.eqv read_string,8
	.eqv read_float,6
st_array: .space 176		#sao 4 alunos, space = 44*4 = 176
str: 	.asciiz "/nMédia: "
	.align 2
str1:	.asciiz "N. Mec: "
str2:	.asciiz "Primeiro Nome: "
str3:	.asciiz "Ultimo Nome: "
str4:	.asciiz "Nota: "
str5:	.asciiz "\nID - "
str6:	.asciiz "\nPrimeiro Nome - "
str7:	.asciiz "\nUltimo Nome - "
str8:	.asciiz "\nNota - "
media:	.space 4
max_grade:.float -20.0
sum:	.float 0.0
	.text
	.globl main
main:
	addiu $sp,$sp,-4		#salvaguarda o $ra
	sw $ra,0($sp)
	
	la $a0,st_array
	li $a1,MAX_STUDENTS
	jal read_data		#ir a funcao read_data, com as sub rotinas $a0 e $a1, definidas
	
	la $a0,st_array		#sub rotina da funçao max, $a0 = st_array
	li $a1,MAX_STUDENTS	#$a1 = MAX_STUDENTS
	la $a2,media		#$a2 = media
	jal max			#ir a funcao max
	
	move $t1,$v0		#pmax = return da funcao max
	
	la $a0,str
	li $v0,print_string		#print ("/nMedia: ")
	syscall
	
	la	$t0, media		#$t0 = &media;
	l.s	$f12, 0($t0)		#$f12 = media;
	li	$v0, print_float		#printar o max	
	syscall	
	
	move $a0,$t1
	jal print_student		#print_student (pmax)
	
	li $v0,0
	
	lw $ra,0($sp)			#repor o valor de $ra
	addiu $sp,$sp,4			#repor a pilha
	
	jr $ra	
#######################################################################
read_data:			#$a0 = *st, $a1 = ns
	li $t0,0			#i = 0

ford:	bge $t0,$a1,endd		#while i < ns

	la $a0,str1
	li $v0,print_string	#print da string
	syscall
	
	li $v0,read_int		#read_int()
	syscall
	
	mul $t2,$t0,44
	addu $t2,$t2,$a0		#criar o array
	
	sw $v0,id_number($t2)	#colocar o valor de read_int em $t2, o nosso array

	la $a0,str2
	li $v0,print_string	#print da string
	syscall
	
	addiu $a0,$t2,first_name
	li $a1,18
	li $v0,read_string	#read_string
	syscall
	
	la $a0,str3
	li $v0,print_string	#print da string
	syscall
	
	addiu $a0,$t2,last_name
	li $a1,15
	li $v0,read_string	#read_string
	syscall
	
	la $a0,str4
	li $v0,print_string	#print da string
	syscall
	
	li $v0,read_float
	syscall
	
        #addiu $t2,$t2,grade
	s.s $f0,grade($t2)		#comentario geral, como o meu st_array inicial está vazio, faz com que
					#		eu tenha de dar store em tudo em vez de load, tenho que
	addi $t0,$t0,1			#		preencher esse array logo nunca uso load, so se tirar
	
	j ford
	
endd:	jr $ra

#######################################################################
max:					# student *max(student *st, int ns, float *media) {
	l.s $f2,sum
	l.s $f4,max_grade
	move $t0,$a0			#st
	move $t1,$a1			#ns
	move $t2,$a2			#media
	mul $t3,$t3,44
	addu $t3,$t3,$t0
	
form:	bge $t0,$t3,endm

	l.s $f6,grade($t0)
	add.s $f2,$f2,$f6
	
ifm:	c.le.s $f6,$f4
	bc1t endifm

	mov.s $f4,$f6
	move $v0,$t0

endifm:	addi $t0,$t0,1
	j form
	
endm:	
	mtc1 $t1,$f8		#ns pro $f8, passar de int pra float
	cvt.s.w $f8,$f8
	div.s $f8,$f2,$f8
	s.s $f8,0($t2)
	
	jr $ra

#######################################################################
print_student:
	move $t0,$a0
	
	la $a0,str5
	li $v0,print_string	#print string "ID"
	syscall
	
	lw $a0,id_number($t0)
	li $v0,print_intu10
	syscall
	
	la $a0,str6
	li $v0,print_string	#print string "First Name"
	syscall
	
	addiu $a0,$t0,first_name
	li $v0,print_string
	syscall
	
	la $a0,str7
	li $v0,print_string	#print string "Last Name"
	syscall
	
	addiu $a0,$t0,last_name
	li $v0,print_string	#print da string do ultimo nome
	syscall
	
	la $a0,str8
	li $v0,print_string	#print string "Grade"
	syscall
	
	l.s $f12,grade($t0)
	li $v0,print_float	#print do float da grade
	syscall
	
	jr $ra
