*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    yabai
    ...    skhd
    ...    cliclick
    ...    coreutils-full
    ...    google-chrome

Link
    Deep Link    *

