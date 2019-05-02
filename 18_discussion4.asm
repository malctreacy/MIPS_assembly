.data
.text
# 2, lbu --> load byte unsigned
# 2. offset 2 from t0 and put it in t1
# and operaion in mips -> keep value of 1 in t1
# storing 4 bytes
# store word , store byte
# hex to decimal conversion

li $t0, 1000			# $t0 = 0011_1110_1000
lbu $t1, 2($t0)			# $t1 = 0000_1111_1111
andi $t1, 0x01			# $t1 = 0000_0000_0001
sw $t1, 0($t0) 		

li $t0, 1000			# $t0 = 0011_1110_1000
or $t0, 0x3e9			# $t0 = 0011_1110_1001 = 1001
sb $zero, 2($t0)	
						# sb is least significant byte


li $t0, 1000			# $t0 = 0x3e8
li $t1, 0xFF			# $t1 = 0x0ff = 0000_1111_1111
li $t2, 4				# $t2 = 0x003
mult $t1, $t4					
mflo $t3				# $t3 = 0x3FC = 0011_1111_1100
sw $t3, ($t0)