*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    bspwm
    Install    sxhkd
    Install    jq
    Install    wmutils-core

Link
    Deep Link    *

