# feh executable should be triggered on autorandr change.
*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install    feh

Link
    # Wallpapers directory is for convenience.
    Shallow Link    *

