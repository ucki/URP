#!/bin/bash
echo Nmap Top 2000 ports, overdoing it
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sT --top-ports 2000 --version-intensity 0 -oA ./results/$word/$word-nmapTop2000tcp  $word & done
