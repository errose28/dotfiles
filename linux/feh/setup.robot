# feh executable should be triggered on autorandr change.
*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install    feh

Link
    # Wallpapers directory is for convenience.
    Shallow Link    *

