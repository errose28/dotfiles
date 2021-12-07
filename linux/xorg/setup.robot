*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    xorg-xinput
    ...    nix=xorg.xinput
    Install    xdotool
    ...    nix=xorg.xdotool
    Install    unclutter
    Install    capitaine-cursors

Link
    Deep Link    *

