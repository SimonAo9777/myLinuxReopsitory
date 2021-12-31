#!/bin/bash

#FileName:myCalc.sh
# Lab9
# Student Name:Simon Ao
# Student Number:040983402
# Course: CST8102
# Lab section number:332
# Date:2021-04-04
# Create a script file to perform basic calculation.

#Operational addtion
addtion(){
    (( result = $1 + $2 ))
    echo "The sum of $1 plus $2 equals " $result
}

#Operational subtraction
subtract(){
    (( result = $1 - $2 ))
    echo "The sum of $1 substract $2 equals " $result
}

#Display menu1.
display_menu1(){
   echo "C) Calculation"
   echo "X) Exit"
}

#Display menu2.
display_menu2(){
   clear
   echo "Please enter an integer number or X to exit:"
}

#Display menu3.
display_menu3(){
   clear
   echo "+) Add"
   echo "-) Subtract"
   echo "X) Exit"
}

#The function of performing operation without parameters
function_em(){

#Initialize to dummy value
option1=n
option2=n
option3=n
option4=n

#Set the loop condition,if it is not "X" and "x",the loop continue.
while [ $option1 != "X" ] && [ $option1 != "x" ]
do 
   display_menu1
    read option1
    if [ $option1 = 'C' ] || [ $option1 = 'c' ]
    then 
	 display_menu2 
	  read option2

	  if [ $option2 != 'X' ] && [ $option2 != 'x' ]
	  then
	      display_menu3
	       read option3

	       if [ $option3 = '+' ] 
	       then
		    display_menu2
		    read option4
		    if [ $option4 != 'X' ] && [ $option4 != 'x' ]
		    then 
			  addtion $option2 $option4
			  sleep 3
			  clear
	            else
		       exit
                    fi
	       elif [ $option3 = '-' ]
	       then
	            display_menu2
		    read option4
		    if [ $option4 != 'X' ] && [ $option4 != 'x' ]
		    then
			  subtract $option2 $option4
			  sleep 3
			  clear
		    else
		       exit
		    fi
	       elif [ $option3 = 'X' ] || [ $option3 = 'x' ]
	       then
	             exit
	       else
		  echo "Error input!"              		    
	       fi
	  else
	     exit
	  fi
    elif [ $option1 = 'X' ] || [ $option1 = 'x' ]
    then
           echo "Program exit"
    else
       echo "Error input!"
    fi
done
}


#Ensure the validity of input parameters
if [ $# -eq 3 ]
   then 
     if [ $2 = '+' ]
       then
	  addtion $1 $3
     elif [ $2 = '-' ]
       then
	  subtract $1 $3
     else
	echo "Invalid input"
        exit
     fi
#Invoke a parameterless operation
elif [ $# -eq 0 ]
     then
     function_em;
else     
   echo "Error number "
fi

                         


#eof:myCalc.sh



