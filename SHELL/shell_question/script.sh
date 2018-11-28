#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------searching in directories-----------

num_load(){

	#echo function 1
	grep -h "num loads from remote cache" 1/1.out 2/2.out 3/3.out > output/1.output
}


value_sum(){
	awk '{for(i=1;i<=NF;i++)sum+=$i}END{print sum}' output/1.output > output/2.output
}


num_load
value_sum


#End of the program
