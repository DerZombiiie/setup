
#! /bin/bash
# Install additional desktop programs
sudo -E apt install sddm okular ark vlc firefox nextcloud-desktop nemo apt-transport-https flatpak binwalk ffmpeg adb fastboot default-jdk gimp i3lock-fancy ifupdown intel-gpu-tools kdenlive macchanger mc nfs-common nload pavucontrol python3-pip sound-juicer sl tmux torbrowser-launcher tty-clock traceroute xclip xinput-calibrator wget curl qbittorrent obs-studio krita xclip g++ make libc6-dev cmake libpng-dev libjpeg-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libgmp-dev libjsoncpp-dev libzstd-dev libluajit-5.1-dev partclone
sudo -E apt install oneko neofetch

# design stuff
sudo -E apt install freecad cura

# airshipper
sudo add-apt-repository ppa:frinksy/airshipper
sudo apt-get update
sudo apt install airshipper

mkdir ~/Downloads/
cd ~/Downloads

# typora
wget https://download.typora.io/linux/typora_0.11.18_amd64.deb -O typora.deb
sudo apt install ./typora.deb -y
	# typora themes:
	git clone https://github.com/elitistsnob/typora-cobalt-theme.git ~/.config/Typora/themes/typora-cobalt-theme
	mv -r ~/.config/Typora/themes/typora-cobalt-theme/* ~/.config/Typora/themes/

# discord
wget https://dl.discordapp.net/apps/linux/0.0.17/discord-0.0.17.deb -O discord.deb
sudo apt install ./discord.deb -y

# nvm
cd ~
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.zshrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# node
nvm install node npm

# insect
npm i -g insect

# micro
cd /bin/
curl -sL https://getmic.ro | sudo bash

# skype
cd ~/Downloads
wget https://repo.skype.com/latest/skypeforlinux-64.deb -O skype.deb
sudo apt install ./skype.deb -y
sudo apt update -y

# basic free vpn packages:
# protonvpn:
cd ~/Downloads
wget https://protonvpn.com/download/protonvpn-stable-release_1.0.1-1_all.deb -O proton-keys.deb
sudo apt install ./proton-keys.deb -y
sudo apt update -y
sudo apt install protonvpn -y

# ovpn3
sudo wget https://swupdate.openvpn.net/repos/openvpn-repo-pkg-key.pub
sudo apt-key add openvpn-repo-pkg-key.pub
sudo wget -O /etc/apt/sources.list.d/openvpn3.list https://swupdate.openvpn.net/community/openvpn3/repos/openvpn3-impish.list
sudo apt update -y
sudo apt install openvpn3 -y

# windscribe
wget https://deploy-do.windscribe.com/apps/windscribe_2.3.15_beta_amd64.deb -O windscribe.deb
sudo apt install ./windscribe.deb -y
