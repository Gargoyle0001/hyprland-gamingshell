#!/bin/bash
sudo pacman -S --needed waybar rofi yad steam protonup-qt heroic-games-launcher
mkdir ~/.config/waybar
mkdir ~/.config/hypr/gamingshell
mkdir ~/.config/rofi
mkdir ~/.local/bin
sudo pacman -S rofi waybar yad
mv ~/hyprland-gamingshell/config.jsonc ~/.config/waybar
mv ~/hyprland-gamingshell/style.css ~/.config/waybar
mv ~/hyprland-gamingshell/gamingshell.conf ~/.config/hypr/gamingshell
mv ~/hyprland-gamingshell/steam-gamemode.sh ~/.local/bin
mv ~/hyprland-gamingshell/heroic-gamemode.sh ~/.local/bin
mv ~/hyprland-gamingshell/config.rasi ~/.config/rofi
chmod 755 ~/.local/bin/heroic-gamemode.sh
chmod 755 ~/.local/bin/steam-gamemode.sh
echo "Add the line source=~/.config/hypr/gamingshell/gamingshell.conf to the config, you can remove the keybinds in this config or ~/.config/hypr/gamingshell/gamingshell.conf"
sleep 10
nano ~/.config/hypr/hyprland.conf
echo "If it doesn't work properly, go to ~/.local/bin and make the scripts read-and-write for everyone and executable"
