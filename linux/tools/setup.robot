*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    xorg-xinput
    ...    nix=xorg.xinput
    Install    udisks2
    ...    nix=udisks

Link
    Deep Link    *

