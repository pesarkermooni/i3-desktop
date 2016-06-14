#!/bin/bash

VAR="$1"
KILL_TMP="/tmp/conky-SIG"

GET_PS (){
	ps -ax | grep "dzen-conky/conky0.conf" > "${KILL_TMP}1"
	cat "${KILL_TMP}1" | sed -e /grep/d | cut -f1 -d? | paste -s > "${KILL_TMP}2";
}

if [[ "$VAR" = "stop" ]];then
	GET_PS
	kill -SIGSTOP $(cat ${KILL_TMP}2)
	rm -f "${KILL_TMP}"*
  elif [[ "$VAR" = "cont" ]];then
	GET_PS
	kill -SIGCONT $(cat ${KILL_TMP}2)
	rm -f "${KILL_TMP}"*
fi

exit
