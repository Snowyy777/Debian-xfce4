#!/bin/bash

echo "Iniciando..."

pkg update
pkg install pulseaudio -y
pkg install x11-repo
pkg install termux-x11-nightly
pkg install proot-distro
proot-distro install debian
proot-distro login debian
apt update -y
apt install adduser nano
apt install sudo
adduser Vulca
nano /etc/sudoers
sudo apt install xfce4 -y
exit
wget https://raw.githubusercontent.com/LinuxDroidMaster/Termux-Desktops/refs/heads/main/scripts/proot_debian/startxfce4_debian.sh
nano startxfce4_debian.sh
chmod +x startxfce4_debian.sh
./startxfce4_debian.sh

echo "Finalizado!"