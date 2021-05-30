*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    alacritty

Link
    Add Ignore    TODO.md
    Deep Link    *

