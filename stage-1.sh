#!/bin/bash


#Installation of the important packages

echo "What is your username?"
read username
clear 
echo "Now running Stage 1"


#install yay
clear
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R $username yay-git
cd yay-git
clear
makepkg -si
clear
cd ~/
yay -Sy

packages=('pavucontrol' 'polybar')

for ((i=0;i<${#packages[@]};i++))
do
	yay -S ${packages[$i]}
done

#Ranger. A file manager
sudo pacman -S ranger mpv bluez bluez-utils neovim xwallpaper ly

