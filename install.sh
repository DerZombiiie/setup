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

$SUDO pacman -S \
	i3-gaps \
	i3status \
	feh \
	picom \
	bat \
	lolcat \
	cowsay \
	fortune-mod \
	zsh \
	lua53 \
	git \
	imagemagick \
	spectacle

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k >> /dev/null
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | bash

mkdir -p ~/.local/bin/
ln -s ~/.local/bin/i3-wallpaper $PWD/i3-wallpaper
chmod +x ~/.local/bin/i3-wallpaper

mkdir -p ~/.config/i3/
ln -s ~/.config/i3/config $PWD/i3-config

mkdir -p ~/.config/kitty/
ln -s ~/.config/kitty/kitty.conf $PWD/kitty.conf

mkdir -p ~/.config/
ln -s ~/.config/picom.conf $PWD/picom.conf

mkdir -p ~/
ln -s ~/.zshrc $PWD/zshrc

wget https://i.imgur.com/BQx8EDo.jpg -O ~/wallpaper.png.astolpho
wget https://i.imgur.com/MrGY5EL.jpeg -O ~/wallpaper.png.xp
~/.local/bin/i3-wallpaper set xp

