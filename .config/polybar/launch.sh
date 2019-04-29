#!/usr/bin/env bash

PRI_MONITOR=$(polybar -m|tail -1|sed -e 's/:.*$//g')
SEC_MONITOR=$(polybar -m|head -1|sed -e 's/:.*$//g')

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

echo $MONITOR
# Launch bar1 and bar2
MONITOR=$PRI_MONITOR polybar mainbar &
MONITOR=$SEC_MONITOR polybar sidebar &

echo "Bars launched..."
