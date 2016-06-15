#!/bin/bash

if [[ $(xset -q | grep -i scroll | cut -f7 -d:) != " off" ]];then
		echo "IR"
	else
		echo "US"
fi
