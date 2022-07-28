*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    fzf
    Install    kitty
    # Homebrew m-cli install does not have python set correctly, need to do it
    # manually.
    Install
    ...    m-cli
    ...    brew=python
    Install    blueutil

Link
    Deep Link    *

