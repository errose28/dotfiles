*** Settings ***
Library    DotfilesLibrary
Default Tags    macos

*** Tasks ***
Install Packages
    Install    yabai
    Install    cliclick
    Install    jq

Link
    Deep Link    *

