*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    koekeishiya/formulae/yabai
    Install    cliclick
    Install    jq

Link
    Deep Link    *

