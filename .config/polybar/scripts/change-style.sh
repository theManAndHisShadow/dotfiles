#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/colors.ini"

# Change colors
change_color() {

	cat > $PFILE <<- EOF
	[color]

	;; main colors
	background = ${BACKGROUND}
	foreground = ${FOREGROUND}

	sep = ${SEP}
	border = ${BORDER}

	smoke = #FFFFFFFF
	white = #FFFFFF
	black = #000000
	red = #EC7875
	pink = #EC407A
	purple = #BA68C8
	blue = #42A5F5
	cyan = #4DD0E1
	teal = #00B19F
	green = #61C766
	lime = #B9C244
	yellow = #FDD835
	amber = #FBC02D
	orange = #E57C46
	brown = #AC8476
	indigo = #6C77BB
	gray = #9E9E9E
	blue-gray = #6D8895

	EOF
	
	polybar-msg cmd restart
}

if  [[ $1 = "--ligth" ]]; then
	BACKGROUND="#20000000"
	FOREGROUND="#FFF"
	BORDER="#1AFFFFFF"
	SEP="#1AFFFFFF"

	change_color
elif  [[ $1 = "--dark" ]]; then
	BACKGROUND="#20FFFFFF"
	FOREGROUND="#000"
	BORDER="#4D000000"
	SEP="#3D000000"
	
	change_color
elif  [[ $1 = "--gray" ]]; then
	BACKGROUND="#20000000"
	FOREGROUND="#000"
	BORDER="#55000000"
	SEP="#55000000"

    change_color
fi
