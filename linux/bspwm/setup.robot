*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
    ...    bspwm
    ...    jq
    # chwb tool from wmutils used to change marked window border color.
    Yay Install    wmutils-git

Nix Install
    [Tags]    nix
    Nix Install
    ...    bspwm
    ...    sxhkd
    ...    jq
    # chwb tool from wmutils used to change marked window border color.
    ...    wmutils-core

Link
    Add Ignore    todo.txt
    Deep Link    *

