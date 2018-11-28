#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------Check palindrome-----#

find ./$1 -name "file"
ls ./$1 | wc -l
rm ./$1/*.c
find ./$1 -size 0 -delete

#End of the Program