*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    dunst
    ...    libnotify

Nix Install
    [Tags]    nix
    Nix Install
    ...    dunst
    ...    libnotify

Link
    Deep Link    *

