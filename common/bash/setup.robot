*** Settings ***
Library    OperatingSystem
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install    bash

Link
    Deep Link    *

Remove Conflicting Files
    Remove Files
    ...    ~/.bash_profile
    ...    ~/.bash_login
