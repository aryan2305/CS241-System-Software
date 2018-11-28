#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------Copy file------------

if [[ -r $1 ]]
then
	echo File has /read permission
else
	echo File has no read permission
fi

if [[ -e $1 ]]; then
	echo Overwrite the file?yes/no
	read char
fi

if [[ $char == yes ]]; then
	while read p
	do
		echo $p > $2
	done < $1
fi



#End of the program