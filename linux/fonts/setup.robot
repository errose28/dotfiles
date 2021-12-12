*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    font-manager
    ...    pacman=${NONE}
    Install    google-fonts
    ...    pacman=${NONE}
    ...    aur=ttf-google-fonts-git

Link
    Deep Link    *

