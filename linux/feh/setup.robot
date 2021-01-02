# feh executable should be triggered on autorandr change.
*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    feh

Nix Install
    [Tags]    nix
    Nix Install    feh

Link
    # Wallpapers directory is for convenience.
    Shallow Link    *

