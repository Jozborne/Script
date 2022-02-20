#!/bin/bash
#Created by John Osborne
#Created on 12 February 2022
#Modified on 20 February 2022
#Script to gather information of a webpage and parse it and present some Cyber tips and Cyber Facts

#Password Protected
./passwordCheck.sh

#(Ouki, 2018)
#Creates loop to ensure passwordCheck operates appropriately.
if [ $? == 0 ]; then
#Variables are listed

bye=$"Thank you for using this script."
curl=$(which curl)
outfile="Assignment"
#Chosen website can be edited if analysis of other websites is required.
url="https://us.norton.com/internetsecurity-emerging-threats-cyberthreat-trends-cybersecurity-threat-review.html"

#Curl scrapes the html webpage with out displaying any data on the terminal
#(tech, 2019)
function curl_webpage () {
    $curl -o $outfile $url &>/dev/null
}

#Grep is used to search for "TIP" which is the key identifier on the text to present the information
#Sed is used to strip the html portion it is then copied from delete.txt to the outfile
#rm is used to delete the text after its purpose being fullfilled.
#(tech, 2019)
function strip_html () {
    grep "TIP" Assignment | sed 's/<[^>]*>//g' > delete.txt && cp delete.txt $outfile
    rm delete.txt
   
}

#Math is used to identify the number of times security appears pre and post filtering
#Word can be changed depend on website or information that is required. 
#(Hocevar, 2011)
function math()
{
    grep "security" $outfile | wc -l

}
#Allows proper execution of passCheck.sh
else exit 2


fi
#Running the functions that were created above
curl_webpage
echo -e "\033[31mNumber of times security is mentioned prior to stripping the data:\033[0m"
math
strip_html
echo -e "\033[31mNumber of times security is mentioned post stripping the data:\033[0m"
math
echo "Highlights how effective parsing can ensure specific, accurate search results."
#Organising the downloaded information neatly and in colour
#Colours can be changed depending on the users preference


awk -F":" '
BEGIN {printf "\033[31m                                                         Cyber Tips                                           \033[0m"
print "                                                                                  "
}
{printf(" \033[34m%-1s\033[0m \033[33m%-18s\033[0m \n", $1, $2, $3);
print "                                           "
}' $outfile

#(Emrys, 2008)
#This case statement allows a loop to be created to prevent incorrect inputs being accepted.
#If incorrect inputs entered script loops back and requests another correct input be used
while true; do
    read -p "Do you wish to Learn more about Cyber Facts? Enter y to continue or n to exit :" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) echo "${bye}" 
        rm $outfile
        exit;;
        * ) echo "Please answer y or n.";;
    esac
done


#Deletes the $outfile once it has been used and the data analysed
rm $outfile


#Futher information from the website is presented using an alternate method by using sed to remove all the unwanted data and wget instead of curl.
wget -qO- $url | sed -n '1055,1076p' | sed 's/style="margin-left: 40.0px;"//g' | sed 's/<p//g'| sed 's/(<a href="https//g' | sed 's/internetsecurity-online-scams-how-to-recognize-and-avoid-tech-support-scams.html">//g' | sed 's/>//g' | sed 's/href//g' | sed 's/<//g' | sed 's/a="//g' | sed 's/a ="//g' | sed 's/a ="//g' > assessment

awk -F":" '
BEGIN {printf "\033[31m                                         Top 8 Interesting Cyber Facts \033[0m"
print "                       "
}
{printf(" \033[33m%-1s\033[0m \033[35m%-1s\033[0m \033[35m%-7s\033[0m \n", $1, $6, $7);
}' assessment


rm assessment
#Echo thanking user for using the script
echo "Thank you for learning about Cyber Tips and Cyber Facts"

#exit to quit the script once it's completed no requirement for a loop
exit 1
fi


#Emrys, M. (2008). How do I prompt for Yes/No/Cancel input in a Linux shell script? Stack Overflow. Retrieved 20 February from https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script?rq=1
#Hocevar, S. (2011, 9 April 2011). How do I count the number of occurrences of a word in a text file with the command line? Retrieved 19 February from https://unix.stackexchange.com/questions/2244/how-do-i-count-the-number-of-occurrences-of-a-word-in-a-text-file-with-the-comma
#Ouki. (2018). How to conditionally do something if a command succeeded or failed. Retrieved 24 January 2022 from https://unix.stackexchange.com/questions/22726/how-to-conditionally-do-something-if-a-command-succeeded-or-failed
#tech, r. (2019). How to Scrape a Web Page Using Bash Script, Youtube. https://www.youtube.com/watch?v=DZ0WKRmUTm4
