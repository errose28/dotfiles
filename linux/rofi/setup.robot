*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    # wmctrl to detect window manager for logout.
    Pacman Install
    ...    rofi
    ...    wmctrl

Link
    Deep Link    *

