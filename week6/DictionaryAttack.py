#!/usr/bin/python3
#Created by John Osborne
#Created on the 5 February 2022
#Purpose dictionary attack using Python

import hashlib


def bruteforce(passwordHash, hashtype):

    wordlist = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()_+{}:;',./?-="
    y=''
    length=1
    wordlistHash=''
    passwordHash=passwordHash
      
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824" 
      
    for wordlist(): 
      
word = word.rstrip() 
    
      
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest() 
      
        print(f"Trying password {word}:{wordlistHash}") 
      
        #if the hash is the same as the correct password's hash then we have cracked the password! 
      
        if(wordlistHash == passwordHash): 
      
            print(f"Password has been cracked! It was {word}") 
      
            break 
            elif echo "failed"