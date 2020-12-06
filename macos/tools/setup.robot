*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Brew Install
    ...    cliclick
    ...    yabai
    ...    skhd

Link
    Deep Link    *

