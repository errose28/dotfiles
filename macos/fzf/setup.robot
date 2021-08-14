*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    fzf
    ...    alacritty
    ...    m-cli
    ...    yabai

Link
    Deep Link    *

