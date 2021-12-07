*** Settings ***
Library    OperatingSystem
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    bash

Link
    Deep Link    *

Remove Conflicting Files
    Remove Files
    ...    ~/.bash_profile
    ...    ~/.bash_login
