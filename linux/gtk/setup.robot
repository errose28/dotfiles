*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Pacman Install
    [Tags]    arch
    Pacman Install
    ...    ant-gtk-theme
    ...    ubuntu-themes

Link
    Deep Link    *

