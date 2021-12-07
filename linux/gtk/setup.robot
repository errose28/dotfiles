*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install Packages
    Install    materia-theme
    Install    papirus-icon-theme

Link
    Deep Link    *

