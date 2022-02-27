#!/bin/bash
#Created by John Osborne    
#Created on the 24 January 2022
#Modified on the 27th February 2022
#Purpose fixing errors 

secret='shhh' #Don't tell anyone!

$1 read -sp "What's the secret code?:  "$1 reply 




#if the user types in the correct secret, tell them they got it right!

if [ $secret = $reply ]; then

                                     $2 echo -n "You got it right!" 

    correct=true

else     

echo -n $3 "You got it wrong :("

    false=false

fi



echo

case $correct in

false)

$4 echo -n "Go Away!" #people who get it wrong need to be told to go away!

    ;;

true)

$5 echo -n "You have unlocked the secret menu!"

    #TODO: add a secret menu for people in the know.

    ;;

esac