#!/bin/bash

sudo apt update
sudo apt upgrade

#install stuff
sudo apt update
sudo apt install wget python3 python3-pip wine winetricks zsh xterm openssl gdebi steam code torbrowser-launcher wireshark-qt htop vlc cmake openjdk-14-jre openjdk-14-jdk neofetch vim curl docker docker-compose virtualbox spotify-client blender krita gimp openshot audacity timeshift stacer gnome-tweaks snapd cifs-utils

#snap packages
snap install spotify

#gpu nvidia drivers
sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall

#zoom
wget https://zoom.us/client/latest/zoom_amd64.deb
chmod +x zoom_amd64.deb
sudo gdebi zoom_amd64.deb

#teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt-get install ./teamviewer_amd64.deb

#balenaEtcher
wget https://github.com/balena-io/etcher/releases/download/v1.5.109/balena-etcher-electron-1.5.109-linux-x64.zip
unzip balena-etcher-electron-1.5.109-linux-x64.zip
cp balenaEtcher-1.5.109-x64.AppImage ~/Desktop

#google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb


#rust
read -p "Install rust language? [y/N] "
if [[ $REPLY =~ ^[Yy]$ ]]
then
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi


