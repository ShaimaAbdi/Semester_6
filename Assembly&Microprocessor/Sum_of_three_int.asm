# Sum of three integers
# Objective: Computes the sum of three integers. 
# Input: Requests three numbers, Output: sum
################### Data segment ###################
.data
prompt:	.asciiz     "Please enter three numbers: \n"
sum_msg:	.asciiz     "The sum is: "
################### Code segment ###################
.text
.globl main
main:
   la    $a0,prompt	# display prompt string
   li    $v0,4
   syscall
   li    $v0,5	# read 1st integer into $t0
   syscall
   move  $t0,$v0
     li    $v0,5	# read 2nd integer into $t1
   syscall
   move  $t1,$v0
   li    $v0,5	# read 3rd integer into $t2
   syscall
   move  $t2,$v0
   addu  $t0,$t0,$t1	# accumulate the sum	
   addu  $t0,$t0,$t2
   la    $a0,sum_msg	# write sum message
   li    $v0,4
   syscall
   move  $a0,$t0	# output sum
   li    $v0,1
   syscall
   li    $v0,10	# exit
   syscall
