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
    Deep Link    .startup

No DE Link
    [Tags]    no-de    linux    xorg
    Deep Link    .config/sxhkd/sxhkdrc.no-de

