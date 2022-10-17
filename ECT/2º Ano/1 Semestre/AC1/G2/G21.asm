	.data
	.text
	.globl main
main:	li $t0,0x5C1B	#meter os valores de hexadecimal pra binario, para facilitar
	ori $t1,$0, 0xA3E4
	and $t2,$t0,$t1		#operacoes logicas
	or $t3,$t0,$t1
	nor $t4,$t0,$t1
	xor $t5,$t0,$t1
	li $t6,0x0F1E 		#li - carrega logo variaveis
	ori $t7,$0,0xFFFF
	xor $s0,$t6,$t7		#negacao bit a bit
	jr $ra