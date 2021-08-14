*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Emit    Install
    ...    google-chrome

Link
    Deep Link    *

