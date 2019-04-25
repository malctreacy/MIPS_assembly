# Author: Malcolm Treacy
# Date: 4.24.19
# Creating procudures * with return values (functions) in MIPS: How to create functions in MIPS
	# Functions in assembly languages are called procedures
	# procedures are declared with 'labels' [nameOfLabel]:
	# ended with a jr $ra
	# Return values, parameter values can also be implemented
	# a register are used to save parameters to pacc
	
.data
	
.text
	main:
	# Save the values into the a registers
	addi $a1, $zero, 50
	addi $a2, $zero, 25
	# Tells the assembler to jump to the procedure myMessage
	jal addNumbers
	
	li $v0, 1
	addi $a0, $v1, 0
	syscall
	
li $v0, 10
syscall
	addNumbers:
		# By convention $v1 is used for return values
		add $v1, $a1, $a2
		jr $ra