*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Pacman Install
    [Tags]    arch
    Pacman Install
    ...    xorg-xinput
    ...    udisks2
    ...    unclutter

Link
    Deep Link    *

