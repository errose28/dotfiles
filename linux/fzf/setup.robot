*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    fzf
    Install    dex
    Install    kitty
    Install    xdotool

Link
    Deep Link    *

