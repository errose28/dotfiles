*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    libreoffice
    ...    hunspellDicts.en_US
    ...    htop
    ...    neofetch
    ...    gnome3.nautilus
    ...    evince
    ...    gthumb
    ...    gnome_mplayer
    ...    firefox
    ...    jre
    ...    jdk

Link
    Deep Link    *

