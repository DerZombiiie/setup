#! /bin/bash
function command_exists {
	command -v $1 &> /dev/null
}

function need_command {
	if ! command_exists $1
	then
		echo "required command $1 not found!"
		exit 1
	fi	
}

need_command pacman

# ensure sudo
if command_exists sudo; then
	SUDO="sudo"
elif command_exists doas; then
	SUDO="doas"
fi

if [[ -n "$SUDO" ]]; then
	echo "Neither sudo nor doas are supported on your system!"
	exit 1
fi

$SUDO pacman -S flatpak

# Install additional desktop programs
$SUDO pacman -S sddm okular ark vlc firefox nextcloud-client nemo flatpak binwalk ffmpeg gimp intel-gpu-tools kdenlive macchanger mc nfs-utils nload pavucontrol sound-juicer sl tmux torbrowser-launcher traceroute xclip wget curl qbittorrent obs-studio krita xclip gcc make cmake partclone
$SUDO pacman -S oneko neofetch iperf3
# design stuff
$SUDO pacman -S freecad cura

# aur-helper - PARU
mkdir -p ~/src

$SUDO pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git ~/src/paru
cd ~/src/paru
makepkg -si
cd ~

# other stuff
paru -S tty-clock-git xinput_calibrator oneko koneko-git

# i3 stuff
paru -S i3lock-fancy-rapid-git
$SUDO pacman -S dmenu

# ich hab ich hab style und das geld... https://www.youtube.com/watch?v=XzAA5Qq9jzc
$SUDO pacman -S lxappearance

# java
$SUDO pacman -S jdk8-openjdk jdk11-openjdk jdk11-openjdk

# adb & fastboot
paru -S android-sdk-platform-tools

# airshipper
paru -S build airshipper

mkdir ~/Downloads/
cd ~/Downloads

# typora
paru -S typora

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

paru -S skypeforlinux-stable-bin

# basic free vpn packages:
paru -S protonvpn-cli \
	openvpn3 \
	windscribe-cli windscribe-v2-bin \
	mullvad-cli mullvad

# cbonsai
paru -S cbonsai-git


