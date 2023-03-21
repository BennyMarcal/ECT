    .data
    .equ getChar,2
    .equ putChar,3
    .equ printInt,6
    .equ readCoreTimer,11
    .equ resetCoreTimer,12
    .text
    .globl main

main:   addiu $sp,$sp,-8
        sw $ra,0($sp)
        sw $s0,4($sp)
        
        li $s0,0
        
while:  li $a0, 1           # valor que entra na funcao delay
        jal delay           # chamar a funcao delay

        li $a1,4                            # $t1 = 4
        sll $a1,$a1,16                      # 4 << 16
        or $a1,$a1,10                       # 10 | 4 << 16

        move $a0,$s0
        li $v0,printInt
        syscall

        addi $s0,$s0,1

        li $a0,'\r'
        li $v0,putChar
        syscall

        j while

end:    lw $s0,4($sp)
        lw $ra,0($sp)
        addiu $sp,$sp,8
        li $v0,0
        jr $ra

############FUNCAO DELAY####################
delay:  li $v0,resetCoreTimer
        syscall

whilew: li $v0,readCoreTimer
        syscall

        #1ms = 0,001 segundos; F = 1/0,001 = 1000Hz; 20 000 000 / 1000 = 20 000
        #k = K = 20000

        #li $t0, 200000          #100hz
        #li $t0, 2000000         #10hz
        #li $t0, 4000000         #5hz
        li $t0,20000000          #1hz
        mul $t0,$t0,$a0

        blt $v0,$t0,whilew

        jr $ra