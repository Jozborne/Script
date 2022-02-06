#! /bin/bash
#Created by John Osborne
#Creation 30 January 2022
#Modified 06 February 2022
#Created to allow user to create or copy a folder or Set a password base off their respective inputs. 
#Ouki. (2018). How to conditionally do something if a command succeeded or failed. Retrieved 24 January 2022 from https://unix.stackexchange.com/questions/22726/how-to-conditionally-do-something-if-a-command-succeeded-or-failed
#Linuxize. (2022, 22 November 2019). Bash Case Statement. Retrieved 25 January from https://linuxize.com/post/bash-case-statement/


#Runs the password check script
/home/kali/john/scripts/portfolio/week2/passwordCheck.sh 

#If $? equals zero then produce the following.

# [ $? == 0 ]; (Ouki, 2018)
if [ $? == 0 ]; then
#added in colours 
    echo -e "\033[34m1. Create a Folder :\033[0m"$1
    echo -e "\033[34m2. Copy a Folder :\033[0m"$2
    echo -e "\033[34m3. Set a Password :\033[0m"$3
    echo -e "\033[34m4. Calculator :\033[0m"$4
    echo -e "\033[34m5. Create week folders :\033[0m"$5
    echo -e "\033[34m6. Check File names :\033[0m"
    echo -e "\033[34m7. Download a file:\033[0m"$7
   

#If $? does not equal zero then exit 2 

else exit 2




fi

# Produces "select an option on users terminal"

 echo -e "\033[32mSelect an option :\033[0m "

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
#Continues the loop in a different colour
    echo -e " \033[33m1. Create a Folder :\033[0m"$1
    echo -e " \033[33m2. Copy a Folder :\033[0m"$2
    echo -e " \033[33m3. Set a Password :\033[0m"$3
    echo -e " \033[33m4. Calculator :\033[0m"$4
    echo -e " \033[33m5. Create week folders :\033[0m"$5
    echo -e " \033[33m6. Check File names :\033[0m"
    echo -e " \033[33m7. Download a file:\033[0m"$7
    #Warning in red about the exit commands 
    echo -e "\033[31mThis list will keep repeating with the same numbers as options until exit is entered:\033[0m"$8


fi
                                        
done
# Format for Case statement (Linuxize, 2022)



exit 2






