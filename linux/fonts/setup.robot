*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    font-manager
    ...    google-fonts

Link
    Deep Link    *

