*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    # sdhand's picom fork (picom-rounded-corners) does not have window blur.
    Yay Install    picom-ibhagwan-git

Nix Install
    [Tags]    nix
    # Stock picom, not a special fork.
    Nix Install    picom

Link
    Deep Link    *

