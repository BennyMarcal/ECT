        .data
        .text
        .equ SFR_BASE_HI, 0xBF88    # 16 MSbits of SFR area
        .equ TRISE, 0x6100          # TRISE address is 0xBF886100
        .equ PORTE, 0x6110          # PORTE address is 0xBF886110
        .equ LATE, 0x6120           # LATE address is 0xBF886120
        .equ PORTB, 0x6050
        .globl main

main:   
        lui     $t1, SFR_BASE_HI        # $t1=0xBF880000
        lw      $t2, TRISE($t1)          # READ (Mem_addr = 0xBF880000 + 0x6100)
        andi    $t2, $t2, 0xFFFE       # MODIFY (bit0=0 (0 means OUTPUT)) 1111 1111 1111 1110
        sw      $t2, TRISE($t1)          # WRITE (Write TRISE register)

        lw      $t2, LATE($t1)           # READ (Read LATE register)
        ori     $t2, $t2, 0x0001        # MODIFY (bit3 = 1)
        sw      $t2, LATE($t1)           # WRITE (Write LATE register)

loop:					            #	while(1) {
        lw	$t2, PORTB($t1)		#		$t2 = PORTB
        andi	$t2, $t2, 0x0001    #		$t2 = RB0
        lw	$t3, LATE($t1)		#		$t3 = LATE

        andi	$t3, $t3, 0xFFFE	#		RE0 = 0
        or      $t3, $t3, $t2	   	#		RE0 = RB0
        sw  	$t3, LATE($t1)		
        j	loop		
            
        li  	$v0, 0			    #	return 0;
        jr  	$ra 
