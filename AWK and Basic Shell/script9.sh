#!/bin/bash
<<COMMENT
 Name : Aryan Agrawal
 Roll No. : 170101013
 Semester : 3
COMMENT
#------ awk and sed ques -----#

awk '{file=$1".txt"}{print "" > file}' $1
awk '{if($1%2 && $2 == "CS241" && $1>=17491011 && $1<=17491015){print $0}}' roll_list.txt \
| sed -r "s/([0-9]+)(.*)("CS241")/Roll no:\1 Subject:\3/g"

#End of the Program