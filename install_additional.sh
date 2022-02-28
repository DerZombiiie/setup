#! /bin/bash
# Install additional desktop programs
sudo -E apt install sddm okular ark vlc firefox nextcloud-desktop nemo apt-transport-https flatpak binwalk ffmpeg adb fastboot default-jdk gimp i3lock-fancy ifupdown intel-gpu-tools kdenlive macchanger mc nfs-common nload pavucontrol python3-pip sound-juicer sl tmux torbrowser-launcher tty-clock traceroute xclip xinput-calibrator wget curl qbittorrent obs-studio krita xclip g++ make libc6-dev cmake libpng-dev libjpeg-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libgmp-dev libjsoncpp-dev libzstd-dev libluajit-5.1-dev partclone

# airshipper
sudo add-apt-repository ppa:frinksy/airshipper
sudo apt-get update
sudo apt install airshipper

mkdir ~/Downloads/
cd ~/Downloads
wget https://download.typora.io/linux/typora_0.11.18_amd64.deb -O typora.deb
sudo apt install ./typora.deb

# typora themes:
git clone https://github.com/elitistsnob/typora-cobalt-theme.git ~/.config/Typora/themes/typora-cobalt-theme
mv -r ~/.config/Typora/themes/typora-cobalt-theme/* ~/.config/Typora/themes/

cd /bin/
curl -sL https://getmic.ro | sudo bash
