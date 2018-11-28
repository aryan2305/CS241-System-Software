#!/bin/bash
: '
Name:Aryan Agrawal
Roll no. = 170101013
Course : CS241
'
#-------------listing directory-----------

echo -e "File name\tdate\ttime\tpermission"
echo    _____________________________________________________________________
echo
ls -l ~ |awk 'NR!=1 {printf "%-10s%-10s%-10s%-10s%-10s\n", $9,$6,$7,$8,$1}'
echo
num=`ls -l ~|grep ^-|wc -l`
dirnum=`ls -l ~|grep ^d|wc -l` 
echo Total no of files: $num
echo Total no of directory: $dirnum
echo Total no of files: $num>final_output.txt
echo Total no of directory: $dirnum>>final_output.txt



#End of the program