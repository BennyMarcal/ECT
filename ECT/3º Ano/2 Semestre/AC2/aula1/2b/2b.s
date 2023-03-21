    .data
    .equ inkey,1
    .equ putChar,3
    .text
    .globl main

main:

do:     li $v0,inkey
        syscall             # inkey()
        move $t0,$v0        # c = inkey()

if:     beq $v0,0,else

        move $a0,$t0        # "a" vai ser a variavel onde sai ser colocado o que printar, neste caso "c"
        li $v0,putChar
        syscall       

        j while 

else:   else:   li $a0,'.'
        li $v0,putChar
        syscall

while:  bne $t0,'\n',do 

end:    li $v0,0
        jr $ra