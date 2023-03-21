    .data
    .equ getChar,2
    .equ putChar,3
    .text
    .globl main

main:   
do:     li $v0,getChar
        syscall           # getChar();
        move $t0,$v0      # c = getChar();

        move $a0,$t0

        li $v0,putChar    #putChar(C);
        syscall

while:  beq $t0,'\n',fim  #while( c != '\n')
        j main

fim:    li $v0,0
        jr $ra