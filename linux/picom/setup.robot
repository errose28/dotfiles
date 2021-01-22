*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    # Stock picom, not a special fork.
    Emit    Install    picom

Link
    Deep Link    *

