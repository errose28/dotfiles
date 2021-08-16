*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Link
    Deep Link    *

Install
    # CLI disk usage checker.
    Emit    Install    ncdu

