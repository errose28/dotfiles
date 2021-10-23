*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install
    ...    lf
    ...    trash-cli

Link
    Deep Link    *

