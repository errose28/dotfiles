*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    dex
    ...    kitty
    ...    xdotool

Link
    Deep Link    *

