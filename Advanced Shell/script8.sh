#!/bin/bash

unoconv -f csv grades.xlsx
unoconv -f csv marks.xlsx

awk -F, '{getline temp < "grades.csv"; print $0,temp}' OFS=, marks.csv > temp.csv
awk -F, '{print $1,$2,$3,$7,$10}' OFS=, temp.csv > marks.csv
rm temp.csv

ssconvert marks.csv final_marksheet.xlsx
