.data 
str1:     .asciiz  "Enter an integer Value: "
str2:     .asciiz "You Entered: "

.globl    main
.text 
main: 
   li $v0, 4 
   la $a0, str1 
   syscall
   li $v0,5
   syscall 
   move $s0,$v0
   li $v0, 4 
   la $a0, str2
   syscall
   li $v0, 1
   move $a0, $s0
   syscall
   li $v0, 10
   syscall