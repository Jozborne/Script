#!/bin/bash

#Creation 06 February 2022
#Modified by John Osborne
#sed n flag hides the output
#sed p flag prints the output
#sed r extends the parameters
#Displays on the terminal screen after  command is run
#Overflow, S. (2022). sed - How to extract IP address using sed? Retrieved 6 February from https://stackoverflow.com/questions/14928573/sed-how-to-extract-ip-address-using-sed

/home/kali/john/scripts/portfolio/week4/ipinfo.sh | sed -rn '/((1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])\.){3}(1?[0-9][0-9]?|2[0-4][0-9]|25[0-5])/p'
#(Overflow, 2022)
echo "$1"

exit 0