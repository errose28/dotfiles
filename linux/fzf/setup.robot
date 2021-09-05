*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    dex
    ...    alacritty
    ...    xdotool

Link
    Deep Link    *

