*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    xorg.xinput
    ...    udisks

Link
    Deep Link    *

