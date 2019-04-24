# Author: Malcolm Treacy
# Date: 4.24.19
# Declare and Print Integers: Assembly program to demonstrate how to declare an 
# integer as a .word and print it to the console.  In this case it is my age. 

.data
	myAge: .word 28  # Word is a 32-bit data value
.text
	li $v0, 1 # Statement used to print MIPs words 
	lw $a0, myAge # Instead of li (load immediate) we will use lw (load word)
	syscall # Tell the system to execute the statements.