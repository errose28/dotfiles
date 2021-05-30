*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    alacritty
    ...    wmutils-core

Link
    Add Ignore    TODO.md
    Deep Link    *

