#!/bin/bash

MEDIA_CONKY_ADDRESS="$HOME/.i3/Files/conky/media-conky/"

killall music.sh video.sh
"${MEDIA_CONKY_ADDRESS}list_script/music.sh" &
"${MEDIA_CONKY_ADDRESS}list_script/video.sh" &
conky -x 48 -y 378 -c "${MEDIA_CONKY_ADDRESS}conky0.conf" &
