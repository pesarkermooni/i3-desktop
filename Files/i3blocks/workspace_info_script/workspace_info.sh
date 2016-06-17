#!/bin/bash

WORKINFO="i3-msg -t get_workspaces"

if [[ $($WORKINFO | grep "Desktop\"\,\"visible\"\:\true") != "" ]];then
		echo -e "<span foreground='#FFFFFF'>  Desktop</span>      Chat        Media        Monitor"
  elif [[ $($WORKINFO | grep "Chat\"\,\"visible\"\:\true") != "" ]];then
		echo -e "  Desktop    <span foreground='#FFFFFF'>  Chat</span>        Media        Monitor"
  elif [[ $($WORKINFO | grep "Media\"\,\"visible\"\:\true") != "" ]];then
		echo -e "  Desktop      Chat      <span foreground='#FFFFFF'>  Media</span>        Monitor"
  elif [[ $($WORKINFO | grep "Monitor\"\,\"visible\"\:\true") != "" ]];then
		echo -e "  Desktop      Chat        Media      <span foreground='#FFFFFF'>  Monitor</span>"
fi
