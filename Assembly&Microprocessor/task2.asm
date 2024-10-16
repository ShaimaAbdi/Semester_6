.data 
str1:     .asciiz  "Enter your Name: "
str2:     .asciiz "Welcome to MIPS Assembly, "
buffer:   .space  32
.globl    main
.text 
main: 
   li $v0, 4
   la $a0 , str1 
   syscall
   li $v0, 8 
   la $a0, buffer 
   li $v0, 8                 # Service code for reading string
   la $a0, buffer            # Load address of buffer to store input
   li $a1, 32                # Maximum number of characters to read
   syscall

   # Print the welcome message
   li $v0, 4                 # Service code for printing string
   la $a0, str2              # Load address of welcome message
   syscall

   # Print the entered name
   li $v0, 4                 # Service code for printing string
   la $a0, buffer            # Load address of the entered name
   syscall

   # Exit the program
   li $v0, 10                # Service code for exiting the program
   syscall
