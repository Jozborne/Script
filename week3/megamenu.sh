#! /bin/bash
#Created by John Osborne
#Creation 30 January 2022
#Modified 31 January 2022
#Created to allow user to create or copy a folder or Set a password base off their respective inputs. 



#Runs the password check script
/home/kali/john/scripts/portfolio/week2/passwordCheck.sh 

#If $? equals zero then produce the following.

# [ $? == 0 ]; (Ouki, 2018)
if [ $? == 0 ]; then

    echo "1. Create a folder"
    echo "2. Copy a folder"$2
    echo "3. Set a password"$3
    echo "4. Calculator"$4
    echo "5. Create week folders"$5
    echo "6. Check file names"$6
    echo "7. Download a file"$7
    echo "This list will keep repeating with the same numbers as options until exit is entered"
   

#If $? does not equal zero then exit 2 

else exit 2




fi

# Produces "select an option on users terminal"

echo -n "Select an option :"

#Allows input of a number

#Start of loop using with exit to quit 
while true
do

read -p "Input a number or exit to quit: " Number

if [ "$Number" == "exit" ];then
break;

else


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

#4 Will open and run calculator 
                                    4 |/home/kali/john/scripts/portfolio/week3/calculator.sh)

                                    /home/kali/john/scripts/portfolio/week3/calculator.sh

                                   ;;
#5 will allow a megafolder to be created 

                                     5 |/home/kali/john/scripts/portfolio/week3/megafoldermaker.sh)

                                         /home/kali/john/scripts/portfolio/week3/megafoldermaker.sh

                                        ;;
#6 Will check files names
                                             6 |/home/kali/john/scripts/portfolio/week3/filenames.sh)

                                                /home/kali/john/scripts/portfolio/week3/filenames.sh

                                            ;;


#Will run a web downloader
                                                7 |/home/kali/john/scripts/portfolio/week3/webdownloader.sh)

                                                     /home/kali/john/scripts/portfolio/week3/webdownloader.sh

                                            ;;


                                   *)

                                  

                                        ;;
        #Ends the Case statement
                                        esac
#Continues the loop
    echo "1. Create a folder"$1
    echo "2. Copy a folder"$2
    echo "3. Set a password"$3
    echo "4. Calculator"$4
    echo "5. Create week folders"$5
    echo "6. Check file names"$6
    echo "7. Download a file"$7
    echo "This list will keep repeating with the same numbers as options until exit is entered"
#Farewell echo 
$8 echo -n "Thankyou for using this script" 
                                        fi
                                        
                                        done
# Format for Case statement (Linuxize, 2022)



exit 2






#Ouki. (2018). How to conditionally do something if a command succeeded or failed. Retrieved 24 January 2022 from https://unix.stackexchange.com/questions/22726/how-to-conditionally-do-something-if-a-command-succeeded-or-failed
#Linuxize. (2022, 22 November 2019). Bash Case Statement. Retrieved 25 January from https://linuxize.com/post/bash-case-statement/