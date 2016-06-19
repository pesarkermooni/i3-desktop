#!/bin/bash

HOME_ADDRESS="$HOME"
DESK_ADDRESS="$HOME/Desktop"
DL_ADDRESS="$HOME/Downloads"
VIDEO_FORMAT="*mp4 *mkv *avi *mpg *mov *flv"
TMP_LIST="/tmp/videolist"
NULL_ADDRESS="/dev/null"
CONKY_ADDRESS="$HOME/.i3/Files/conky/media-conky/kill_script"
NUMBER="1"

while [ "1" = "1" ]; do
	$CONKY_ADDRESS/kill_stop-cont_script.sh stop
	cd "$HOME_ADDRESS"
	ls -1t $VIDEO_FORMAT > "$TMP_LIST" 2> "$NULL_ADDRESS"
	cd "$DESK_ADDRESS"
	ls -1t $VIDEO_FORMAT >> "$TMP_LIST" 2> "$NULL_ADDRESS"
	cd "$DL_ADDRESS"
	ls -1t $VIDEO_FORMAT >> "$TMP_LIST" 2> "$NULL_ADDRESS"
	if [[ $(cat "$TMP_LIST") = "" ]];then
			rm -f "$TMP_LIST"
		else
			while [ "$NUMBER" != "11" ];do
				echo >> "$TMP_LIST"
				NUMBER=$((NUMBER +1))
			done
			NUMBER="1"
	fi
	$CONKY_ADDRESS/kill_stop-cont_script.sh cont
	sleep 30s
done
