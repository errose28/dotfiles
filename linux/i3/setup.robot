*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Install
    [Tags]    arch
    Yay Install    i3-gaps

    # Used for gestures.
    Pacman Install    libinput-gestures

    # Used for the i3 mouse follows focus script.
    Pip Install
    ...    python-xlib
    ...    i3ipc

Link
    Deep Link    *

