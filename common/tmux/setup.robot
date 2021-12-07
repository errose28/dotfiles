*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos    headless

*** Tasks ***
Install Packages
    Install    tmux

Link
    Deep Link    *
