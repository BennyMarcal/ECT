    .data  
    .equ ink,1
    .equ putChar,3
    .text
    .globl main
main:
do:     li $v0,ink
        syscall
        move $t0,$v0    

if:     beqz $v0,else

        move $a0,$t0
        li $v0,putChar
        syscall

        j while

else:   li $a0,'.'
        li $v0,putChar
        syscall

while:  bne $t0,'\n',do 

end:    li $v0,0
        jr $ra
