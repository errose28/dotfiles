*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
        ...    xorg.xinput
        ...    xdotool
        ...    unclutter
        ...    capitaine-cursors

Link
    Deep Link    *

