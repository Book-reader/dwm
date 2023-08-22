#!/usr/bin/env bash

killall -q conky

# Wait until the processes have been shut down
while pgrep -x conky >/dev/null; do sleep 1; done

# Launch
sleep 1.1
conky -c ~/.config/dwm/conky/clock &
