*** Settings ***
Library    DotfilesLibrary
Default Tags    arch

*** Tasks ***
Arch Install
    [Tags]    arch
    Pacman Install
        ...    xorg-server
        ...    xorg-xinit
        ...    xorg-xinput
        ...    xdotool
        ...    unclutter
Link
    Deep Link    *

    # .xinitrc and .xprofile are the same so that we can launch a session from
    # lightdm or startx.
    # Interactive    echo    "Replace ~/.xprofile with a symlink to ~/.xinitrc?"
    # Interactive    cp    --force    --interactive    --symbolic-link    ~/.xinitrc    ~/.xprofile


