# Author: Malcolm Treacy
# Date: 4.24.19
# Declare and Print Double Values: Assembly program to demonstrate how to declare an 
# double value and also print it to the console.
	# .double is used to declare the type. 
	# ldc1 $v0, 3 is used to notify the system you want to print a double. 
	# ldc1 is "load double co-processor 1" which loads our float into a special register that is capable of handling float values. 
	# NOTE: Doubles are 64-bit, so they can not be stored in a single register, 
	# they need to be stored in pairs of registers. 
.data 
	myDouble: .double 7.202
	# When working with double we don't have $0, we have to create our own
	myZero: .double 0.0
.text
	# NOTE: This will load the double into coprocessor 1, and put it into a pair
	# of registers. A double is 64 bits, so we need 2 registers to hold a double. 
	
	# myDouble will be stored in f2 and f3
	# ldc1 == > "load double coprocessor 1"
	ldc1 $f2, myDouble  
	 # myZero will be stored in f0 and f1
	ldc1 $f0, myZero
	# Tells the system to get ready to print a double
	li $v0, 3 
	# $f12 is the argument storage are for doubles, and floats
	# add.d tells the assembler to add two floats (in this case you add 0 + 7.202)
	# this stores the result in $f12
	add.d $f12, $f2, $f0 
	# Tells the system to execute the print statement
	syscall