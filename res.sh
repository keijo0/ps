#!/bin/bash
dbus-launch --sh-syntaxt --exit-with-session; xrandr --output DP-0 --mode 2560x1440 --rate 165.00 ; for id in $(xinput list | grep "pointer" | cut -d '=' -f 2 | cut -f 1); do xinput --set-prop $id 'libinput Accel Profile Enabled' 0, 1; done 
