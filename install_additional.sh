#! /bin/bash
# Install additional desktop programs
sudo -E apt install sddm okular ark vlc firefox nextcloud-desktop nemo apt-transport-https flatpak binwalk ffmpeg adb fastboot default-jdk gimp i3lock-fancy ifupdown intel-gpu-tools kdenlive macchanger mc nfs-common nload pavucontrol python3-pip sound-juicer sl tmux torbrowser-launcher tty-clock traceroute xclip xinput-calibrator wget curl qbittorrent obs-studio krita xclip g++ make libc6-dev cmake libpng-dev libjpeg-dev libxxf86vm-dev libgl1-mesa-dev libsqlite3-dev libogg-dev libvorbis-dev libopenal-dev libcurl4-gnutls-dev libfreetype6-dev zlib1g-dev libgmp-dev libjsoncpp-dev libzstd-dev libluajit-5.1-dev partclone

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

