#!/bin/sh

battery=$(cat /sys/class/power_supply/BAT0/capacity)
bstatus=$(cat /sys/class/power_supply/BAT0/status)
datetime=$(date +'%Y-%m-%d %a %X')
volume=$(pamixer --get-volume-human)

echo "Battery:" $battery"%" $bstatus "|" "Volume:" $volume "|" $datetime
