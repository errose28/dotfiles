*** Settings ***
Library    DotfilesLibrary
Default Tags    linux

*** Tasks ***
Install
    Emit    Install
    ...    autorandr
    ...    arandr

Link
    Shallow Link    .config/autorandr

