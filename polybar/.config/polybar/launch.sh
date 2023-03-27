#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch Polybar, using default config location ~/.config/polybar/config
# It queries for all monitors and passes them to the config file as env variable
# We instantiate one polybar instance per monitor
if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar example 2>&1 | tee -a /tmp/polybar.log & disown
	done
else
	polybar example 2>&1 | tee -a /tmp/polybar.log & disown
fi
#polybar example 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
