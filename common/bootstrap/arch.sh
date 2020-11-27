#!/usr/bin/env sh

# Install git and pyenv without unnecessarily prompting for sudo.
if ! command -v git > /dev/null; then
    echo 'Installing git...'
    sudo pacman -S --needed --noconfirm git
fi

if ! command -v pyenv > /dev/null; then
    echo 'Installing pyenv...'
    sudo pacman -S --needed --noconfirm pyenv
fi

# Install yay if needed.
if ! command -v yay > /dev/null; then
    echo 'Installing yay...'
	git clone https://aur.archlinux.org/yay.git
	cd yay
	makepkg -si
	cd ..
	rm -rf yay
fi

./common.sh
