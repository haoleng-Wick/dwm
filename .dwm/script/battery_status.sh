#!/bin/sh
CHARGE=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ "$STATUS"x == "Dischargingx" ];
then
	printf "]  $CHARGE%s%%"  
elif [ -z "$CHARGE" ]
then
	printf "]  $CHARGE%s" 
else
	printf "]  $CHARGE%s%%" 
fi
