*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    font-manager
    Install    google-fonts

Link
    Deep Link    *

