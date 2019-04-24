# Author: Malcolm Treacy
# Date: 4.17.19
# First assembly program: Prints "Hello World!" into the I/O console.

# Assembly Information (for learning purposes)
# .data: The area where the data being used in my program will be stored.
# .text: The area where the assembly instructions will be defined.
.data 
   # Declares a RAM variable 'myMessage' containing "Hello World\n"
   myMessage: .asciiz "Hello World\n"
.text
   # Notifying the system to get ready to print something
   li $v0, 4
   # Load the address from RAM to $a0
   la $a0, myMessage
   # syscall makes the program execute the the procedure
   syscall