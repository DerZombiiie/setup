#! /bin/bash
function command_exists {
	command -v $1 &> /dev/null
}

if [[ "$USER" != "root" ]]; then
	if command_exists sudo; then
		SUDO="sudo -E"
	elif command_exists doas; then
		SUDO="doas"
		if ! ENV_TEST="test123" doas env | grep "ENV_TEST=test123" > /dev/null; then
			echo "Please make sure doas keeps the environment for emerge (add keepenv to /etc/doas.conf)"
			exit 1
		fi
	fi
fi

$SUDO pacman -S flatpak

# Install additional desktop programs
$SUDO pacman -S sddm okular ark vlc firefox nextcloud-client nemo flatpak binwalk ffmpeg gimp intel-gpu-tools kdenlive macchanger mc nfs-utils nload pavucontrol sound-juicer sl tmux torbrowser-launcher traceroute xclip wget curl qbittorrent obs-studio krita xclip gcc make cmake partclone
$SUDO pacman -S oneko neofetch iperf3
# design stuff
$SUDO pacman -S freecad cura

# other stuff
$SUDO pamac build tty-clock-git xinput_calibrator oneko koneko-git

# i3 stuff
$SUDO pamac build i3lock-fancy-rapid-git
$SUDO pacman -S dmenu

# STYLING
$SUDO pacman -S lxappearance

# java
$SUDO pacman -S jdk8-openjdk jdk11-openjdk jdk11-openjdk

# adb & fastboot
pamac build android-sdk-platform-tools

# airshipper
$SUDO pamac build airshipper

mkdir ~/Downloads/
cd ~/Downloads

# typora
# the old way & garbage, because im a cheapskate and wont pay $15

$SUDO pacman -S dpkg
wget https://download.typora.io/linux/typora_0.11.18_amd64.deb -O typora.deb
$SUDO dpkg -i ./typora.deb

	# typora themes:
	git clone https://github.com/elitistsnob/typora-cobalt-theme.git ~/.config/Typora/themes/typora-cobalt-theme
	mv ~/.config/Typora/themes/typora-cobalt-theme/* ~/.config/Typora/themes/

# discord
$SUDO pacman -S discord

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
$SUDO pacman -S micro

# rpm to arch
$SUDO pacman -S ruby rpm-tools

cd /bin
$SUDO wget https://gist.githubusercontent.com/zinovyev/0ad6bd54ac5a9f7b709607a8151a0334/raw/481f891b73b1144ceb9531b1488591bd851d796d/rpmtoarch -O rpm_to_arch
$SUDO chmod +x rpm_to_arch

# skype
cd ~/Downloads
wget https://go.skype.com/skypeforlinux-64.rpm -O skype.rpm

cd skypeforlinux
makepkg -s
sudo pacman -U *.pkg.tar.zst

# basic free vpn packages:
# protonvpn:
$SUDO pamac build protonvpn-cli

# ovpn3
$SUDO pamac build openvpn3

# windscribe
$SUDO pamac build windscribe-cli
$SUDO pamac build windscribe-v2-bin

# cbonsai
$SUDO pamac build cbonsai-git


