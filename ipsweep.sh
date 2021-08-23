#!/bin/bash

if [ "$1" == "" ]   # if syntax introduction 
then
echo "You Forgot an IP address"
echo "syntax ./ipsweep.sh 192.168.1"    


else
for ip in `seq 1 254`;do
ping -c 1 $1.$ip | grep "64 bytes from" | cut -d " " -f 4 | tr -d ":" &   # -c means in the ping is count of packets    
done
fi 

# is used to end the process of the if statement.
# $ is used for using the variable in the string in the shell
# & is used just to speed up the things in the script.