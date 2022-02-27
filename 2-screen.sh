#!/bin/sh
xrandr --output eDP-1 --mode 1920x1080 --pos 2560x0 --rotate normal --output HDMI-1 --off --output DP-1 --primary --mode 2560x1080 --pos 0x0 --rotate normal

#i3
i3-msg restart

# second monitor workspace 3
i3-msg workspace 1
i3-msg workspace 3

# main monitor workspace 1
i3-msg workspace 2
i3-msg workspace 1

# second monitor workspace 2
i3-msg workspace 3
i3-msg workspace 2

# goto main screen
i3-msg workspace 1
