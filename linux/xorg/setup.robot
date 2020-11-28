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

    # .xinitrc and .xprofile are the same so that we can launch a session from startx or lightdm.
    Interactive    cp    --verbose    --force    --interactive    --symbolic-link    %{HOME}/.xinitrc    %{HOME}/.xprofile


