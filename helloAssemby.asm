.data 
   myMessage: .asciiz "Hello World\n"
.text
   # Notifying the system to get ready to print something
   li $v0, 4
   # Load the address from RAM to $a0
   la $a0, myMessage
   # syscall makes the program execute the the procedure
   syscall