# !/bin/bash

#Created by John Osborne
#Creation 30 January 2022
#Modification date 6 February 2022
#Purpose of script is to create a calculator 
#Agrawal, P. (2021, 15 July 2021). Simple Calculator in Bash. Retrieved 26 January from https://www.geeksforgeeks.org/simple-calculator-bash/

#Installed BC for calculations

#Display what is required from the user
echo "Enter numbers for calculations"

#User inputs two numbers
read a
read b
 
# Choose which function you require
echo "Which calculator option do you require?"
echo "1. Add"
echo "2. Subtract"
echo "3. Times"
echo "4. Divide"
read choice




#Case statement chosen with $choice as the variable


case $choice in


1)answer1=`echo $a + $b | bc`

     echo "Result: \033[34m""${answer1}""\e[0m"
;;
      2)answer2=`echo $a - $b | bc`
     
      echo "Result: \033[31m""${answer2}""\e[0m"

     ;;

          3)answer3=`echo $a \* $b | bc`

          echo "Result: \033[34m""${answer3}""\e[0m"
               ;;

                4)answer4=`echo $a / $b | bc`

          echo "Result: \033[35m""${answer4}""\e[0m"
                        ;;
    
esac
