#!/usr/bin/bash
#To Run this script, please run 
#echo "$IP" | md5sum | sha256sum and place in MyIP field (Line 7)
IP=$(curl ipinfo.io/ip)
clear
CurrentIP=$(echo "$IP" | md5sum | sha256sum)
MyIP="10e27447c231e1862f4f76e94ace57cb09db  -"
if [ "$CurrentIP" == "$MyIP" ]; then
    echo "VPN Not Connected"
else
    echo "VPN Connected"
fi
unset IP
unset CurrentIP
unset MyIP
