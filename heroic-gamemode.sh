#!/bin/bash
killall waybar
killall -STOP hyprland
heroic
if command -v gamemoded &> /dev/null; then
	gamemode -r &
fi
sudo cpupower frequency-set -g performance
sleep 10,
pidof heroic > /dev/null
while [ $? -eq 0 ]; do
	sleep 2
	pidof heroic >/dev/null
done
killall -CONT hyprland
waybar
killall waybar
waybar
