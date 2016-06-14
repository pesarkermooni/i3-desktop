#!/bin/bash

WORKINFO="i3-msg -t get_workspaces"
TMP_ADDRESS="/tmp/WS"

while [ "1" = "1" ];do
	if [[ $($WORKINFO | grep "Desktop\"\,\"visible\"\:\true") != "" ]] && [[ ! -f "${TMP_ADDRESS}1" ]];then
		rm -f "${TMP_ADDRESS}"*
		touch "${TMP_ADDRESS}1"
	  elif [[ $($WORKINFO | grep "Chat\"\,\"visible\"\:\true") != "" ]] && [[ ! -f "${TMP_ADDRESS}2" ]];then
		rm -f "${TMP_ADDRESS}"*
		touch "${TMP_ADDRESS}2"
	  elif [[ $($WORKINFO | grep "Media\"\,\"visible\"\:\true") != "" ]] && [[ ! -f "${TMP_ADDRESS}3" ]];then
		rm -f "${TMP_ADDRESS}"*
		touch "${TMP_ADDRESS}3"
	  elif [[ $($WORKINFO | grep "Monitor\"\,\"visible\"\:\true") != "" ]] && [[ ! -f "${TMP_ADDRESS}4" ]];then
		rm -f "${TMP_ADDRESS}"*
		touch "${TMP_ADDRESS}4"
	fi
	sleep 1s
done
