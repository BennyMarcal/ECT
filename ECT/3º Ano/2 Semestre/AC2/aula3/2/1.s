        .data
        .text
        .equ SFR_BASE_HI, 0xBF88    # 16 MSbits of SFR area
        .equ TRISE, 0x6100          # TRISE address is 0xBF886100
        .equ PORTE, 0x6110          # PORTE address is 0xBF886110
        .equ LATE, 0x6120           # LATE address is 0xBF886120
        .equ PORTB, 0x6050
        .equ TRISB, 0x6040
        .equ PORTD, 0x60D0
        .equ TRISD, 0X60C0
        .equ resetCoreTimer, 12
        .equ readCoreTimer, 11
        .globl main

main:   addiu   $sp, $sp, -12           #       abrir espaco na stack
        sw      $ra, 0($sp)             #       salvaguardar $ra
        sw      $s0, 4($sp)             #       salvaguardar $s0
        sw      $s1, 8($sp)             #       salvaguardar $s1

        
        lui     $s1, SFR_BASE_HI        # 0xBF88
        lw		$t1, TRISE($s1)		    # READ  (Mem_addr = 0xBF880000 + 0x6100)
        andi    $t1, $t1, 0xFFE1        # MODIFY (bit8 = 0 - RD8
        sw		$t1, TRISE($s1)		    # WRITE (Write TRISE register)

        lw      $t1, TRISB($s1)         # READ  (Mem_addr = 0xBF880000 + 0x6040)
        ori     $t1, $t1, 0x00E        # MODIFY (bit0 = 0 - RE0
        sw	    $t1, TRISB($s1)		    # WRITE TRISB register

        li      $s0, 0x0000
loop:   
        sll     $t0, $s0, 1

        #lw	    $t2, PORTB($t1)		    #$t2 = PORTB
        #andi	$t2, $t2, 0x000E

        lw	    $t2, LATE($s1)		    # Read LATE register
        andi	$t2, $t2, 0xFFE1	    # Reset bit 1 - RE0 = 0
        or      $t2, $t2, $t0	    	# Merge data - RE0 = RB0\
        sw  	$t2, LATE($s1)	

        li      $a0,500
        jal     delay

        addiu   $s0,$s0, 1
        andi    $s0,$s0, 0x000F

        j	    loop	

        lw      $ra, 0($sp)             #       repor valor de $ra
        lw      $s0, 4($sp)             #       repor valor de $s0
        lw      $s1, 8($sp)             #       repor valor de $s1
        addiu   $sp, $sp, 12 
        jr  	$ra 

############FUNCAO DELAY####################
delay:  li $v0,resetCoreTimer
        syscall

        li $t0,20000          
        mul $t0,$t0,$a0

whilew: li $v0,readCoreTimer
        syscall

        blt $v0,$t0,whilew

        jr $ra
