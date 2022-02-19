#!/bin/bash
#Created by John Osborne
#Created on the 12th of February
#Modified on the 19th of February 
#Purpose of the script is to present information neatly then further search for a username with bin/bash

#Presents the information in columns with colour. Information that is sent to a .txt document in this case "UserAccount.txt" 
user=UserAccount.txt
awk -F":" '
BEGIN {printf "%-8s %28s %-3s %-1s %20s\n" , "| \033[34mUsername\033[0m" , "| \033[34mUserID\033[0m |" , "\033[34mGroupID\033[0m" , "| \033[34mHome                     \033[0m" , "| \033[34mShell             \033[0m |"
print "|___________________|________|_________|___________________________|____________________|"
}
{printf("| \033[33m%-17s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-25s\033[0m | \033[33m%-18s\033[0m |\n", $1, $3, $4, $6, $7);
}' /etc/passwd > $user
#Search the output with grep to locate the user with "./bin/bash" output is diplayed once the script is run.
grep -r "./bin/bash" $user 

#exit script
exit 0
