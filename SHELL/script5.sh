#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------Array input and array traversal------------

read -a array

num=0

for i in "${array[@]}"
do 
	count=0
	for j in "${array[@]}"
	do
		if [[ $j -eq $i ]]; then
			count=$((count+1))
		fi
	done
	if [[ $count -eq 1 ]]; then
		num=$((num+1))
		ans[$num]=$i;
	fi
done

echo "total such values="$num

for i in "${ans[@]}"
do
	echo -n $i" "
done
echo


#End of the program