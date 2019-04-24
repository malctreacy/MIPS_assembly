# Author: Malcolm Treacy
# Date: 4.24.19
# Declare and Print Double Values: Assembly program to demonstrate how to declare two 
# integer values and subtract the first from the second (number1, number2)
	# .word is used to decla integer variables
	# load the values into two save registers
	# sub : command to subtract two values and save it to a third register
.data
	number1: .word 20
	number2: .word 8
.text
	# $s0 is a register that cant be modified my functions
	# $s0 gets the value of number1 (20)
	lw $s0, number1 # $s0 = 20
	# $s1 get the value of number2 (8)
	lw $s1, number2 # $s1 = 8
	# Subtract 
	sub $t0, $s0, $s1 # $t0 = $s0 - $s1
	
	# Notifies the system to print an integer
	li $v0, 1
	# Moves the value from $t0 to $a0
	move $a0, $t0
	# Notifies the system to print the value in $a0
	syscall 
	
	
