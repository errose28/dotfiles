*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

# Config should swap caps/escape, and swap cmd/option on my external non-mac keyboard.

*** Tasks ***
Install Packages
    Install    karabiner-elements

Link
    Deep Link    *

