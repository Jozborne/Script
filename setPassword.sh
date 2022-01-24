#! /bin/bash

#Set Password.sh 

#Version 1.0

#Lets the User enter the name of the folder

read -p "Name of folder you wish to create : " folderName

#Displays "Enter Password" to the user

echo "Enter Password"

#Hides the password input 

read -sp 'password : ' pass_var

#Creates the folder name in the week2 folder tree

mkdir ~/john/scripts/portfolio/week2/"$folderName"

#Creates the secret.txt document

touch ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

echo "$pass_var" > ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

#Displays the $pass_var as enter previously in the created file tree and secret.txt document

exit 0
