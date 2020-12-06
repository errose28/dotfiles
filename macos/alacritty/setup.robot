*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install
    Brew Cask Install    alacritty

Link
    Deep Link    *

