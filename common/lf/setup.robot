*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    lf
    Install    trash-cli

Link
    Deep Link    *

