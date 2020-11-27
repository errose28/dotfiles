*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Pacman Install
    [Tags]    arch
    Yay Install
    ...    font-manager
    ...    ttf-google-fonts-git

Link
    Deep Link    *

