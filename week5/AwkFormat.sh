#!/bin/bash
#Created by John Osborne
#Created on the 8th of February
#Modified on the 27th of February
#Purpose to nearly display information from Input.txt

echo "Password"

awk 'BEGIN {

    FS=":";

    print "__________________________________________________________________________";

    print "| \033[34mServer Type\033[0m | \033[34mIP\033[0m |";
}

{

    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2, $3, $4, $5, $6);

}

END {

    print("________________________________");

}' Input.txt