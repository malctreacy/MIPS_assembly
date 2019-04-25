# Author: Malcolm Treacy
# Date: 4.24.19
# Discussion #3 Section Notes: Discussion on arrays in MIPs. 
	# sllv - $t0, $t1, $t2 shift using the variable
	# sll shift left logically with a constant number
	# Memory Interaction:
	# - registers are the fastest storage elements available for
	# 	using function on the data they contain.
	# - There are only 32 registers available however. 
	# Memory in MIPS:
	# - Memory can be looked at like a big array of elements. 
	# - Each element in this memory is 8-bit (byte)
	# - Address: index of each element 
	# - Arrays: collections of object of the same time, stored in memory
	# 		- indexes / values 
	# - Base Address: the address of the first element
	# Accessing an array:
	# 1. Save the base address into a register. 
	# 2. Next element address is +4
	# Declaring an array in C:
	# - typeOfArray Name[Size] (int, char, floats, doubles)
	# - int A[10] # creates an array of 10 integers. 
	# - integers are 4 bytes each in the memory
	# Pointers: are pointers to an array element, whose value is the address
	# - int *p; # pointer to an int
	# EXAMPLE POINTERS IN C:
	# 	int* ptrl
	# 	x = 12;
	# 	ptr = $&x; # this holds the first address of the integer value x
	# In MIPS you need a base address and an offset (li $s0, baseAddress)
	# lw - load word
	# ASCUII Code: asciitable.com
	# - each character in ASCII is associated with a unique byte value
	# - S --> 0x53 (hex) etc. 
	# - \n --> 0x10 (hex) new line
	# - carrage return --> 0x13 (hex) 
	# ascii chars are 8-bits (1 byte)
	# lb - load byte
	# lbu - loaf byte unsigned
	# ASCII:
	# - ascii strings are char arrays stored in memory, with variable lengths
	# - every string is terminated with a null character
	# EG:
	# Hello! is 7 bytes (including the null)
	# - difference between a lowercase char and an uppercase char is 32

.data
.text
	# create a space to hold the result
	
	# Function that calculates the length of a string
	# a0 is a null terminated string (base address)
	strlen:
	# load the value of each char of the string into a register
	li $t2, 0
	start:
	lbu $t1, 0($0) # baseaddress with offset 0
	# check if zero or not
	beqz $t1, done
	# increment the counter ($t2)
	addi $t2,$t2, 1
	# move the pointer to the next element
	# difference between address is just 1-byte
	addi $a0, $a0, 1
	j start
	done:
	# move the result to $v0
	move  $v0, $t2
	
	
	
	
	
	
	
	
	jr $ra