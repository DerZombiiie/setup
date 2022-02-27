#! /bin/bash
# Install additional desktop programs
sudo -E apt install sddm okular ark vlc firefox nextcloud-desktop nemo apt-transport-https flatpak binwalk ffmpeg adb fastboot default-jdk gimp i3lock-fancy ifupdown intel-gpu-tools kdenlive macchanger mc nfs-common nload pavucontrol python3-pip sound-juicer sl tmux torbrowser-launcher tty-clock traceroute xclip xinput-calibrator wget curl signal-desktop qbittorrent

# airshipper
sudo add-apt-repository ppa:frinksy/airshipper
sudo apt-get update
sudo apt install airshipper

mkdir ~/Downloads/
cd ~/Downloads
wget https://download.typora.io/linux/typora_0.11.18_amd64.deb -O typora.deb
sudo apt install ./typora.deb
