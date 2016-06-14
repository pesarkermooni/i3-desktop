#!/bin/bash
# Dependency: imagemagick

TMP_PATH="/tmp/"
ICON="$HOME/.i3/Files/lock/ICON.png"
PIC="slock.png"

cd "$TMP_PATH"
scrot "$PIC"
convert "$PIC" -blur 0x10 "$PIC"
convert "$PIC" "$ICON" -gravity center -composite -matte "$PIC"
i3lock -u -i "$PIC"
