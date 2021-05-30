*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    dex
    ...    alacritty
    ...    wmutils-core

Link
    Add Ignore    TODO.md
    Deep Link    *

