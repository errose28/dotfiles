*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    xorg

*** Tasks ***
Install Packages
    Install    sxhkd
    Install    xdotool
    Install    xorg-xkbcomp
    ...    nix=xorg.xkbcomp

Base Link
    Deep Link    .config/sxhkd/sxhkdrc

No DE Link
    [Tags]    no-de
    Deep Link    .config/sxhkd/sxhkdrc.no-de

