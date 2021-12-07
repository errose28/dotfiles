*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    sxhkd
    Install    xdotool
    ...    nix=xorg.xdotool
    Install    xorg-xkbcomp
    ...    nix=xorg.xkbcomp

Link
    Deep Link    *

