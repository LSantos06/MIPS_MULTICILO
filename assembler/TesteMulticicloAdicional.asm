.data

a:	.word 15		# 1111
b:	.word 10		# 1010

.text
	lw $t1, b		# rt = 9, 2004
	
	andi $t0, $t1, 15	# rt = 8, rs = 9, 15
	
	srl $t0, $t0, 2		# rs = 8, rd = 8
	
	bgez $t0, maiorigual0	# rt = 8
	
menorigual0:
	slti $t0, $t0, 10	# rs e rt = 8, 1
	
	j fim
	
maiorigual0:
	subi $t0, $t0, 10	# rs e rt = 8

	bltz $t0, menorigual0	# rt = 8
	
fim:	