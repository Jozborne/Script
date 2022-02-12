#!/bin/bash
#Created by John Osborne
#Created on the 5th of February 2022
#Modified on the 12 February 2022
#Created to be guess a number using the printError 



#NUM2=1
#NUM3=100
#NUM4=42

NUM2=1
NUM3=100
NUM4=42



printError()
#Allows Error to appear in red 
{

    echo -e "\033[31mERROR:\033[0m $1"

}



#getNumber to select a number


#Read allows entrance of the first variable from the getNumber() command

getNumber()

{

#Enter variable 
read -p "$1: "
     #
    while (( $REPLY < $NUM2 || $REPLY > $NUM3 )); do
     
        printError "Input a number between $NUM2 and $NUM3"
     
        read -p "$1: "

    done

#input a variable becomes $1



    while (( $REPLY != $NUM4 )); do


       if [[ $REPLY -lt $NUM2 || $REPLY -gt $NUM3 ]]; then

        printError "Enter a number between $NUM2 and $NUM3"
      fi

       if [[ $REPLY -lt $NUM4 && $REPLY -gt $NUM2 ]]; then

        echo "Too Low!"

       elif [[ $REPLY -gt $NUM4 && $REPLY -lt $NUM3 ]]; then

        echo "Too High!"

      fi

      read -p "$1: "

    if [[ $REPLY -eq $NUM4  ]]; then
    echo "Right!"
    fi
    done

    
}
#Echo at the end with 42 being the correct number 
getNumber "Guess a number between 1 and 100" $NUM2 $NUM3 $NUM4

