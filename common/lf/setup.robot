*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    lf
    ...    pacman=${NONE}
    Install    trash-cli

Link
    Deep Link    *

