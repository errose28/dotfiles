*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Emit    Install    vim

Link
    Deep Link    *

