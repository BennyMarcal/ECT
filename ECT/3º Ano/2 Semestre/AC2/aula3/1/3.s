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
        .globl main

main:
        lui     $t1, SFR_BASE_HI        # 0xBF88
        lw	$t2, TRISE($t1)		    # READ  (Mem_addr = 0xBF880000 + 0x6100)
        andi    $t2, $t2, 0xFFFE        # MODIFY (bit8 = 0 - RD8
        sw      $t2, TRISE($t1)		    # WRITE (Write TRISE register)

        lw      $t2, TRISD($t1)         # READ  (Mem_addr = 0xBF880000 + 0x6040)
        ori     $t2, $t2, 0x0100        # MODIFY (bit0 = 0 - RE0
        sw	$t2, TRISD($t1)		    # WRITE TRISD register
loop:					                #	while(1) {
        lw	$t2, PORTD($t1)		    #		$t2 = PORTD
        andi	$t2, $t2, 0x0100		#		$t2 = RD8
        srl     $t2, $t2, 8		        # $t2 = $t2 >> 8 
        
        
        lw	$t3, LATE($t1)		    # Read LATE register
        andi	$t3, $t3, 0xFFFE	    # Reset bit 1 - RE0 = 0
        or      $t3, $t3, $t2	    	# Merge data - RE0 = RB0\
        sw  	$t3, LATE($t1)		
        j	loop	

        li  	$v0, 0			        #	return 0;
        jr  	$ra 	