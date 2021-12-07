*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Install    pavucontrol
    Install    blueberry

Link
    Deep Link    *

