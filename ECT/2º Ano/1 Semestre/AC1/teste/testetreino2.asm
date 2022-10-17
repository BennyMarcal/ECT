#MAPA DE REGISTOS
#i: $t0
#v: $t1
#&(val[0]): $t2
# val[meio]: $t3
#SIZE/2 e SIZE: $t4
#v1: $t5
        .data
        .eqv SIZE,8
        .eqv p_string,4
        .eqv p_char,11
        .eqv p_int10,1
arr:    .word 8,4,15,-1987,327,-9,27,16
str1:   .asciiz "Result is: \n"
        .text
        .globl main


main:
    li $t0,0    #i=0


do:
    	sll $t4, $t0, 2    #sll do i mul de 4
        la $t2, arr	#arr(0)
        add $t2,$t4,$t2 #arr

        li $t4, SIZE    #tamanho de size
        div $t4, $t4, 2    #size/2
        sll $t4, $t4, 2

        add $t3, $t2, $t4 #arr/2

        lw $t1, 0($t2) #v=arr 

        lw $t5, 0($t3) #v1= arr meio


        sw $t1, 0($t3) # arr meio = v1

        sw $t5, 0($t2)# arr = v



while:
    	addi $t0,$t0,1 #i++
    	li $t4, SIZE    #tamanho de size
        div $t4, $t4, 2 #size/2
        bge $t0,$t4,next #i<size/2

        j do

next:
        la $a0,str1
        li $v0,p_string
        syscall		#print

	li $t0,0  	#i=0
do2:
    	la $t2, arr	#arr(0)
        sll $t1, $t0, 2
        add $t2, $t1, $t2 #arr+i
        lw $a0,0($t2)
        li $v0,p_int10
        syscall

        li $a0,':'
        li $v0,p_char
        syscall
        
        addi $t0, $t0, 1 #i++


while2: 
    	bge $t0,SIZE,endw
        j do2

endw:
    jr $ra