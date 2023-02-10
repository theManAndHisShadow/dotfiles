#!/usr/bin/env bash

THEME_STATE=$(</tmp/polybar_themeswitcher_state )
#THEME_STATE=false

DIR=$HOME/.config/polybar/scripts/

toggle(){
	if [ $THEME_STATE = "true" ]; then
		echo hook:module/theme-switcher1 >>/tmp/polybar_mqueue.*
	        echo "false" > /tmp/polybar_themeswitcher_state
		
		$DIR/change-style.sh --ligth
	elif [ $THEME_STATE = "false" ]; then
		echo hook:module/theme-switcher2 >>/tmp/polybar_mqueue.*
                echo "true" > /tmp/polybar_themeswitcher_state

		$DIR/change-style.sh --dark
	fi
}

case "$1" in
        --toggle-theme) toggle ;;
esac
