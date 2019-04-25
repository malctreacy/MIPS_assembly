# Author: Malcolm Treacy
# Date: 4.24.19
# Creating procudures (functions) in MIPS: How to create functions in MIPS
	# Functions in assembly languages are called procedures
	# procedures are declared with 'labels' [nameOfLabel]:
	# ended with a jr $ra
	# Return values, parameter values can also be impl
.data
	# Msg in random access memory
	myMessage: .asciiz "Hello everybody\nmy name is Malcolm\n"
.text
	main:
	# Tells the assembler to jump to the procedure myMessage
	jal displayMessage
	
	# Things below this statement will also be executed after the 
	# jr call.  Jump and link saves this spot in $ra
	addi $s0, $zero, 5
	li $v0, 1
	add $a0, $zero, $s0
	syscall
	# tells the system that the program is done
	# if this isn't there it will perform infinite recursion
li $v0, 10
syscall
	displayMessage:
		li $v0, 4
		la $a0, myMessage
		syscall
		# jr == > defined as "jump register"
		# Means go back to the procedure that called it
		jr $ra