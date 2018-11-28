#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------Arithmetic operations-----#

# #-------to add four user input numbers
# read a b c d;
# sum=$[$a+$b+$c+$d]
# echo "Sum of four numbers::"$sum


# #------if else on command line arguments
# if [[ $# -ge 1 && $# -lt 2 ]]; then
# 	echo "one command line argument missing"
# elif [[ $# -lt 1 ]]; then
# 	echo "both the command line argumnts missing"
# else
# 	sum=$[$1+$2];
# 	echo $sum
# fi

#-------sum of all the numbers given in the command line arguments
sum=0;
for arg in $*; do
	if [[ $arg != $0 ]]; then
		sum=$[sum+$arg];
	fi
done
echo $sum
#End of the Program