#! /bin/bash
#Created by John Osborne
#Creation 30 January 2022
#Modified 6 February 2022s
#Created to allow user to download webpages.


#Creates loop

while true
do

read -p "Enter URL :" webaddress
#Allows command to be exited on enter of exit

    if [ "$webaddress" == "exit" ];then 
        echo "Thank you for using this script"
        exit;
    fi
    
#Allows user to select where they wish to store the file
read -p "Where do you want to save the web address?: " 

#Allow wget to run and download 

wget "$webaddress"


#Allows command to be exited on enter of exit


#Geeks, G. f. (2021, 08/09/2021). Wget command in Linux/Unix. Retrieved 30 January from https://www.geeksforgeeks.org/wget-command-in-linux-unix/#:~:text=Wget%20is%20the%20non%2Dinteractive,without%20hindering%20the%20current%20process.



done

exit 0