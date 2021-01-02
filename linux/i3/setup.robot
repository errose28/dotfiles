*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    Yay Install    i3-gaps

    # Used for gestures.
    Pacman Install    libinput-gestures

Nix Install
    [Tags]    nix
    Nix Install    i3-gaps

    # Used for gestures.
    Nix Install    libinput-gestures


Pip Install
    # Used for the i3 mouse follows focus script.
    Pip Install
    ...    xlib
    ...    i3ipc

Link
    Deep Link    *

