*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    dunst
    Install    libnotify

Link
    Deep Link    *

