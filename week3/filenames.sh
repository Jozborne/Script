#!/bin/bash
while read line; do

if ! [[ -z $line ]]; then 
# Issue all the if statements to check if the input is a file or directory 
if [ -d "$line" ]; then
echo "$line is  directory";
else
if [ -f "$line" ]; then
echo "$line is a file";
else
echo "$line is not valid";

fi
<$line | grep .


fi

fi
exit 0
done
 
