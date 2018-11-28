#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------Check palindrome-----#

read -p "Enter a string: " string
if [[ $(rev <<< "$string") == "$string" ]]; 
then
    echo Yes Length of String: ${#string}
else
	echo Not Palindrome
fi

#End of the Program