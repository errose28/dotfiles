*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    rofi

Link
    Deep Link    *

