*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    betterlockscreen
    ...    xorg.xset
    ...    xss-lock

Link
    Deep Link    *

