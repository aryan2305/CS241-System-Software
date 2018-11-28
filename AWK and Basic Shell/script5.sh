#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------Random Nuber Generator-----#

x=1
y=20
DIFF=$((y-x+1))
num=$(($(($RANDOM%$DIFF))+x))

echo -e "GUESS THE NUMBER GAME\n"
echo "User will be given three chances to guess a number between 1-20"
echo -e "each time the realtion between the number and the answer will be shown that is either it is greater,smaller,equal\n"

flag=1
for (( i = 1; i <=3; i++ )); do
	echo Enter $i choice of number
	read num1
	if [[ num1 -eq num ]]; then
		echo "You Won!! Entered number is MATCHED"
		flag=0
		break
	elif [[ num1 -lt num ]]; then
		echo "Entered number is SMALLER"
	else
		echo "Entered number is BIGGER"
	fi
done

if [[ flag -eq 1 ]]; then
	echo "Better luck next time!!Random generated number is "$num
fi
  
#End of the Program