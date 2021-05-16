*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    sxhkd
    ...    xorg.xdotool
    ...    xorg.xkbcomp

Link
    Deep Link    *

