#! /bin/bash

# todo - this script will install yay

echo $(sudo pacman -S --needed git base-devel)
echo $(git clone https://aur.archlinux.org/yay-bin.git)
echo $(cd yay-bin && makepkg-si)
echo $(rm -rf yay-bin)
