*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    dunst
    ...    libnotify

Link
    Deep Link    *

