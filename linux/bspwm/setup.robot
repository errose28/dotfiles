*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    bspwm
    ...    sxhkd
    ...    jq

Link
    Deep Link    *

