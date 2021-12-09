*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    no-de

*** Tasks ***
Install Packages
    Install    dunst
    Install    libnotify

Link
    Deep Link    *

