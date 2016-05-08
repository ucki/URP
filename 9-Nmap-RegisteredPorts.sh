#!/bin/bash
echo Nmap Registered Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sTU -p1024-49151 --version-intensity 0 -oA ./results/$word/$word-nmapRegisteredPorts  $word & done
