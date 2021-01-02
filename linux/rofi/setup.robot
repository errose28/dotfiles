*** Settings ***
Library    DotfilesLibrary
Default Tags    arch    nix

*** Tasks ***
Arch Install
    [Tags]    arch
    # wmctrl to detect window manager for logout.
    Pacman Install
    ...    rofi
    ...    wmctrl

Nix Install
    [Tags]    nix
    # wmctrl to detect window manager for logout.
    Nix Install
    ...    rofi
    ...    wmctrl

Link
    Deep Link    *

