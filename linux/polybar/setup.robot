*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de

*** Tasks ***
Install Packages
    Install    polybar
    ...    pacman=${NONE}

Link
    Deep Link    *

