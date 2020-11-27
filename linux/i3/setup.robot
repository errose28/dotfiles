*** Settings ***
Library    DotfilesLibrary

*** Tasks ***
Install
    Yay Install    i3-gaps

    # Used for the i3 mouse follows focus script.
    Pip Install
    ...    python-xlib
    ...    i3ipc

Link
    Deep Link    *

