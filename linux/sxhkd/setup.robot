*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    sxhkd

Nix Install
    [Tags]    nix
    Nix Install    sxhkd

Link
    Deep Link    *

