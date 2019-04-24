# Author: Malcolm Treacy
# Date: 4.24.19
# Printing Characters: Small program to demonstrate how to print characters
# to the console. 

.data
	myChar: .byte 'm' # 1 Char = 1 byte (8 bits)
.text
	li $v0, 4 # Start print
	la $a0, myChar # Load our character
	syscall # Tell the system to print the value 'M'
	