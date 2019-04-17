# Data section this is the program memory area
# Data such as arrays and strings are allocated and stored in the data section
.data

# Assembly instustions will be located in the .text section
.text

# Similar to C/C++ programs, every MIPS program is expected to have a main
# label, this indicates the program's entry point.

main:
# This program will calculate the SUM of a hard-coded range [1,6]
# Here is the psuedo-code for this operation:
# 1. range = 6
# 2. sum = 0
# 3. while range > 0:
# 4. 	sum = sum + range
# 5. 	range = range - 1


# 1. Set the range value.
# li command loads the value 6 into the temporary register $t4.
li $t4, 6 # range = 6

# 2. Set the initial value of sum to 0.
# $0 is a special MIPs register which is always 0.
# move command copies a value from one register to another. 
move $t5, $0 # sum = 0

# inc: is a function definition
inc:

# add instruction: adds the value in two registers
# add the value in $t5 with $t4 and save it to $t5 (sum)
add $t5, $t5, $t4

# addi instruction: adds the value involving a constant (in this case -1)
# decrement the range, and save it to $t4 (range)
addi $t4, $t4, -1

# bgt instruction: branch if greater than 0
# repeat 'inc' function if $t4 is bigger than 0
bgt $t4, 0, inc 

# End of the program.
# $v0 is used to hold return values from subroutine
# 1 is the service code to print an integer
li $v0, 1
# $a0 = integer to print, this code loads our final value ($t5) into $a0
move $a0, $t5
syscall
#jr $ra

