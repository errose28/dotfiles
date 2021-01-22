*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    bspwm
    ...    sxhkd
    ...    jq
    # chwb tool from wmutils used to change marked window border color.
    ...    wmutils-core

Link
    Deep Link    *

