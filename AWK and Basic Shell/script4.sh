#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------Calculator-----#

echo "Enter two numbers"
read a b;
echo  -e "Choose which operation you would like to do:\n"
echo "Enter 1 for addition"
echo "Enter 2 for subtraction"
echo "Enter 3 for division"
echo "Enter 4 for multiplication"
read choice;

case $choice in
	1)	echo "Sum="$(($a+$b))
	;;
	2)	echo "Subtraction="$(($a-$b))
	;;
	3)	echo "Division="$(($a/$b))
	;;
	4)	echo "Multiplication="$(($a*$b))
	;;
esac

#End of the Program