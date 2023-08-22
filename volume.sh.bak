#!/usr/bin/env bash
vol=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
	head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

#echo $vol

pactl set-sink-volume @DEFAULT_SINK@ $1

if test $vol -gt 150
then
	pactl set-sink-volume @DEFAULT_SINK@ 150%
fi

#vol=$(pactl list sinks | grep '^[[:space:]]Volume:' | \
#	head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')

#notify-send " " -h $vol -i /home/samuel/.local/share/icons/Win10Sur-dark/status/symbolic/audio-volume-high-symbolic.svg

#~/.config/dk/volumenotif.sh
