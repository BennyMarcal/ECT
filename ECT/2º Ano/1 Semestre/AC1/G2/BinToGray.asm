	.data
	.text
	.globl main
main:	li $t0,0x1234
	or $t1,$0,$t0
	
	#Bin --> Gray
	
	srl $t1,$t0,1
	xor $t2,$t0,$t1
	
	#Gray --> Bin
	
	or $t3,$0,$t2
	srl $t4,$t3,4
	xor $t5,$t3,$t4
	
	srl $t4,$t3,2
	xor $t6,$t3,$t4
	
	srl $t4,$t3,1
	xor $t7,$t3,$t4
	jr $ra