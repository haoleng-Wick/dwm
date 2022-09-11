#!/bin/sh
xrandr --dpi 144
nice xwinwrap -b -s -fs -st -sp -nf -ov -fdt -- mpv -wid WID --really-quiet --framedrop=vo --no-audio --panscan="1.0" /home/haoleng/Public/Movies/Wolp.mp4 --loop 0&
sh ~/.dwm/script/dwm_bar.sh
# feh --bg-fill ~/Pictures/Wallpaper.jpg
sleep 0.5s ; picom&
sleep 0.5s ; redshift&
sleep 1s ; fcitx5& 
