#!/usr/bin/env bash
# ~/.config/bspwm/launch.sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar -q -c ~/.config/polybar/config top &
polybar -q -c ~/.config/polybar/config bottom &

notify-send "welcome to bspwm"
