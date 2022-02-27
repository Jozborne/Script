#!/bin/bash
#Created by John Osborne
#Created on the 8th of February
#Modified on the 27th of February
#Purpose highlight grep command regex script 


grep -r 'sed'
grep -r '^echo'
grep -r '^m'
grep -r '[0-9][0-9][0-9]'
#(Overflow, 2022a)
grep -r 'echo [A-Za-z]*, [A-Za-z0-9_]*, [A-Za-z]*'
#(Overflow, 2022b)
grep -r '[A-Za-z0-9!-+=],[A-Za-z0-9!-+=],[A-Za-z0-9!-+=],[A-Za-z0-9!-+=],[A-Za-z0-9!-+=], [A-Za-z0-9!-+=],[A-Za-z0-9!-+=],[A-Za-z0-9!-+=]'


#Overflow, S. (2022a). How do I write a Regular Expression to match any three digit number value? Retrieved 10 February 2022 from https://stackoverflow.com/questions/4271553/how-do-i-write-a-regular-expression-to-match-any-three-digit-number-value
#Overflow, S. (2022b). REGEXP for sentence with at least 3 words. Retrieved 11 February from https://stackoverflow.com/questions/19483998/regexp-for-sentence-with-at-least-3-words
