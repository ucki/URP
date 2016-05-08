#!/bin/bash


#iceweasel view
#for word in $(cat ./result/webserverIP.txt);do /usr/bin/firefox -new-tab $word & #done 
#Super aggressive nikto
echo Agressive Nikto
for word in $(cat ./results/HTTP-IP.txt);do nikto -h $word >./results/$word/$word-NiktoScan.txt  & done 

