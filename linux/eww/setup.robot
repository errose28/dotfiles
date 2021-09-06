*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    # Eww is not currently in any package repos and is built from source.
    Emit    Install
    ...    eww

Link
    Deep Link    *

