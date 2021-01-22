*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    powerline
    ...    powerline-fonts

Link
    Deep Link    *
