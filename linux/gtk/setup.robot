*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    materia-theme
    ...    ant-bloody-theme
    ...    ubuntu-themes

Link
    Deep Link    *

