#! /bin/bash

#Lets the User enter the name of the folder

read -p "Name of folder you wish to create : " folderName

#Displays "Enter Password" to the user

echo "Enter Password"

#Hides the password input

read -sp 'password : ' pass_var

#Creates the folder name in the week2 folder tree

mkdir ~/john/scripts/portfolio/week2/"$folderName"

#Creates the secret.txt document (Rani)

touch ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

#Displays the $pass_var as enter previously in the created file tree and secret.txt document

echo $pass_var | sha256sum > ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

exit 0

#Rani, B. (2021, 19 February 2021). touch command in Linux with Examples. Retrieved 23 January from https://www.geeksforgeeks.org/touch-command-in-linux-with-examples/

