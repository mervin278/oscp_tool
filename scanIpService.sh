#!/usr/bin/bash

if [ $# -ne 1 ]; then

  echo "Must indicate the dest ip. eg:$0 127.0.0.1"

  exit

fi

ip=$1

nmap -p- $ip --open |grep open > ${ip}_openport.txt;

nmap -p$(awk 'BEGIN{ FS="/tcp"; ORS="," }{ print $1 }' ${ip}_openport.txt) -sV -A ${ip} -oN ${ip}_sV.txt;
