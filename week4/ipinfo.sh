#!/bin/bash
#Created by ECU
#Creation 04 Febuary 2022
#Modified 04 Febuary 2022
#Created to highlight the sed command 
      
#get info about networking from the ifconfig command 
      
net_info="$(ifconfig)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 

      
s/inet/IP Address:/ 
      
s/netmask/\n\t\tSubnet Mask:/ 
      
s/broadcast/\n\t\tBroadcast Address:/ 
p  
}') 
      
#format output 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     

