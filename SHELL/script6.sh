#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------Vowels Count------------

count=$(grep -o [AaEeIiOoUu] vowels.txt | wc -l)
echo $count

#End of the program