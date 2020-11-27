*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Install
    [Tags]    arch
    Pacman Install    sxhkd

Link
    Deep Link    *

