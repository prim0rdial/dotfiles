#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar using default config location ~/.config/polybar/config
#polybar -rq -c /home/prim0rdial/.config/polybar/config.ini main &
polybar -rq -c /home/prim0rdial/.config/polybar/fancy.ini main &

echo "Polybar launched..."
