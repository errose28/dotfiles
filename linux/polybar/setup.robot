*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Install
    [Tags]    arch
    # Used by combined battery script.
    Pacman Install    ibam
    Yay Install    polybar

Link
    Deep Link    *

