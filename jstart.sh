#!/bin/bash
i=1
#based on your need change value 96 to be something else. In this example sript running 96*6h=576h=24days
until [ $i -gt 96 ]
do
 echo "Starting " $i
 gnome-terminal --geometry=150x25 -e "./jormungandr --genesis-block-hash $(cat genesis-hash.txt) --config ./itn_rewards_v1-config.yaml --secret ./node_secret.yaml"
 echo "wait 6h"
 #define waiting time to be minute (m), hours (h) or days (d) --> after wait time jormungandr is stopped and then started again. 
 sleep 6h
 echo "stopping"
 ./jcli rest v0 shutdown get --host "http://127.0.0.1:3100/api" 
 sleep 2
 #use pidof and kill if ./jcli shutdown not working
 #PID=$(pidof jormungandr)
 #kill $PID
 i=$(( i+1 ))
done
