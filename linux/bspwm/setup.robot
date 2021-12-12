*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de    xorg

*** Tasks ***
Install Packages
    Install    bspwm
    Install    sxhkd
    Install    jq
    Install    wmutils-core
    ...    pacman=${NONE}
    ...    aur=wmutils-git

Link
    Deep Link    *

