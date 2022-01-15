#!/bin/bash

#clone the config
git clone https://github.com/ChrisTitusTech/titus-awesome ~/.config/awesome

#set rofi theme
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/theme/config.rasi ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/theme/sidebar.rasi"' ~/.config/rofi/config.rasi

# Set graphical target and enable sddm at boot
sudo systemctl enable sddm.service
sudo systemctl set-default graphical.target