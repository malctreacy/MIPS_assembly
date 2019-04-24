# Author: Malcolm Treacy
# Date: 4.24.19
# Declare two integer values and divide with the div instruction: Assembly program to demonstrate how to declare a
# two integer values and divide one by the other. 
	# div ==> div instruction to divide two values div SAVEVARIABLE OPERAND OPERAND
	# the div method will store the result in another separate register
.data
.text
	addi $t0, $zero, 30
	addi $t1, $zero, 5
	
	# The value in $t0, divided by the value in $t1
	div $s0, $t0, $t1
	
	# You can also divide by constants as well:
	# Divide 30 by the constant number 10
	div $s1, $t0, 10
	
	# Div with two registers
	# Divides 30/6 and the quotient will be stored in the lo register
	# Remainder will be in hi
	div $t0, $t1
	# Quotient: $t3 will have the quotient
	mflo $t3
	# Remainder: $t4 will have the remainder
	mfhi $t4
	
	# Print Value 
	li $v0, 1
	move $a0, $t3
	syscall
	# Print Value 
	li $v0, 1
	move $a0, $s4
	syscall
	