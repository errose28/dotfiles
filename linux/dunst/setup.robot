*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    dunst

Nix Install
    [Tags]    nix
    Nix Install    dunst

Link
    Deep Link    *

