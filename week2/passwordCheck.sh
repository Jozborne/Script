#! /bin/bash
#Created by John Osborne
#Creation 24 January 2022
#Purpose of script is to check hashed password and grant or deny access


#Displays "Enter Password to the user"
echo "Enter Secret Password"

#Hides the password input 
read -sp 'password : ' pass_var

#Variable created to Sha256 assigned var_hash with the user inputted pass_var being hashed

var_hash=$(echo $pass_var | sha256sum)

#Created a myvariable command which displays the hash that was created with the cat command

myvariable=$(cat "/home/kali/john/scripts/portfolio/week2/John/secret.txt")

#Displays the  var_hash which is changed by what the user inputs.

echo "1: $var_hash"

#Is the password that was created previously by the user in 2.2.

echo "2: $myvariable"

#If statements with $var_hash user entry having to equal $myvariable

if [ "$var_hash" = "$myvariable" ]; then

#If the variables match access is granted 

    echo "Access Granted" 
#exit command given if successful

exit 0
#If the $var_hash and $myvariable are not equal Access is Denied
else
    echo "Access Denied"
# Ends If statement 
fi
#Exits script 
exit 1

