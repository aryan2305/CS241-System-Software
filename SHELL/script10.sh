#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------stdin to ouptput in file------------

read -p "Enter CD No. " CD
read -p "Enter Movie Name " Movie
read -p "Enter the Language of the Movie " Lang
read -p "Enter the price " price
read -p "Enter the date of release " date

echo -e $CD"\n"$Movie"\n"$Lang"\n"$price"\n"$date"\n" >> $1

#End of the program
