*** Settings ***
Library    DotfilesLibrary

*** Tasks ***
Install
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

Link
    Deep Link    *

