#!/bin/bash

# You need to manually:
# 1) Update packages
# 2) Enable AUR support
# 3) Install pulseaudio if not already installed
# 4) Reboot

sudo pacman-mirrors --fasttrack

sudo pacman -S yay --needed
yay -S zip unzip tar unrar wget htop clang cmake git python go openssh pacman-contrib pkgconfig autoconf automake man p7zip bzip2 zstd xz gzip --needed
yay -S ufw firefox vim alacritty exa nautilus neofetch libreoffice ranger --needed
yay -S redshift mpv cava spotify zscroll-git playerctl st btop autotiling-git ulauncher translate-shell python-pip pop-theme --needed
yay -S timeset tlp xprintidle safeeyes copyq lxappearance nitrogen polybar feh picom dunst i3lockmore-git flameshot i3lock starship --needed
yay -S ttf-ms-fonts ttf-jetbrains-mono ttf-caladea ttf-carlito ttf-opensans noto-fonts noto-fonts-cjk noto-fonts-extra noto-fonts-emoji ttf-liberation ttf-dejavu ttf-roboto ttf-inconsolata ttf-font-awesome ttf-ubuntu-font-family ttf-d2coding ttf-muli nerd-fonts-source-code-pro ttf-unifont siji-ttf termsyn-font --needed
yay -S sddm qt5-quickcontrols2 qt5-graphicaleffects qt5-svg qt5-virtualkeyboard

pip install requests --user

# fonts
sudo mkdir -p /usr/local/share/fonts
sudo cp ./fonts/* /usr/local/share/fonts
fc-cache

# ufw
sudo systemctl enable --now ufw
sudo ufw enable

# i3
mkdir -p $HOME/.i3
mv $HOME/.i3/config $HOME/.i3/config.bak
cp -r .i3 ~/.i3

# config
cp -r .config ~/.config

# home
cp .bashrc $HOME/
cp .vimrc $HOME/


## polybar
#mkdir -p $HOME/.config/polybar
#mv $HOME/.config/polybar/launch.sh $HOME/.config/polybar/launch.sh.bak
#mv launch.sh launch.sh.bak
#mv config.ini config.ini.bak
#
## dunst
#mkdir -p $HOME/.config/dunst
#cd $HOME/.config/dunst
#mv dunstrc dunstrc.bak
#
## btop
#mkdir -p $HOME/.config/btop
#cd $HOME/.config/btop
#mv btop.conf btop.conf.bak
#
## alacritty
#mkdir -p $HOME/.config/alacritty
#cd $HOME/.config/alacritty
#mv alacritty.yml alacritty.yml.bak
#
## picom
#mkdir -p $HOME/.config/picom
#cd $HOME/.config/picom
#mv picom.conf picom.conf.bak
#
## ulauncher
#mkdir -p $HOME/.config/ulauncher
#cd $HOME/.config/ulauncher
#mv settings.json settings.json.bak

#mkdir -p $HOME/.local/share/ulauncher


## cava
#mkdir -p $HOME/.config/cava
#cd $HOME/.config/cava
#mv config config.bak
#
## redshift
#mkdir -p $HOME/.config/redshift
#cd $HOME/.config/redshift
#mv redshift.conf redshift.conf.bak

# tlp
sudo tlp start
sudo systemctl enable tlp.service

# SDDM
sudo cp -r ./sddm/sugar-candy /usr/share/sddm/themes/
sudo cp ./sddm/sddm.conf /etc/sddm.conf
sudo systemctl enable sddm.service --force
# add face icon


# If you have SSD:
# sudo systemctl enable fstrim.timer
# sudo systemctl start fstrim.timer


# Post-install:
# configure everything in bmenu

