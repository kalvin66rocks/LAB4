# line break I got from stack overflow the rest is my code 
.data
StackTop:   .word 0:99
StackBot: 
var0:	    .word 
var1:	    .word 
operator:   .word 
answer:     .word 

<<<<<<< HEAD
strPrompt:  .asciiz "Please enter a number " 

=======
strPrompt:   .asciiz "please enter 1st number:" 
strPrompt2:  .asciiz "please enter 2nd number:"
opSel:       .asciiz "Select Operator" 
>>>>>>> origin/master
.text
la $sp,StackBot 

GetInput:

	#display prompt 
	li $v0,4
	la $a0, strPrompt	        # load address of prompt
	syscall			        # print str prompt
	li $v0,5 	 	        # take in input 
	syscall
	
	la $a1,var0			# load address value to $t0
	sw $v0,	0($a1)			# store $v0 into ram

GetOperator:
	
	la $a0, opSel		        # load string prompt 
	li $v0,4			# display to user 
	syscall				
	li $v1,5			# store input 
	syscall
	move $a0,$v1			# send the operator in 4a0
	
DisplayNumb:
	
<<<<<<< HEAD
	srl $s0,$s0,1	#shift multiplier right
	bne $s0,$0,loop  #go back into our loop	
done: 
	
	jr $ra

=======
	la $a1, answer	#load Address of prompt 
	li $v0,5	#print int 
	syscall 
	
	
	
>>>>>>> origin/master
