#! /bin/bash
read -p "Name of folder you wish to create : " folderName
# Lets the User enter the name of the folder
echo "Enter Password"
#Displays "Enter Password to the user"
read -sp 'password : ' pass_var
#Hides the password input 

mkdir ~/john/scripts/portfolio/week2/"$folderName"
#creates the folder name in the week2 folder tree
touch ~/john/scripts/portfolio/week2/"$folderName"/secret.txt
#Creates the secret.txt document
echo "$pass_var" > ~/john/scripts/portfolio/week2/"$folderName"/secret.txt
#Displays the $pass_var as enter previously in the created file tree and secret.txt document

exit 0