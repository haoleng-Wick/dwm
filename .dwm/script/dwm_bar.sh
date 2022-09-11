#!/bin/sh

TEMP=$(echo "  Never Gonna Give You Up!! ")

while true;do
	CPU=$( vmstat -S M | sed -n 3p | awk '{print "[  "100-$15"% " " "}' )
	MEMORY_TOTAL=$( free -m | sed -n 2p | awk '{print $2}' )
	MEMORY_USED=$( vmstat -S M | sed -n 3p | awk '{print $4}' )
	let MEMORY_LEFT=(MEMORY_TOTAL-MEMORY_USED)
	MEMORY=`awk 'BEGIN{printf "%.1f%%",('$MEMORY_LEFT'/'$MEMORY_TOTAL')*100}'`
	BATTERY=$( sh ~/.dwm/script/battery_status.sh )
	SOUND=$( amixer get Master|sed 's/\[/ /g'|sed 's/\]/ /g'|sed -n '5p'|awk '{print " "$4}' )
	DATE=$( date +"  %F %R" )
	xsetroot -name " $TEMP $CPU $MEMORY $BATTERY $SOUND $DATE "
	sleep 1s
done &
