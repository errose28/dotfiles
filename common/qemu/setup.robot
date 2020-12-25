*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    qemu

MacOS Install
    [Tags]    macos
    Brew Install    qemu

Link
    Deep Link    *

