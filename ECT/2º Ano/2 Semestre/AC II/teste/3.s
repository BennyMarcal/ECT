    .equ SFR_BASE_HI, 0XBF88
    .equ TRISE, 0x6100
    .equ PORTE, 0x6110
    .equ LATE, 0x6120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB, 0x6060
    .equ print_char, 3
    .equ print_int, 7
    .equ print_str, 8
    .equ READ_CORE_TIMER, 11
    .equ RESET_CORE_TIMER, 12

    .data
str1: .asciiz "0110"
str:  .asciiz "1001"
    .text
    .globl main
main:
    addiu   $sp, $sp, -12
    lw      $ra, 0($sp)
    lw      $s0, 4($sp)
    lw      $s1, 8($sp)

    lui     $s0, SFR_BASE_HI

    lw      $t1, TRISE($s0)
    andi    $t1, $t1, 0xFFE1        #RE4 a RE1, RESERVAR AS POSICOES NO TRISE
    sw      $t1, TRISE($s0)

    li      $s1, 1                  #FLIP FLOP, PRA MUDAR ENTRE OS DOIS BITS
while:

    xori    $s1, $s1, 1

    lw      $t1, LATE($s0)
    andi    $t1, $t1, 0xFFE1

if:
    beqz    $s1, else

    ori     $t1, $t1, 0x000C
    sw      $t1, LATE($s0)
    
    la      $a0,str1
    li      $v0, print_str
    syscall

    j end

else:

    ori     $t1, $t1, 0x0012
    sw      $t1, LATE($s0)

    la      $a0,str
    li      $v0, print_str
    syscall

end:
    li      $a0,','
    li      $v0, print_char
    syscall

    li      $a0, 143                #DEFINIR 7 HZ
    jal delay

    j while

    lw      $s1, 8($sp)
    lw      $s0, 4($sp)
    lw      $ra, 0($sp)
    addiu   $sp, $sp, 12
    jr $ra

######################################################
delay:
    li      $t1,20000               #K = 20000
    li      $v0,RESET_CORE_TIMER    #resetCoreTimer()
    syscall
whilew:
    li      $v0,READ_CORE_TIMER     #readCoreTimer()
    syscall

    mul     $t2, $a0, $t1
    blt     $v0, $t2, whilew

    jr $ra
