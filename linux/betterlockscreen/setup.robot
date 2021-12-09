*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de    xorg

*** Tasks ***
Install Packages
    Install    betterlockscreen
    Install    xorg-xset
    ...    nix=xorg.xset
    Install    xss-lock

Link
    Deep Link    *

