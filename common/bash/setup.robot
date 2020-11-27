*** Settings ***
Library    OperatingSystem
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
Link
    Deep Link    *

Remove Conflicting Files
    Remove Files
    ...    ~/.bash_profile
    ...    ~/.bash_login
