#!/bin/bash

FOCUS_TARGET=$(xdotool getwindowfocus)

if [ $FOCUS_TARGET != 1722 ]; then
	WM_CLASS=$(xprop -id $(xdotool getactivewindow) WM_CLASS | awk 'NF {print $NF}' | sed 's/"/ /g')
	WM_NAME=$(xprop -id $(xdotool getactivewindow) WM_NAME | cut -d '=' -f 2 | awk -F\" '{ print $2 }')

	if [ $WM_CLASS == 'feh' ]; then
                echo "Feh"
	elif [ "$WM_NAME" == 'ranger' ]; then
                echo "Ranger"
	elif [ "$WM_NAME" == 'Mozilla Firefox' ]; then
                echo "Mozilla Firefox"
	elif [ $WM_CLASS == 'OSS' ]; then
                echo "Code"	
	elif [ "$WM_NAME" == 'Oracle VM VirtualBox Manager' ] || [ "$WM_NAME" == "Whonix-Gateway-XFCE [Running] - Oracle VM VirtualBox" ] || [ "$WM_NAME" == "Whonix-Workstation-XFCE [Running] - Oracle VM VirtualBox" ]; then
		echo "VM VirtualBox"
	elif [ $WM_CLASS == 'kitty' ]; then
	        echo "Kitty"
	else
		echo "Not registred application"
	fi

else 
	echo 'BSPWM'
fi