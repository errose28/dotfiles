*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    materia-theme
    ...    papirus-icon-theme

Link
    Deep Link    *

