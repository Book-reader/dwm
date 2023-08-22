#!/bin/sh
CAPS="off"
NUM="off"
dwm_caps () {
	CAPS=$(xset q | grep "Caps" | awk -F' ' '{ print $4 }')
	NUM=$(xset q | grep "Num" | awk -F' ' '{ print $8 }')
	if [ "$CAPS" = "on" ]
	then
		printf "%s" "$SEP1"
		printf "A"
		printf "%s" "$SEP2"
	fi
	if [ "$NUM" = "on" ]
	then
		printf "%s" "$SEP1"
		printf "1"
		printf "%s" "$SEP2"
	fi
}

dwm_caps
