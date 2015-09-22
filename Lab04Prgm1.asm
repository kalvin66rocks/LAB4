# line break I got from stack overflow the rest is my code 
.data
StackTop:   .word 0:99
StackBot: 
var0:	    .word 
var1:	    .word 

strPrompt:  .asciiz "please enter a number " 

.text
main:

la $sp,StackBot 
GetInput:

	#display prompt 
	li $v0,4
	la $a0, strPrompt	        # load address of prompt
	syscall			        # print str prompt
	li $v0,5 	 	        # take in input 
	syscall
	
	la $t0,var0			# load address value to $t0
	sw $v0,	0($t0)			# store $v0 into ram

	addi $s0,$v0,0	                # load $v0 to $s0
	jr $ra
	addi $a1,$v0,0	                # load $v0 to $s0

