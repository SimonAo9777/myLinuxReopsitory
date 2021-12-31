#!/bin/bash
# FileName:myScript.sh
# Author:Simon Ao
# Student ID: 040983402
# Semester: Winter 2021
# Course: CST8102 332
# Lab8
# Date: 26 Mar 2021
# Create a script file that gives user a choice of five items labeled

#The menu below
#Choose one of the following options
#The screen should be clearded before the menu is displayed
display_menu(){
     clear
     echo "A: Create a user account"
     echo "B: Delete a user account"
     echo "C: Change supplementary group for a user accout"
     echo "D: Change initial group for a user accout"
     echo "E: Change default login shell for a user accout"
     echo "F: Change account expiration date for a user account"
     echo "Q: Quit"
     echo " "
     echo "What would you like to do:"


}

#A
#Create user account based on the information provided below
#-d directory Secify the user's home directory
#If this directory does not exits,use the -m option 
#at the same time to create a home directory
#-s Shell file specifies the user's login shell
create_user_account(){
	read -p " Please enter user name: " userName
	read -p "Please enter home directory:" homeDirectory
	read -p "Please enter default login shell:" defaultShell

	sudo useradd -d $homeDirectory -m -s $defaultShell $userName
	echo "$userName was created."
	sleep 3
}

#B
#Enter the user name of the account to be deleted
#Delete the account and the user's home directory
#-r Delete the user login directory and all files in the directory
user_account_delete(){
       read -p "Please enter an user name to delete:" userName
       sudo userdel -r $userName
       echo "$userName was delete."
       sleep 3
}

#C
#Prompt for username and group name that is add as a supplementary
#group fro the user account
#-G user group,user group specifies the additional group to which  
#the user belongs
change_supple_group(){
	read -p "Please enter user name:" userName
        read -p "Please enter a supGroupName group name:" supGroupName
        sudo usermod -G $supGroupName  $userName
	echo "$userName was add to group '$supGroupName'as supplement"
	sleep 3

}

#D
#Promt for username and group name that is used as
#the initial group for the user account,and change the
#initial group for the user account
#-g user group, Specify the user group to which the user belongs
change_initial_group(){ 
        read -p "Please enter user name:" userName
        read -p "Please enter a group name:" groupName
        sudo usermod -g $groupName $userName
	echo "The initial group of $userName was changed to $groupName"
	sleep 3

}

#E
#Prompt for username and shell name
#Change the default shell for the user account
#-s Modify the shell used by the user after logging in
change_default_shell(){
       read -p "Please enter user name:" userNmae
       read -p "Please enter a default shell:" shellName
       sudo usermod -s $shellName $userName
       echo "The defalut shell $userName was changed to $shellName"
       sleep 3
}

#F
#Prompt for username and expiration date
#change the expiration date for the user account
#-e Modify the expiration date of the account
change_expir_date(){
      read -p "Please enter user name: " userName
      read -p "Please enter an account expiry date YYYY-MM-DD:" accountExpiryDate
      sudo usermod -e $accountExpiryDate $userName     
      echo "The expiration date $userName was changed to $accountExpiryDate"
      sleep 3

}


choice=n #initialize to dummy value

#while loop
#using if-elif-else structure
#-e option enable the interpertation of backslash escape
#-c suppresses the trailing newline
#[] The left square bracket is the command identifier for invoking
#the test,and the right square bracket is the judgment of the 
#closing condition

while [ $choice != "Q" ] && [ $choice != "q" ]
do
	display_menu
	echo -e "Please choose one option:\c";read choice  

	if [ $choice = 'A' ] || [ $choice = 'a' ]
        then
	       create_user_account

          elif [ $choice = 'B' ] || [ $choice = 'b' ]
        then
	        user_account_delete

	  elif [ $choice = 'C' ] || [ $choice = 'c' ]
        then
                change_supple_group

	  elif [ $choice = 'D' ] || [ $choice = 'd' ]
        then
	        change_initial_group

          elif [ $choice = 'E' ] || [ $choice = 'e' ]
	then
		change_default_shell

	elif [ $choice = 'F' ] || [ $choice = 'f' ]
	then
		change_expir_date
        
               
        fi
     
done

# eof: myScript.sh
