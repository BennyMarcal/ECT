        .equ READ_CORE_TIMER,11
        .equ RESET_CORE_TIMER,12
        .equ PUT_CHAR,3
        .equ PRINT_INT,6
        .data
        .text
        .globl main
main:   li $t0,0

while:  li $v0,RESET_CORE_TIMER 
        syscall 

a1:     li $v0,READ_CORE_TIMER
        syscall

        #blt $v0, 200000, a1     #100hz
        #blt $v0, 2000000, a1    #10hz
        #blt $v0, 4000000, a1    #5hz
        blt $v0, 20000000, a1    #1hz equivale a 1s
        
        li $a1,4
        sll $a1,$a1,16
        ori $a1,$a1,10

        addi $t0,$t0,1

        move $a0,$t0
        li $v0,PRINT_INT
        syscall

        li $a0,'\r'
        li $v0,PUT_CHAR
        syscall

        j while

end:    li $v0,0
        jr $ra 