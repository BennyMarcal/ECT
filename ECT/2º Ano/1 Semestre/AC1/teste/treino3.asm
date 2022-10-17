	.data
	.eqv id,0
	.eqv sum,4
	.eqv sample,8
	.eqv ns,37
	.eqv average,40
#pressure:.space 44
zero:	.float 0.0
	.text
	.globl reCalc
reCalc:	li $t0,0			#i = 0
	li $t1,0			#j = 0
	li $t2,0			#sum = 0
	move $t3,$a0		#$t3 = pts
	move $t4,$a1		#$t4 = maxIndex
	l.s $f2,zero		#acc = 0
	sw $t2,sum($t3)		#inicializar o pts.sum = 0
	lb $t5,ns($t3)		#pts.ns
	s.s $f10,average($t3)	#inicializar o pts.average = 0
				
for:	bge $t0,$t4,endw		#i < maxIndex

for1:	bge $t1,$t5,endf		#j < pts.ns
	
	addu $t6,$t3,$t1		#adicionar [j] a pts.sample
	lb $t6,sample($t6)	#pts.sample - valor na posicao [j]
	add $t2,$t2,$t6		#sum += pts.sample[j]

	addi $t1,$t1,1		#j++

	j for1
	
endf:	sw $t2,sum($t3)		#sw do sum no pts.sum

	mtc1 $t2,$f4		#converter sum pra float
	cvt.s.w $f4,$f4
	
	mtc1 $t3,$f6		#converter pts.ns pra float
	cvt.s.w $f6,$f6
	
	div.s $f10,$f4,$f6	#pts.average = (float) sum / (float) pts.ns
	
	add.s $f2,$f2,$f10		#acc += pts.average
	
	addi $t1,$t1,1		#j++

end:	addi $t0,$t0,1		#i++
	addi $a0,$a0,44		#pts++
	j for			#jump pra função for
	
endw:	mtc1 $t4,$f8		#converter maxIndex para float
	cvt.s.w $f8,$f8
	
	div.s $f0,$f2,$f8	#return(acc / (float)maxIndex)
	
	jr $ra
	
