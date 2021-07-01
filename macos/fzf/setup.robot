*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    alacritty

Link
    Deep Link    *

