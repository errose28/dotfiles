*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de    xorg

*** Tasks ***
Install Packages
    Install    betterlockscreen
    ...    pacman=${NONE}
    Install    xorg-xset
    ...    nix=xorg.xset
    Install    xss-lock

Link
    Deep Link    *

