*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    fzf
    Install    kitty
    Install    m-cli

Link
    Deep Link    *

