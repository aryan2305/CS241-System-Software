#!/bin/bash

skul1=$(awk '{if($1=="School1")school1+=$2}END{print school1/10}' school_database)
skul2=$(awk '{if($1=="School2")school2+=$2}END{print school2/10}' school_database)
skul3=$(awk '{if($1=="School3")school3+=$2}END{print school3/10}' school_database)
skul4=$(awk '{if($1=="School4")school4+=$2}END{print school4/10}' school_database)

echo Average of 10 years
echo "School1=" $skul1
echo "School2=" $skul2
echo "School3=" $skul3
echo "School4=" $skul4

skul1=$(awk '{if($1=="School1"){count++;if(count%2==0){school1+=$2}}}END{print school1/5}' school_database)
skul2=$(awk '{if($1=="School2"){count++;if(count%2==0){school2+=$2}}}END{print school2/5}' school_database)
skul3=$(awk '{if($1=="School3"){count++;if(count%2==0){school3+=$2}}}END{print school3/5}' school_database)
skul4=$(awk '{if($1=="School4"){count++;if(count%2==0){school4+=$2}}}END{print school4/5}' school_database)


echo Average of even years
echo "School1=" $skul1
echo "School2=" $skul2
echo "School3=" $skul3
echo "School4=" $skul4

skul1=$(awk '{if($1=="School1"){count++;if(count%2!=0){school1+=$2}}}END{print school1/5}' school_database)
skul2=$(awk '{if($1=="School2"){count++;if(count%2!=0){school2+=$2}}}END{print school2/5}' school_database)
skul3=$(awk '{if($1=="School3"){count++;if(count%2!=0){school3+=$2}}}END{print school3/5}' school_database)
skul4=$(awk '{if($1=="School4"){count++;if(count%2!=0){school4+=$2}}}END{print school4/5}' school_database)


echo Average of odd years
echo "School1=" $skul1
echo "School2=" $skul2
echo "School3=" $skul3
echo "School4=" $skul4