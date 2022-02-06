#! /bin/bash
#Created by ECU
#Creation 24 January 2022
#Created to allow user to create a folder

read -p "Name of folder you wish to create :" folderName
mkdir "$folderName"

exit 0