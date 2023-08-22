#!/bin/sh

# A dwm_bar function to read the battery level and status
# Joe Standring <git@joestandring.com>
# GNU GPLv3

CHARGE=0
STATUS="Discharging"
SYMBOL=""
bat_symbol() {
	if [ $CHARGE -ge 1 ] && [ $CHARGE -le 10 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 11 ] && [ $CHARGE -le 20 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 21 ] && [ $CHARGE -le 30 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 31 ] && [ $CHARGE -le 40 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 41 ] && [ $CHARGE -le 50 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 51 ] && [ $CHARGE -le 60 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 61 ] && [ $CHARGE -le 70 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 71 ] && [ $CHARGE -le 80 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 81 ] && [ $CHARGE -le 90 ]; then
		SYMBOL=""
	elif [ $CHARGE -ge 91 ] && [ $CHARGE -le 100 ]; then
		SYMBOL=""
	fi
}

dwm_battery () {
    # Change BAT1 to whatever your battery is identified as. Typically BAT0 or BAT1
    CHARGE=$(cat /sys/class/power_supply/BAT1/capacity)
    STATUS=$(cat /sys/class/power_supply/BAT1/status)

    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        if [ "$STATUS" = "Charging" ]; then
            printf " %s%% %s" "$CHARGE" "$STATUS"
        else
	    bat_symbol
            printf "%s %s%% %s" "$SYMBOL" "$CHARGE" "$STATUS"
        fi
    else
        printf "BAT %s%% %s" "$CHARGE" "$STATUS"
    fi
    printf "%s\n" "$SEP2"
}


dwm_battery

