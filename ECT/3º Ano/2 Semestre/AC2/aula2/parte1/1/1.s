    .data
    .equ getChar,2
    .equ putChar,3
    .equ printInt,6
    .equ readCoreTimer,11
    .equ resetCoreTimer,12
    .text
    .globl main

main:   li $t0,0

while:  bne $0,$0,end       # while(1)

        li $v0,resetCoreTimer
        syscall
        
while2: li $v0,readCoreTimer
        syscall

        #blt $v0, 200000, while2            #100hz
        #blt $v0, 2000000, while2           #10hz
        #blt $v0, 4000000, while2           #5hz
        blt $v0,20000000, while2            # 1hz = 200000 equivale a 1s

        li $a1,4                            # $t1 = 4
        sll $a1,$a1,16                      # 4 << 16
        or $a1,$a1,10                       # 10 | 4 << 16

        move $a0,$t0
        li $v0,printInt
        syscall

        addi $t0,$t0,1

        li $a0,'\r'
        li $v0,putChar
        syscall

        j while

end:    li $v0,0

        jr $ra