*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Pacman Install
    [Tags]    arch
    Pacman Install
    ...    xorg-xinput
    ...    udisks2
    ...    unclutter

*** Tasks ***
Nix Install
    [Tags]    nix
    Nix Install
    ...    xorg.xinput
    ...    udisks
    ...    unclutter

Link
    Deep Link    *

