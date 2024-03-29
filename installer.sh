#!/usr/bin/env sh

# Provides package manager commands for the robot DotfilesLibrary Install
# keyword.

brew() {
    # homebrew will automatically skip packages that are already installed.
    pkg="$1"
    command brew install "$pkg"
}

nix() {
    pkg="$1"
    if ! nix-env --query --installed "$pkg" > /dev/null 2>&1; then
        nix-env -iA nixpkgs."$pkg"
    fi
}

pacman() {
    pkg="$1"
    if command -v sudo &> /dev/null; then
        sudo pacman -S --needed --noconfirm "$pkg"
    else
        pacman -S --needed --noconfirm "$pkg"
    fi
}

aur() {
    pkg="$1"
    yay --aur -S --needed --noconfirm "$pkg"
}

apt() {
    # apt will automatically skip packages that are already installed.
    pkg="$1"
    if command -v sudo &> /dev/null; then
        sudo apt install -y "$pkg"
    else
        apt install -y "$pkg"
    fi
}

"$@"
