*** Settings ***
Library    DotfilesLibrary
Default Tags    linux    macos

*** Tasks ***
Install
    Install    fzf
    Install    kitty

Link
    Deep Link    *

