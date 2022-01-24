#! /bin/bash

#Created by John Osborne
#Creation 23 January 2022
#Modification date 24 January 2022
#Purpose of script is to hash a password in a folder to a .txt document.

#Lets the User enter the name of the folder

read -p "Name of folder you wish to create : " folderName

#Displays "Enter Password" to the user

echo "Enter Password"

#Hides the password input

read -sp 'password : ' pass_var

#Creates the folder name in the week2 folder tree in this example John was used.

mkdir ~/john/scripts/portfolio/week2/"$folderName"

#Creates the secret.txt document (Rani)

touch ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

#Displays the $pass_var as entered previously however this is now hashed in the created file to secret.txt document

echo $pass_var | sha256sum > ~/john/scripts/portfolio/week2/"$folderName"/secret.txt

exit 0

#Rani, B. (2021, 19 February 2021). touch command in Linux with Examples. Retrieved 23 January from https://www.geeksforgeeks.org/touch-command-in-linux-with-examples
