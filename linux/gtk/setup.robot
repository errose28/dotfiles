*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    ant-gtk-theme
    ...    materia-gtk-theme
    ...    ubuntu-themes

Nix Install
    [Tags]    nix
    Nix Install
    ...    materia-theme
    ...    ant-bloody-theme
    ...    ubuntu-themes

Link
    Deep Link    *

