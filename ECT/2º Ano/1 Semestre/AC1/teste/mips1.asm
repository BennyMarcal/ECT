#Mapa de registos	
#val: $t0
#n: $t1
#min: $t2
#max: $t3
	.data
	.eqv p_char,11
	.eqv p_string,4
	.eqv p_int,1
	.eqv r_int,5
arr:	.asciiz "Digite até 20 inteiros (zero para terminar): "	
arr2:	.asciiz "Máximo/mínimo são: "
	.text
	.globl main
main:
	li $t1,0		#n = 0
	li $t2,0x7FFFFFFF 	#min = 0x7FFFFFFF 
	li $t3,0x80000000	#max = 0x80000000
	
	la $a0,arr
	li $v0,p_string		#print_string("Digite até 20 inteiros (zero para terminar):")
	syscall
	
do:				#do {
	li $v0,r_int		#read_int();
	syscall
	
	move $t0,$v0		#val = read_int();
	
if:	beqz $t0,endif		#if(val != 0){

if2:	ble $t0,$t3,if3		#if (val > max)
	move $t3,$t0		#max = val
	
if3:	bge $t0,$t2,endif	#if (val < min)
	move $t2,$t0		#min = val
				#}
endif:
	addi $t1,$t1,1		#n++
				#}
while:	bge $t1,20,print	#while(n < 20) &&
	beqz $t0,print		#while(val != 0)
	
	j do
	
print:	la $a0,arr2	
	li $v0,p_string		#print_string("Máximo/mínimo são: ");
	syscall
	
	move $a0,$t3
	li $v0,p_int		#print_int10(max);
	syscall
	
	li $a0,':'
	li $v0,p_char		#print_char(":");
	syscall

	
	move $a0,$t2
	li $v0,p_int		#print_int10(min);
	syscall
	
	jr $ra			#}

