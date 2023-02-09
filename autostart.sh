#!/bin/bash

# wallpaper setting
exec feh --bg-fill $HOME/Pictures/old-mac-panther.png &

# init and run polybar
exec $HOME/.config/polybar/init.sh &
exec $HOME/.config/polybar/launch.sh &

# starting picom
exec picom --config=$HOME/.config/picom.conf &

# Fixing cursor pointer outside of window
xsetroot -cursor_name left_ptr
