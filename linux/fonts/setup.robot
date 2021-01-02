*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Pacman Install
    [Tags]    arch
    Yay Install
    ...    font-manager
    ...    ttf-google-fonts-git

Nix Install
    [Tags]    nix
    Nix Install
    ...    font-manager
    ...    google-fonts

Link
    Deep Link    *

