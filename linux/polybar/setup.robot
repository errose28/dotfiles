*** Settings ***
Library    DotfilesLibrary

*** Tasks ***
Install
    # Used by combined battery script.
    Pacman Install    ibam
    Yay Install    polybar

Link
    Deep Link    *

