*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix    macos

*** Tasks ***
MacOS Install
    [Tags]    macos
    Brew Install    macvim

Pacman Install
    [Tags]    arch
    # gvim provides global clipboard support.
    Pacman Install    gvim

Nix Install
    [Tags]    nix
    Nix Install    vim

Link
    Deep Link    *

