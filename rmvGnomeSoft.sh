#!/bin/bash

sudo apt remove --purge -y libreoffice* \
rhythmbox \
transmission-gtk \
software-properties-gtk \
network-manager \
evince \
totem \
gedit \
vinagre \
shotwell \
seahorse \
simple-scan \
evolution \
file-roller \
gnome-music  \
gnome-tweaks \
gnome-calendar \
gnome-calculator \
gnome-weather \
gnome-maps \
gnome-todo \
gnome-games \
gnome-clocks \
gnome-contacts \
gnome-documents \
gnome-disk-utility \
gnome-sound-recorder;

sudo apt autoclean
sudo apt autoremove -y
#sudo apt update
