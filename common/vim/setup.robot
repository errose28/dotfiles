*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    macos

*** Tasks ***
MacOS Install
    [Tags]    macos
    Brew Install    macvim

Pacman Install
    [Tags]    arch
    # gvim provides global clipboard support.
    Pacman Install    gvim

Link
    Deep Link    *

