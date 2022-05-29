#!/bin/sh

#alt + p 
 rofi -show drun  
#Super_L + enter
   slock
#super + p
	poweroff
#super + r
	reboot
#alt + i
   light -A 5
#alt + d
   light -U 5
#alt + shift + s
	maim -s | tee ~/screenshot/$(date +%s).png | xclip -selection clipboard -t image/png
#alt + b
	polybar
#alt + s  
	maim |tee ~/screenshot/$(date +%s).png | xclip -selection clipboard -t image/png
#alt + shift + b
	 librewolf  
#XF86AudioRaiseVolume
	pactl set-sink-volume 0 +5%
#XF86AudioLowerVolume
	pactl set-sink-volume 0 -5%
#XF86AudioMute
	pactl set-sink-mute 0 toggle
#super + f
  nautilus

