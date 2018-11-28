#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------GCD of two numbers------------

read -p "Enter two numbers " a b

if [[ a<b ]]; then
	temp=$b;
	b=$a;
	a=$temp;
fi

while [[ b -ne 0 ]]; do
	a=$(($a%$b));
	temp=$b;
	b=$a;
	a=$temp;
done

echo gcd=$a

#End of the program