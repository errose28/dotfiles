*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
Pacman Install
    [Tags]    arch
    Pacman Install    alacritty

MacOS Install
    [Tags]    macos
    Brew Cask Install    alacritty

Link
    Deep Link    *

