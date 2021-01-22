*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    xorg.xinput
    ...    udisks
    ...    unclutter

Link
    Deep Link    *

