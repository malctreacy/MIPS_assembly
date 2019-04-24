# Author: Malcolm Treacy
# Date: 4.24.19
# Declare and Multiply Values in MIPS: Assembly program to demonstrate how to declare 2 
# values and multiply them together. 
	# There are several ways to multiply values in MIPS
	# 1. mul [mul DESTINATION, OPERAND1, OPERAND2]
	# 2. mult
	# 3. sll - "shift left logical"
	
#  mul is used to multiply smaller numbers whose products do not result in a number greater than 32 bits.
.data
.text
	# addi ==> add imediate (for constant numbers)
	# This code will add 10 to 0 ($zero) and store the result into $t0
	addi $s0, $zero, 10 
	# This code will add 4 to 0 (zer0) and store the result into $t0
	addi $s1, $zero, 4
	# mul is the command to multiple two values ($s0, $s1) and save them into the
	# temporary register $t0
	mul $t0, $s1, $s0
	# Notify the assmebler to prepare to print an integer
	li $v0, 1
	# Move the value calcuated previously into $a0
	move $a0, $t0
	# Notify the system to complete the print command
	syscall
