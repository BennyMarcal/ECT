        .data
        .text
        .equ resetCoreTimer,11
        .equ readCoreTimer,12
        .globl main

main:
############FUNCAO DELAY####################
delay:  li $v0,resetCoreTimer
        syscall

whilew: li $v0,readCoreTimer
        syscall

        li $t0,2000000          
        mul $t0,$t0,$a0

        blt $v0,$t0,whilew

        jr $ra