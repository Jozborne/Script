#! /bin/bash
#Created by John Osborne
#Creation 24 January 2022
#Modified 27 February 2022
#Created to allow user to create or copy a folder or Set a password base off their respective inputs. 


#Runs the password check script
/home/kali/john/scripts/portfolio/week2/passwordCheck.sh 

#If $? equals zero then produce the following.

# [ $? == 0 ]; (Ouki, 2018)
if [ $? == 0 ]; then

    echo "1. Create a folder"$1
    echo "2. Copy a folder"$2
    echo "3. Set a password"$3


#If $? does not equal zero then exit 2 

else
exit 2

#Finishes the IF Statement

fi

# Produces "select an option on users terminal"

echo -n "Select an option :"

#Allows input of a number

read Number

#Commences the Case statement 
case $Number in
#1 will run the input foldermaker.sh
1 |/home/kali/john/scripts/portfolio/week2/foldermaker.sh)

                /home/kali/john/scripts/portfolio/week2/foldermaker.sh

                    ;;


#2 Will run folderCopier.sh
                      2 |/home/kali/john/scripts/portfolio/week2/folderCopier.sh)

                          /home/kali/john/scripts/portfolio/week2/folderCopier.sh

                              ;;

#3 Will run setPassword.sh

                            3 |/home/kali/john/scripts/portfolio/week2/setPassword.sh)

                                /home/kali/john/scripts/portfolio/week2/setPassword.sh

                                   ;;

                                   *)

                                   $4 echo -n "Unknown thank you" 

                                   exit 1

                                        ;;
        #Ends the Case statement
                                        esac
#Farewell echo 
$5 echo -n "Thankyou for using this script" 

# Format help for Case statement (Linuxize, 2022)

exit 2
#Ouki. (2018). How to conditionally do something if a command succeeded or failed. Retrieved 24 January 2022 from https://unix.stackexchange.com/questions/22726/how-to-conditionally-do-something-if-a-command-succeeded-or-failed
#Linuxize. (2022, 22 November 2019). Bash Case Statement. Retrieved 25 January from https://linuxize.com/post/bash-case-statement/
