#!/bin/bash
# FileName:myGrade.sh
# Author:Simon Ao
# Student ID: 040983402
# Semester: Winter 2021
# Course: CST8102 332
# Lab7
# Date: 13 Mar 2021
# Calculate the final grade and dispaly the letter grade for a course

# get values from user
echo "Enter Assignment mark (0-40)";
read assignmentG
echo "Enter Test 1 mark (0-15)";
read testG
echo "Enter Test 2 mark (0-15)";
read test2G
echo "Enter Final exam mark (0-30)";
read finalExamG

#Calcualte the total number of grade
gradeOutPut=$((assignmentG+testG+test2G+finalExamG))

if [ $gradeOutPut -le 100 ] && [ $gradeOutPut -ge 90 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is A+";

elif [ $gradeOutPut -le 89 ] && [ $gradeOutPut -ge 85 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is A";

elif [ $gradeOutPut -le 84 ] && [ $gradeOutPut -ge 80 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is A-";

elif [ $gradeOutPut -le 79 ] && [ $gradeOutPut -ge 77 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is B+";

elif [ $gradeOutPut -le 76 ] && [ $gradeOutPut -ge 73 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is B";

elif [ $gradeOutPut -le 72 ] && [ $gradeOutPut -ge 70 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is B-";

elif [ $gradeOutPut -le 69 ] && [ $gradeOutPut -ge 67 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is C+";

elif [ $gradeOutPut -le 66 ] && [ $gradeOutPut -ge 63 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is C";

elif [ $gradeOutPut -le 62 ] && [ $gradeOutPut -ge 60 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is C-";

elif [ $gradeOutPut -le 59 ] && [ $gradeOutPut -ge 57 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is D+";

elif [ $gradeOutPut -le 56 ] && [ $gradeOutPut -ge 53 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is D";

elif [ $gradeOutPut -le 52 ] && [ $gradeOutPut -ge 50 ];
then echo "Your final numeric grade is $gradeOutPut, and your final letter grade is D-";

else
	echo "Your final numeric grade is $gradeOutPut, and your final letter grade is F";

fi

# eof: myGrade.sh
