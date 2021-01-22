*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    yabai
    ...    skhd
    ...    cliclick

Link
    Deep Link    *

