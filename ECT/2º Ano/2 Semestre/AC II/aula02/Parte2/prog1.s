        .equ READ_CORE_TIMER,11
        .equ RESET_CORE_TIMER,12
        .equ PUT_CHAR,3
        .equ PRINT_INT,6
        .equ INKEY,1
        .data
        .text
        .globl main
main:   addiu $sp,$sp,-16
        sw $ra,0($sp)
        sw $s0,4($sp)       #cnt10
        sw $s1,8($sp)       #cnt5
        sw $s2,12($sp)      #cnt1

        li $s0,0
        li $s1,0
        li $s2,0
        li $t1,100

while:  li $v0,INKEY
        syscall

        move $t2,$v0

if:     bne $t2,'a',elsif
        li $t1,1

        j endq

elsif:  bne $t2,'n',resu
        li $t1,100

resu:   bne $t2,'r',stop
        move $t3,$t2

stop:   bne $t2,'s',stop2
        move $t3,$t2

        j while

stop2:  bne $t3,'s',endq
        j while

endq:
        move $a0,$t1
        jal delay
        
freq10:
        addi $s0,$s0,1          #cnt10++

freq5:
        rem $t0,$s0,2
        bne $t0,$0,freq1
        addi $s1,$s1,1          #cnt5++

freq1:  
        rem $t0,$s0,10
        bne $t0,$0,cont
        addi $s2,$s2,1          #cnt1++

cont:
        li $a1,4
        sll $a1,$a1,16
        ori $a1,$a1,10
print:
        move $a0,$s0
        li $v0,PRINT_INT
        syscall

        li $a0,' '
        li $v0,PUT_CHAR
        syscall

        move $a0,$s1
        li $v0,PRINT_INT
        syscall

        li $a0,' '
        li $v0,PUT_CHAR
        syscall

        move $a0,$s2
        li $v0,PRINT_INT
        syscall

        li $a0,'\r'
        li $v0,PUT_CHAR
        syscall

        j while

end:    lw $s2,12($sp)
        lw $s1,8($sp)
        lw $s0,4($sp)
        lw $ra,0($sp)
        addiu $sp,$sp,16

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