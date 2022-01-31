#!/bin/bash


#start on infinite loop







while :;
do

read -p "Input the download URL or exit to quit:" url

if [ "$url" == "exit" ];then break;
fi
read -p "Input the directory where you wish to save: " directory

wget $url








done

exit 0