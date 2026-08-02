#!/bin/bash
killall  waybar
killall -STOP hyprland
killall -STOP rofi
steam -tenfoot
if command -v gamemoded &> /dev/null; then
	gamemoded -r &
fi
sleep 20,
sudo cpupower frequency-set -g performance

while pgrep -x "steamwebhelper" </dev/null; do
	sleep 2,
done

pidof steam > /dev/null
while [ $? -eq 0 ]; do
	sleep 2,
	pidof steam > /dev/null
done

killall -CONT hyprland
