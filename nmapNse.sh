#!/usr/bin/bash

if [ $# -ne 3 ]; then

  echo "Must indicate the dest ip and script list file. eg:$0 127.0.0.1 port script.txt"

  exit

fi

ip=$1
Port=$2
listFile=$3
for scriptFile in $(cat ${listFile});do echo "";echo "${scriptFile} scanning";nmap -p${Port} --script ${scriptFile} ${ip};done

