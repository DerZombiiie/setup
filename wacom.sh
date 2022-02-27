#! /bin/bash
if [ ! $3 ]
then
	echo "usage: wacom.sh <display> <wacom_stylus> <wacom_pad>"
	exit
fi

echo "\tdisplay: $1\n\twacom_stylus: $2\n\twacom_pad: $3"

sleep 1

echo "[ ] binding $2 to $1"
xinput map-to-output $2 $1



echo "[ ] setting shit for aspect ratio"
xsetwacom set $2 Area 0 0 15200 5640
# how to get these numbers?
# https://wiki.archlinux.org/title/Wacom_tablet#Adjusting_aspect_ratios
# basically its just:
# get the stylus input id:
# 	`xinput`
#	look for something like "Wacom ... Pen stylus" stylus is the id field there e.g:
#		↳ Wacom Intuos PT S 2 Pen stylus          	id=26	[slave  pointer  (2)] // stylus = 26
#
# get the size of the tablet:
# 	`xsetwacom get <stylus> Area` e.g. for
#		0 0 15200 9500
#		its width: 15200; height: 9500
#
# get the screensize:
#	`xrandr | grep conneted` e.g for
#		DP-1 connected primary 2560x1080+0+0 (normal left inverted right x axis y axis) 677mm x 290mm
#		its width: 2560; height: 1080
#
# calculate values
#	new_height = tablet_width * screen_height / screen_width
#
# set size
#	xsetwacom set <stylus> Area 0 0 <tablet_width> <new_height>


echo "[ ] Button 8"
xsetwacom set $3 Button 8 key "ctrl" "z" # right key 1

echo "[ ] Button 9"
xsetwacom set $3 Button 9 key "ctrl" "z" # right key 2
