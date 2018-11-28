#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------Append the content of one file to another------------

if [[ -e $1  && -e $2 ]]
then
	while read p 
	do
		echo $p
		echo $p >> $2
	done < $1
else
	echo some files does not exist
fi



#End of the program