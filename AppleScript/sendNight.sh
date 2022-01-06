#!/bin/bash
day=`date +%u`
week=`date +%U`
if (($day == 1))||(($day == 2))||(($day == 3))||(($day == 4))||(($day == 7));then
    osascript sendNight.scpt
    echo "Completed day $day"
elif (($week % 2)); then
    osascript sendNight.scpt
    echo "Completed day $day of weekend $week"
fi
#osascript SendNight.scpt
