*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Link
    Deep Link    *

Install
    Emit    Install
    ...    ncdu
    ...    atool
    ...    zip
    ...    unzip

