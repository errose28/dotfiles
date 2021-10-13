*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    lf
    ...    trash-cli
    ...    bat

Link
    Deep Link    *

