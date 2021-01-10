*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    ant-gtk-theme
    ...    ubuntu-themes

Link
    Deep Link    *

