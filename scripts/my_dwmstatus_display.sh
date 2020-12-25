#!/bin/bash
#run this in dwm-status-refresh.sh & autostart(first)
#while true
#do
	LI=`xbacklight -get`
	BA=`acpi | cut -d, -f2 | cut -d% -f1 | cut -d" " -f2 `
	VO=`amixer get Master | sed -n '$p' |cut -d[ -f2 |cut -d% -f1`
	DA=`date |cut -d: -f1,2`
	VI=`amixer get Master | sed -n '$p' | cut -d] -f3 | cut -d[ -f2`
#	if $(acpi-b | grep --quiet Discharging)
#		CH=`>_<`
#	else
#		CH=`^-^`
	xsetroot -name "(${VI})♫.${VO}|😺.${LI}|^-^.${BA}|${DA} "
#	sleep 3
#done
	
