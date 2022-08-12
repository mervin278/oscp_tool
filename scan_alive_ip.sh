#!/usr/bin/bash

if [ $# -ne 1 ]; then

  echo "Must indicate the interface. eg:$0 eth0"

  exit

fi

arp-scan -I $1 -l -x |cut -f 1 >./alive_ip.txt
cat ./alive_ip.txt
