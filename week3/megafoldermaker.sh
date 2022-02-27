#!/bin/bash
#Created by John Osborne
#Creation 30 January 2022
#Modified 27 February 2022
#Created to allow user to create or copy a folder or Set a password base off their respective inputs. 

#Allows input of a number

echo "Please enter two numbers"

read num1
read num2


#!/bin/bash

#If there aren't two arguments to the script

#For every number between the first argument and the last

for ((i = $num1; i <= $num2; i++))

do

    #Create a new folder for that number

    echo "Creating directory number $i"

    mkdir ~/john/scripts/portfolio/"week $i"

done

