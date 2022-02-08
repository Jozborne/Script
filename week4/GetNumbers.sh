#!/bin/bash
#Created by ECU
#Modified on the 6 February 2022
#Created to be a test printError functions 


#This allows the concept of print error to produce the desired outcomes 

printError()

{

    echo -e "\033[31mERROR:\033[0m $1"

}



#This function will get a value between the 2nd and 3rd arguments

getNumber()

{

    read -p "$1: "

      while (( $REPLY < $2 || $REPLY > $3 )); do

        printError "Input must be between $2 and $3"

        read -p "$1: "

    done

}


echo "this is the start of the script"

#Allows the user to input a number
getNumber "please type a number between 1 and 10" 1 10

#Thanks the user for inputing a number between 1 10
echo "Thank you!"
#Thanks the user for inputing a number between 50 100
getNumber "please type a number between 50 and 100" 50 100

echo "Thank you!"