#!/bin/bash
echo Nmap Top 200o0 ports, overdoing it REALLY HARD
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sTU --top-ports 20000 --version-intensity 0 -oA ./results/$word/$word-nmapTop20k  $word & done
