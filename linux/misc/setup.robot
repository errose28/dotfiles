*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    libreoffice
    ...    hunspell-en_US
    ...    htop
    ...    neofetch
    ...    nautilus
    ...    evince
    ...    gthumb
    ...    gnome-mplayer
    ...    gparted
    ...    firefox
    ...    android-tools
    ...    pacman-contrib     # for cleaning pacman cache with paccache -rk 1

    Yay Install
    ...    jre
    ...    jdk

Nix Install
    [Tags]    nix
    Nix Install
    ...    libreoffice
    ...    hunspellDicts.en_US
    ...    htop
    ...    neofetch
    ...    nautilus
    ...    evince
    ...    gthumb
    ...    gnome-mplayer
    ...    gparted
    ...    firefox
    ...    android-tools
    ...    jre
    ...    jdk

Link
    Deep Link    *

