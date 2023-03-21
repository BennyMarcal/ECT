        .data
str:    .asciiz "\n\n\nIntroduza um inteiro (sinal e módulo): "
str1:   .asciiz "\nValor em base 10 (signed): "
str2:   .asciiz "\nValor em base 2: "
str3:   .asciiz "\nValor em base 16: "
str4:   .asciiz "\nValor em base 10 (unsigned): "
str5:   .asciiz "\nValor em base 10 (unsigned), formatado: "
        .equ readInt, 5
        .equ printInt, 6
        .equ printInt10, 7
        .equ printStr, 8
        .text
        .globl main
main:
while:  bne $0,$0,end       # while (1), if not end

        la $a0,str
        li $v0,printStr
        syscall             # printStr("\nIntroduza um inteiro (sinal e módulo): "); 

        li $v0,readInt
        syscall
        move $t0,$v0        # value = readInt

        la $a0,str1
        li $v0,printStr
        syscall             # printStr("\nValor em base 10 (signed): "); 

        move $a0,$t0
        li $v0,printInt10
        syscall             # printInt10(value); 

        la $a0,str2
        li $v0,printStr
        syscall             # printStr("\nValor em base 2: ");

        move $a0,$t0
        li $a1,2
        li $v0,printInt
        syscall             # printInt(value, 2);

        la $a0,str3
        li $v0,printStr
        syscall             # printStr("\nValor em base 16: ");

        move $a0,$t0
        li $a1,16
        li $v0,printInt
        syscall             # printInt(value, 16);

        la $a0,str4
        li $v0,printStr
        syscall             # printStr("\nValor em base 10 (unsigned): ");

        move $a0,$t0
        li $a1,10
        li $v0,printInt
        syscall             # printInt(value, 10);   

        la $a0,str5
        li $v0,printStr     # printStr("\nValor em base 10 (unsigned), formatado: ");
        syscall

        li $t1,5            # $t1 = 5
        sll $t1,$t1,16      # $t1 << 16
        or $t1,$t1,10       # $t1 | 10


        move $a0,$t0        # $a0 = value
        move $a1,$t1        # $a1 = conta
        li $v0,printInt     # printInt(value, 10 | 5 << 16);
        syscall

        j while             # ciclo while

end:    li $v0,0
        jr $ra