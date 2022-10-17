        .data
str:    .asciiz "\nIntroduza um inteiro (sinal e módulo): "
str1:   .asciiz "\nValor em base 10 (signed): "
str2:   .asciiz "\nValor em base 2: "
str3:   .asciiz "\nValor em base 16: "
str4:   .asciiz "\nValor em base 10 (unsigned): "
str5:   .asciiz "\nValor em base 10 (unsigned), formatado: "
        .equ p_string, 8
        .equ p_int, 6
        .equ r_int, 5
        .equ p_int10, 7
        .text
        .globl main
main:
while:  bne $0,$0,end

        la $a0,str
        li $v0,p_string
        syscall

        li $v0,r_int
        syscall

        move $t0,$v0

        la $a0,str1
        li $v0,p_string
        syscall

        move $a0,$t0
        li $v0,p_int10
        syscall

        la $a0,str2
        li $v0,p_string
        syscall

        move $a0,$t0
        li $a1,2
        li $v0,p_int
        syscall

        la $a0,str3
        li $v0,p_string
        syscall

        move $a0,$t0
        li $a1,16
        li $v0,p_int
        syscall

        la $a0,str4
        li $v0,p_string
        syscall

        move $a0,$t0
        li $a1,10
        li $v0,p_int
        syscall

        la $a0,str5
        li $v0,p_string
        syscall

        li $t1,5
        sll $t1,$t1,16
        or $t1,$t1,10


        move $a0,$t0
        move $a1,$t1
        li $v0,p_int
        syscall

        j while

end:    li $v0,0
        jr $ra