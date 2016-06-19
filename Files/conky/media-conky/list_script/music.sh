#!/bin/bash

HOME_ADDRESS="$HOME"
DESK_ADDRESS="$HOME/Desktop"
DL_ADDRESS="$HOME/Downloads"
MUSIC_FORMAT="*mp3 *wav *ogg"
TMP_LIST="/tmp/musiclist"
NULL_ADDRESS="/dev/null"
NUMBER="1"

while [ "1" = "1" ]; do
	touch "${TMP_LIST}1"
	cd "$HOME_ADDRESS"
	ls -1t $MUSIC_FORMAT > "$TMP_LIST" 2> "$NULL_ADDRESS"
	cd "$DESK_ADDRESS"
	ls -1t $MUSIC_FORMAT >> "$TMP_LIST" 2> "$NULL_ADDRESS"
	cd "$DL_ADDRESS"
	ls -1t $MUSIC_FORMAT >> "$TMP_LIST" 2> "$NULL_ADDRESS"
	if [[ $(cat "$TMP_LIST") = "" ]];then
			rm -f "${TMP_LIST}"*
		else
			while [ "$NUMBER" != "11" ];do
				echo >> "$TMP_LIST"
				NUMBER=$((NUMBER +1))
			done
			NUMBER="1"
	fi
	rm -f "${TMP_LIST}1"
	sleep 30s
done
