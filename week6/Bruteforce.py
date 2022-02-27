#!/usr/bin/python3
#Created by John Osborne
#Created on the 19th of February
#Modified on the 26th of February 
#Purpose of the script is to hash a word that a user has inputed then crack the hashed word to see how strong you password is vs a brutefore attack
#Password length k can be adjusted to match what you are entering 


#Hashlib imported 
import hashlib
#random is imported for the while command 
import random

#Creation of the function 
def listToString(s):

            str1 = ""

            for ele in s:

                str1 += ele

            return str1

#(Shivam_k, 2019)
#passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"

a_string = input ("Please enter the word you want hashed the brute forced cracked : ")
passwordHash = hashlib.sha256(a_string.encode('utf-8')).hexdigest()
print(passwordHash)
#Displays the hashed input that was entered 
#(Boi, 2021)
#allows the user to view that their entered password has been hashed 
input("Press anykey to continue")
password=''

#Assigning Alphabet characters including specical characters  

Alphabet = ("abcdefghijklmnopqrstuvwxyz")
#ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890#!@#$%^&*()</\|>?-_.;'[]")
character_list = list(Alphabet)

#while the passwordHash does not equal password keep cycling through hashed combinations 


while (passwordHash != password):

#alter password length to adjust for time cat was used a proof of concept

    password=random.choices(character_list,k=3)
    print (password)
    word=listToString(password)
#Allows script to see hashed word and translate to plain text 
    password = hashlib.sha256(word.encode("utf-8")).hexdigest()

if (passwordHash == password):

    print(f"Brute Force complete your plain text word is {word}:{password}") 

    exit()
#Shows the word unhashed and the hashed word side by side

#Exits once completed 

# Shivam_k. (2019). Python program to convert a list to string. Retrieved 25 February from https://www.geeksforgeeks.org/python-program-to-convert-a-list-to-string/

# Boi, R. (2021). “python hash sha256” Code Answer’s. Retrieved 25 February from https://www.codegrepper.com/code-examples/python/python+hash+sha256
