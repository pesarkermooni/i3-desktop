#!/bin/bash

LIST="/tmp/aptlist"
CODE=$(ls /var/lib/apt/lists | grep InRelease | head -1 | cut -f4 -d_)
APT="apt list --upgradable" #show upgrade list

while [ "1" = "1" ];do
	
	if [[ ! -f "$LIST" ]] && [[ $($APT | grep $CODE) != "" ]];then
		$APT | grep "$CODE" > "$LIST"
	  elif [[ -f "$LIST" ]] && [[ $($APT | grep $CODE | wc -l) != $(cat $LIST | wc -l) ]];then
		$APT | grep "$CODE" > "$LIST"
	fi

	sleep 1m
done
