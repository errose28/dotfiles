*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Link
    Deep Link    *

Install Packages
    Install    direnv

