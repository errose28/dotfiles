*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    # wmctrl to detect window manager for logout.
    Emit    Install
    ...    rofi
    ...    wmctrl

Link
    Deep Link    *

