# Author: Malcolm Treacy
# Date: 4.24.19
# Demonstration on how to save on the stack in MIPS: 
	# It is possible to save values to the stack.
	# Convention of $t# registers, and $s# registers
	# In t-registers are callee-saved
	# In s-registers the callee are not allowed to change these registers
	# sp ==> space pointer is used to allocated space in the stack for our
	# 	saved variables.
	
.data
	newLine: .asciiz "\n"
.text
	main:
	
	# $s0 has been assigned the value 10
	addi $s0, $zero, 10
	
	# jump and link
	jal increaseValueOfRegister
	
	# print a new line
	li $v0, 4
	la $a0, newLine
	syscall
	
	# Print the value to the cosole:
	li $v0, 1
	move $a0, $s0
	syscall

	# This line is going to signal the end of the program
	li $v0,10
	syscall
	
	increaseValueOfRegister:
		# -4 is used because the stack goes downward,
		# this allocated 4 bytes in the stack
		# subtracting 4 allocates 
		addi $sp, $sp, -4
		# Save the value in $s0 to the first location in the stack pointer
		# The zero signifies the first element/position in the stack
		# 	in this case we only allocated enough space for 1 element (4bytes)
		sw $s0, 0($sp)
		
		# Now we can mutate the value in $s0
		addi $s0, $s0, 30
		
		# Print a new value in the function:
		li $v0, 1
		move $a0, $s0
		syscall
		
		# Now we will load the register from memory back into $s0
		lw $s0, 0($sp)
		# Restore the stack:
		addi $sp, $sp, 4
		
		jr $ra