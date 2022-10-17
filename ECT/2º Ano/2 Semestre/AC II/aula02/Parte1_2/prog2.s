        .equ READ_CORE_TIMER,11
        .equ RESET_CORE_TIMER,12
        .equ PUT_CHAR,3
        .equ PRINT_INT,6
        .data
        .text
        .globl main
main:   addiu $sp,$sp,-8
        sw $ra,0($sp)
        sw $s0,4($sp)

        li $s0,0

while:  li $a0, 1
        jal delay
        
        li $a1,4
        sll $a1,$a1,16
        ori $a1,$a1,10

        addi $s0,$s0,1

        move $a0,$s0
        li $v0,PRINT_INT
        syscall

        li $a0,'\r'
        li $v0,PUT_CHAR
        syscall

        j while

end:    lw $s0,4($sp)
        lw $ra,0($sp)
        addiu $sp,$sp,8
        li $v0,0
        jr $ra 
#################################################################
delay:  li $v0,RESET_CORE_TIMER
        syscall

whilew: li $v0,READ_CORE_TIMER
        syscall

        #1ms = 0,001 segundos; F = 1/0,001 = 1000Hz; 20 000 000 / 1000 = 20 000
        #k = K = 20000

        li $t0,20000
        mul $t0,$t0,$a0

        blt $v0,$t0,whilew

        jr $ra