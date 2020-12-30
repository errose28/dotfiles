*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Install
    [Tags]    arch
    Pacman Install    bspwm

Link
    Add Ignore    todo.txt
    Deep Link    *

