#!/bin/bash

#install dependencies
yay -S --noconfirm \
awesome \
rofi \
picom \
i3lock-fancy \
xclip \
ttf-roboto \
polkit-gnome \
materia-theme \
lxappearance \
flameshot \
pnmixer \
network-manager-applet \
xfce4-power-manager \
qt5-styleplugins \
papirus-icon-theme \
nautilus \
kitty \
brave-bin \
nitrogen \
arandr \
lightdm \

#clone the config
git clone https://github.com/ChrisTitusTech/titus-awesome ~/.config/awesome

#set rofi theme
mkdir -p ~/.config/rofi
cp $HOME/.config/awesome/theme/config.rasi ~/.config/rofi/config.rasi
sed -i '/@import/c\@import "'$HOME'/.config/awesome/theme/sidebar.rasi"' ~/.config/rofi/config.rasi

#enable lightdm
systemctl enable lightdm