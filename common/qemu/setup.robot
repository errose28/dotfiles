*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    qemu

MacOS Install
    [Tags]    macos
    Brew Install    qemu

Nix Install
    [Tags]    nix
    Nix Install    qemu

Link
    Deep Link    *

