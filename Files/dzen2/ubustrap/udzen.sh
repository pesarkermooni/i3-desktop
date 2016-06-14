#!/bin/bash

DZEN_BG="grey17"
DZEN_FG="grey67"
DZEN_WIDTH="1024"
DZEN_FONT="Ubuntu:size=10"
CONKY_ADDRESS="$HOME/.i3/Files/conky/dzen-conky/"

# Automatic change of workspace
killall workspace_info.sh
"${CONKY_ADDRESS}workspace_script/workspace_info.sh" &

# Aptlist script
killall aptlist.sh
"${CONKY_ADDRESS}aptlist_script/aptlist.sh" &

# Run Conky
sleep 1s
conky -c "${CONKY_ADDRESS}conkyu.conf" | dzen2 -e - -h '3' -w "$DZEN_WIDTH" -ta l -bg "$DZEN_BG" -dock &

sleep 1s
conky -c "${CONKY_ADDRESS}conkyb.conf" | dzen2 -e - -h '3' -w "$DZEN_WIDTH" -ta l -bg "$DZEN_BG" -dock &

sleep 1s
conky -c "${CONKY_ADDRESS}conky0.conf" | dzen2 -e - -h '22' -w "$DZEN_WIDTH" -ta l -fg "$DZEN_FG" -bg "$DZEN_BG" -fn "$DZEN_FONT" -dock &
