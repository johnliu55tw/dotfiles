#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Find CPU temperature: labeled "Package id 0"
for i in /sys/class/hwmon/hwmon*/temp*_input; do
    label=$(cat "${i%_*}_label" 2>/dev/null)
    
    if [ "$label" == 'Package id 0' ]; then
        CPU_TEMP_PATH=$i
        break
    fi
done

# Set up monitors
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m CPU_TEMP_PATH=$CPU_TEMP_PATH polybar bottom &
  done
else
  polybar --reload bottom & disown
fi
