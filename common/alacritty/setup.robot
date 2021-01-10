*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
Pacman Install
    [Tags]    arch
    Pacman Install    alacritty

MacOS Install
    [Tags]    macos
    Brew Cask Install    alacritty

Nix Install
    [Tags]    nix
    Nix Install    alacritty

Link
    Deep Link    *

